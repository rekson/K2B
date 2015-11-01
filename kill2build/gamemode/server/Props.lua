include("sv_shared.lua")

function entityDamage(entity, dmgInfo)
	health = entity:GetNWInt("PropHealth")
	maxHealth = tonumber(allowedProps[entity:GetModel()]["maxHealth"])
	attacker = dmgInfo:GetAttacker()
	blackness = 255 * (health/maxHealth)
	
	if attacker:IsPlayer() and attacker == entity:GetNetworkedEntity("Owner") then
		weapon = attacker:GetActiveWeapon()
		if weapon:GetClass() == "Crowbar" or weapon:GetClass() == "weapon_crowbar" then
			health = health + 10
			if health > maxHealth then health = maxHealth end
			entity:SetNWInt("PropHealth", health)
		end
	else
		health = health - dmgInfo:GetDamage()
		print(dmgInfo:GetDamage())
		entity:SetNWInt("PropHealth", health)
	end
	
	if health <= 0 then 
		effectData = EffectData()
		effectData:SetOrigin(entity:GetPos())
		util.Effect(allowedProps[entity:GetModel()]["effect"], effectData)
		entity:Remove()
	end
	
	entity:SetColor(Color(blackness, blackness, blackness, 255))
end
hook.Add("EntityTakeDamage", "EntityDamage", entityDamage)