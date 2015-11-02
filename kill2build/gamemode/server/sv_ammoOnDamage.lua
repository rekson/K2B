// Give ammo on damage

hook.Add("EntityTakeDamage","giveAttackerAmmo", function(target, info)
	local attacker = info:GetAttacker()
	if(attacker != target) then
		if(attacker:IsPlayer() and target:IsPlayer()) then
			if(!target:HasGodMode()) then
				if(info:IsBulletDamage()) then
					local randomNum = math.random(100)
					if(randomNum >= 80) then
						attacker:GiveAmmo(2,info:GetAmmoType(), false)
					else
						attacker:GiveAmmo(1,info:GetAmmoType(), false)
					end
				else
					attacker:GiveAmmo(6,"Pistol",false)
				end
			end
		end
	end
end)