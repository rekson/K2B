// Server Side

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "client/cl_HUD.lua" )
AddCSLuaFile( "client/TestDPanel.lua" )

include( "shared.lua" )
include( "server/TestDServer.lua" )
include( "server/Players.lua" )

function GM:PlayerInitialSpawn(ply)
	timer.Simple(3, function() ply:SendLua([[chat.AddText( Color(68,69,70), "[Server] ", Color( 255, 255, 255), "]]..ply:Nick()..[[", ", Welcome to the server. We're currently in development please excuse the mess.")]]) end)
end

function GM:PlayerSpawn(ply)
	ply:SetupHands()
	ply:Give("weapon_pistol")
	ply:Give("weapon_crowbar")
	ply:Give("weapon_physcannon")
	ply:GiveAmmo(18,"Pistol", true)
	ply:SetModel("models/player/group01/male_01.mdl")
	ply:SetModelScale( 1, 1 )
	ply:SetPlayerColor( Vector( 0, 1, 0 ) )
	
	// God mode
	ply:GodEnable()
	timer.Simple(5, function() ply:GodDisable() ply:SetPlayerColor( Vector( 1, 0, 0 ) ) end)
end

hook.Add("EntityTakeDamage", "GiveAttackerAmmo", function(target,info)
	local attacker = info:GetAttacker()
	if(info:GetAttacker() != target) then
		if(info:GetAttacker():IsPlayer() and target:IsPlayer()) then
			if(info:IsBulletDamage()) then
				random = math.random(100)
				if(random >= 80) then
					attacker:GiveAmmo(2,info:GetAmmoType(),false)
				else
					attacker:GiveAmmo(1,info:GetAmmoType(),false)
				end
			else
				attacker:GiveAmmo(6,"Pistol",false)
			end
		end
	end
end)

function GM:PlayerDeathSound(ply)
	return true
end

function hurtSound(ply)
	local sounds = {
		"vo/npc/male01/pain01.wav",
		"vo/npc/male01/pain03.wav",
		"vo/npc/male01/pain05.wav",
		"vo/npc/male01/pain07.wav",
		"vo/npc/male01/pain08.wav"
	}
	local random = math.ceil(math.random(1, 4))
	ply:EmitSound(sounds[random])
end

hook.Add("EntityTakeDamage","FistDamage",function(target, info)
	if(info:GetAttacker() != target)then
		if(info:GetAttacker():IsPlayer() and target:IsPlayer()) then
			weaponName = info:GetAttacker():GetActiveWeapon():GetClass()
			if(weaponName == "weapon_fists") then
				info:ScaleDamage(100)
				info:SetDamageForce(info:GetDamageForce() * 20000)
				local punched = {
					"ambient/voices/f_scream1.wav",
					"ambient/voices/m_scream1.wav",
					"ambient/alarms/razortrain_horn1.wav",
					"ambient/alarms/train_horn2.wav",
					"physics/glass/glass_bottle_impact_hard1.wav" 
				}
				local random = math.ceil(math.random(1, 4))
				info:GetAttacker():EmitSound(punched[random])
				local attacker = info:GetAttacker()
				attacker:SetModelScale( attacker:GetModelScale() * 2, 1 )
				target:EmitSound(punched[random])
			end
		end
	end
end)

	function GM:PlayerDeath( victim, inflictor, attacker )
	if(attacker != victim) then
		for _, v in pairs( player.GetAll() ) do
			v:SendLua([[chat.AddText( Color(68,69,70), "]]..attacker:Nick()..[[", Color(255,255,255), " killed ", Color(68,69,70), "]]..victim:Nick()..[[", Color(255,255,255), " with a ", "]]..string.sub(attacker:GetActiveWeapon():GetClass(),8,-1)..[[", "!") ]])
		end
	end
	
	victim:SetModelScale( 1, 1 )
	
	local random = math.random(1,100)
	if(random >= 75) then
		local medkit = ents.Create( "item_healthkit" )
		if ( !IsValid( medkit ) ) then return end
		medkit:SetModel( "models/weapons/w_medkit.mdl" )
		medkit:SetPos( victim:GetPos() )
		medkit:Spawn()
		return
	elseif( random >= 50) then
		local suitbattery = ents.Create( "item_battery" )
		if ( !IsValid( suitbattery ) ) then return end
		suitbattery:SetModel( "models/items/battery.mdl" )
		suitbattery:SetPos( victim:GetPos() )
		suitbattery:Spawn()
		return
	end
end