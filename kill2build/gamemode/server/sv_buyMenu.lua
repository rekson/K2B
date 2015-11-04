include("shared/sv_shared.lua")

if SERVER then
	print("Loading network strings")
	util.AddNetworkString("SpawnProp")
	util.AddNetworkString("SpawnEntity")
	print("Finished loading network strings")
	
	net.Receive("SpawnProp", function( len, ply )
		prop = net.ReadString()
		
		if allowedProps[prop] then
			price = tonumber(allowedProps[prop]["price"])
			health = tonumber(allowedProps[prop]["maxHealth"])

			if ply:GetNWInt("KillCredit") >= price then
				local td = {}
				td.start = ply:GetShootPos() + ply:GetAimVector() * 100
				td.endpos = ply:GetShootPos() + ply:GetAimVector() * 400
				td.fliter = MASK_NPCWORLDSTATIC
				local tr = util.TraceLine(td)
				
				if tr.Hit then
					local entity=ents.Create("prop_physics")
					entity:SetModel(prop)
					entity:SetNetworkedEntity("Owner", ply)
					entity:SetNWInt("PropHealth", health)
					entity:SetRenderMode(RENDERMODE_TRANSALPHA)
					entity:SetCustomCollisionCheck(true)
					entity:SetPos(tr.HitPos + Vector(0, 0, 50))
					entity:Spawn()
					
					undo.Create("prop")
					undo.AddEntity(entity)
					undo.SetPlayer(ply)
					undo.Finish()
					
					plyKC = ply:GetNWInt("KillCredit")
					plyKC = plyKC - price
					ply:SetNWInt("KillCredit", plyKC)
				end
			else
				ply:PrintMessage(HUD_PRINTTALK, "Not enough kill credits!")
			end
		else
			ply:PrintMessage(HUD_PRINTTALK, "Prop not allowed!")
		end
	end )
	
	net.Receive("SpawnEntity", function( len, ply )
		entityName = net.ReadString()
		
		if allowedEntities[entityName] then
			entity = allowedEntities[entityName]
			price = tonumber(entity["price"])
			amount = tonumber(entity["amt"])
			if ply:GetNWInt("KillCredit") >= price then
				if entity["ent"] and not entity["cmd"] then -- If the item has an actual entity to spawn
					local ent=ents.Create(entity["ent"])
					ent:SetModel(entity["model"])
					ent:SetNetworkedEntity("Owner", ply)
					ent:SetPos(ply:GetPos() + Vector(0, 0, 10))
					ent:Spawn()
				else
					ply:GiveAmmo(amount, entity["cmd"], false)
				end
				
				plyKC = ply:GetNWInt("KillCredit")
				plyKC = plyKC - price
				ply:SetNWInt("KillCredit", plyKC)
			else
				ply:PrintMessage(HUD_PRINTTALK, "Not enough kill credits!")
			end
		else
			ply:PrintMessage(HUD_PRINTTALK, "Entity not allowed!")
		end
	end)
	
	function setPlyKC(nickname, amount)
		for k, v in pairs(player.GetAll()) do
			if v:Nick() == nickname then
				v:SetNWInt("KillCredit", amount)
			end
		end
	end
end