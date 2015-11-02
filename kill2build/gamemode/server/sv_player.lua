if (SERVER) then
	function onPlayerDeath(ply, inf, attacker)
		if attacker:IsPlayer() and attacker != nil and attacker != NULL and attacker != ply then
			-- calc victims worth and credit attacker for kill
			attKC = attacker:GetNWInt("KillCredit")
			vicKC = ply:GetNWInt("KillCredit")
			worth = 4 + math.floor(vicKC / 4)
			
			attKC = attKC + worth
			attacker:SetNWInt("KillCredit", attKC)
			attacker:PrintMessage(HUD_PRINTTALK, ply:Nick() .. " was worth " .. worth .. " kill credits! Total kill credits: " .. attacker:GetNWInt("KilLCredit"))
		end
		
		ply:SetNWInt("KillCredit", 0)
		
		for k, v in pairs(ents.GetAll()) do
			if v:GetNetworkedEntity("Owner") == ply then
				v:Remove()
			end
		end
	end
	hook.Add("PlayerDeath", "OnPlayerDeath", onPlayerDeath)
end