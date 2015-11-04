// Server Side

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "client/cl_HUD.lua" )
AddCSLuaFile( "client/cl_buyMenu.lua" )
AddCSLuaFile( "client/cl_scoreboard.lua" )

include( "shared.lua" )
include( "server/sv_babyGod.lua" )
include( "server/sv_itemDropOnDeath.lua" )
include( "server/sv_playerHurtSound.lua" )
include( "server/sv_ammoOnDamage.lua" )
include( "server/sv_buyMenu.lua" )
include( "server/sv_player.lua" )
include( "server/sv_props.lua" )

function GM:PlayerInitialSpawn(ply)
	timer.Simple(2, function() if ply:IsValid() then ply:SendLua([[chat.AddText( Color(68,69,70), "[Server] ", Color( 255, 255, 255), "]]..ply:Nick()..[[", ", Welcome to the server. We're currently in development please excuse the mess.")]]) end end)
end

function GM:PlayerSpawn(ply)
	ply:SetupHands()
	ply:RemoveAllAmmo()
	ply:Give("weapon_pistol")
	ply:Give("weapon_crowbar")
	ply:Give("weapon_physgun")
	ply:GiveAmmo(18,"Pistol", true)
	ply:SetModel("models/player/group01/male_01.mdl")
	ply:SetModelScale( 1, 1 )
	ply:AllowFlashlight( true )
end

function GM:PlayerDeathSound(ply)
	return true
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
	victim:SetModelScale( 1, 0 )
end