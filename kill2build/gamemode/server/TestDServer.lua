if (SERVER) then
	allowedEntities = {}
	allowedEntities["models/props_borealis/bluebarrel001.mdl"] = { ent = "models/props_borealis/bluebarrel001.mdl", price = 1 }
	allowedEntities["models/props_debris/metal_panel02a.mdl"] = { ent = "models/props_debris/metal_panel02a.mdl", price = 1 }
	allowedEntities["models/props_c17/shelfunit01a.mdl"] = { ent = "models/props_c17/shelfunit01a.mdl", price = 1 }
	allowedEntities["models/healthvial.mdl"] = { ent = "item_healthvial", price = 2 }
	allowedEntities["models/Items/battery.mdl"] = { ent = "item_battery", price = 2 }
	allowedEntities["models/Items/HealthKit.mdl"] = { ent = "item_healthkit", price = 5 }
	allowedEntities["models/Items/BoxSRounds.mdl"] = { ent = "item_ammo_pistol", price = 1 }
	allowedEntities["models/Items/357ammobox.mdl"] = { ent = "item_ammo_357", price = 2 }
	allowedEntities["models/Items/CrossbowRounds.mdl"] = { ent = "item_ammo_crossbow", price = 3 }
	--allowedEntities["models/Items/combine_rifle_ammo01.mdl"] = { ent = "item_ammo_ar2_altfire", price = 2015 }
	allowedEntities["models/Items/combine_rifle_cartridge01.mdl"] = { ent = "item_ammo_ar2", price = 4 }
	--allowedEntities["models/Items/AR2_Grenade.mdl"] = { ent = "item_ammo_smg1_grenade", price = 2015 }
	allowedEntities["models/Items/BoxMRounds.mdl"] = { ent = "item_ammo_smg1", price = 3 }
	allowedEntities["models/weapons/v_357.mdl"] = { ent = "weapon_357", price = 2 }
	allowedEntities["models/weapons/v_IRifle.mdl"] = { ent = "weapon_ar2", price = 4 }
	allowedEntities["models/weapons/v_crossbow.mdl"] = { ent = "weapon_crossbow", price = 8 }
	allowedEntities["models/weapons/v_shotgun.mdl"] = { ent = "weapon_shotgun", price = 4 }
	allowedEntities["models/weapons/v_slam.mdl"] = { ent = "weapon_slam", price = 12 }
	allowedEntities["models/weapons/v_smg1.mdl"] = { ent = "weapon_smg1", price = 4 }
	--allowedEntities["models/weapons/v_stunbaton.mdl"] = { ent = "weapon_stunstick", price = 2015 }
	allowedEntities["models/weapons/v_grenade.mdl"] = { ent = "weapon_frag", price = 12 }
	allowedEntities["models/weapons/w_rocket_launcher.mdl"] = { ent = "weapon_rpg", price = 24 }
	allowedEntities["models/Items/BoxBuckshot.mdl"] = { ent = "item_box_buckshot", price = 2 }
	
	util.AddNetworkString("SpawnProp")
	
	net.Receive("SpawnProp", function( len, ply )
		-- check if valid prop and if they have the kill count to buy
		prop = net.ReadString()
		
		if allowedEntities[prop] then
			if ply:GetNWInt("KillCredit") >= allowedEntities[prop] then -- todo, make proper cost variable
				local td = {}
				td.start = ply:GetShootPos() + ply:GetAimVector() * 100
				td.endpos = ply:GetShootPos() + ply:GetAimVector() * 400
				td.fliter = MASK_NPCWORLDSTATIC
				local tr = util.TraceLine(td)
				
				if tr.Hit then
					local ent=ents.Create("prop_physics")
					ent:SetModel(prop)
					ent:SetNetworkedEntity("Owner", ply)
					ent:SetPos(tr.HitPos + Vector(0, 0, 50))
					ent:Spawn()
					
					undo.Create("prop")
					undo.AddEntity(ent)
					undo.SetPlayer(ply)
					undo.Finish()
					
					plyKC = ply:GetNWInt("KillCredit")
					plyKC = plyKC - allowedEntities[prop]
					ply:SetNWInt("KillCredit", plyKC)
				end
			else
				ply:SendLua("GAMEMODE:AddNotify(\"Not enought kill credits!\", NOTIFY_GENERIC, 2)")
			end
		else
			ply:SendLua("GAMEMODE:AddNotify(\"Prop not allowed!\", NOTIFY_GENERIC, 2)") -- maybe log the player's name somewhere as potential cheater, because they tried spawning a prop not in the store
		end
	end )
	
	function setPlyKC(nickname, amount)
		for k, v in pairs(player.GetAll()) do
			if v:Nick() == nickname then
				v:SetNWInt("KillCredit", amount)
			end
		end
	end
end