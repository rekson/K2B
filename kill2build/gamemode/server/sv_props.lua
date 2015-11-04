include("shared/sv_shared.lua")

function disableCLPropSpawn(ply, model)
	return false
end
hook.Add("PlayerSpawnProp", "DisableCLPropSpawn", disableCLPropSpawn)

function disableCLEntSpawn(ply, ent)
	return false
end
hook.Add("PlayerSpawnSENT", "DisableCLEntSpawn", disableCLEntSpawn)

propNerf = {}
propNerf["weapon_crossbow"] = 25
propNerf["weapon_crowbar"] = 0
propNerf["Crowbar"] = 0

plyNerf = {}
plyNerf["weapon_stunstick"] = 0

function nerfDamage(entity, dmgInfo)
	attacker = dmgInfo:GetAttacker()
	
	if attacker:IsPlayer() and allowedProps[entity:GetModel()] then
		dmgInfo:SetMaxDamage(200)
		if propNerf[attacker:GetActiveWeapon():GetClass()] then dmgInfo:SetDamage(propNerf[attacker:GetActiveWeapon():GetClass()]) end
	end
	if attacker:IsPlayer() and entity:IsPlayer() then
		if plyNerf[attacker:GetActiveWeapon():GetClass()] then dmgInfo:SetDamage(plyNerf[attacker:GetActiveWeapon():GetClass()]) end
	end
	print(dmgInfo:GetDamage())
	player.GetAll()[0]:ChatPrint("I'm gay")
end
hook.Add("EntityTakeDamage", "NerfDamage", nerfDamage)

function entityDamage(entity, dmgInfo)
	if not entity:IsPlayer() and allowedProps[entity:GetModel()] and not entity:GetNWBool("isGhost") then
		prop = entity:GetModel()
		health = entity:GetNWInt("PropHealth")
		maxHealth = tonumber(allowedProps[prop]["maxHealth"])
		attacker = dmgInfo:GetAttacker()
		blackness = 255 * (health/maxHealth)

		if attacker:IsPlayer() and attacker == entity:GetNetworkedEntity("Owner") then
			weapon = attacker:GetActiveWeapon()
			if weapon:GetClass() == "Stunstick" or weapon:GetClass() == "weapon_stunstick" then
				health = health + 15
				if health > maxHealth then health = maxHealth end
				entity:SetNWInt("PropHealth", health)
			end
		else
			health = health - dmgInfo:GetDamage()
			entity:SetNWInt("PropHealth", health)
			--print(dmgInfo:GetDamage())
		end
		
		if health <= 0 then 
			effectData = EffectData()
			effectData:SetOrigin(entity:GetPos())
			util.Effect(allowedProps[entity:GetModel()]["effect"], effectData)
			entity:Remove()
		end
		
		entity:SetColor(Color(blackness, blackness, blackness, 255))
	end
end
hook.Add("EntityTakeDamage", "EntityDamage", entityDamage)

function isPropProtected(ply, entity)
	--Check for prop buddies here also
	if ply != entity:GetNetworkedEntity("Owner") then
		return false
	else
		entity:SetNWBool("isGhost", true)
		entity:SetColor(Color(255, 255, 255, 200))
		entity:SetCollisionGroup(COLLISION_GROUP_WORLD)
	end
end
hook.Add("PhysgunPickup", "IsPropProtected", isPropProtected)

function propPersistGhost(ply, entity) 
	--Check for prop buddies here also || TODO MAKE FUNCTION TO CHECK LOCATION AT PROP SPAWN
	if ply == entity:GetNetworkedEntity("Owner") and entity:GetNWBool("IsGhost") then
		players = player.GetAll()
		isInRadius = false
		
		for k, v in pairs(players) do
			if entity:GetPos():Distance(v:GetPos()) < 100 then isInRadius = true end
		end
		
		local phys = entity:GetPhysicsObject()
		
		if not isInRadius then
			entity:SetNWBool("isGhost", false)
			entity:SetVelocity(Vector(0,0,0))
			entity:SetAbsVelocity(Vector(0,0,0))
			entity:SetColor(Color(255, 255, 255, 255))
			phys:AddAngleVelocity( phys:GetAngleVelocity() * -1 )
			phys:SetVelocityInstantaneous( Vector(0,0,0) )
			phys:EnableGravity(true)
			entity:SetCollisionGroup(COLLISION_GROUP_INTERACTIVE)
		end
	end
end
hook.Add("PhysgunDrop", "PropPersistGhost", propPersistGhost)


function dcRemoveProps(ply)
	props = ents.GetAll()
	
	for k, v in pairs(props) do
		if v:GetNetworkedEntity("Owner") == ply then v:Remove() end
	end
end
hook.Add("PlayerDisconnected", "DCRemoveProps", dcRemoveProps)