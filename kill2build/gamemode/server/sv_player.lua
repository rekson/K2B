if (SERVER) then
	function onPlayerDeath(ply, inf, attacker)
		if attacker:IsPlayer() and attacker != nil and attacker != NULL and attacker != ply then
			-- calc victims worth and credit attacker for kill
			attKC = attacker:GetNWInt("KillCredit")
			vicKC = ply:GetNWInt("KillCredit")
			worth = 4 + math.floor(vicKC / 4)
			if worth > 12 then worth = 12 end
			
			attKC = attKC + worth
			attacker:SetNWInt("KillCredit", attKC)
			attacker:PrintMessage(HUD_PRINTTALK, ply:Nick() .. " was worth " .. worth .. " kill credits! Total kill credits: " .. attacker:GetNWInt("KilLCredit"))
		end
	end
	hook.Add("PlayerDeath", "OnPlayerDeath", onPlayerDeath)
	
	function disablePhysDamage(entity, dmgInfo)
		if dmgInfo:GetDamageType() == DMG_CRUSH or dmgInfo:GetDamageType() == DMG_PHYSGUN then return true end
	end
	hook.Add("EntityTakeDamage", "DisablePhysDamage", disablePhysDamage)
	
	function enableFreezeOwnership(ply, ent, physObj)
		if ply != ent:GetNetworkedEntity("Owner") then return false end
	end
	hook.Add("CanPlayerUnfreeze", "EnableFreezeOwnership", enableFreezeOwnership)
end
