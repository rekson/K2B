// Player hurt sounds

local hurtSounds = {
	"vo/npc/male01/pain01.wav",
	"vo/npc/male01/pain03.wav",
	"vo/npc/male01/pain05.wav",
	"vo/npc/male01/pain07.wav",
	"vo/npc/male01/pain08.wav"
	}
	
hook.Add("EntityTakeDamage","playerHurtSounds", function(target, dmgInfgo)
	if(!target:HasGodMode()) then
		local randomSound = math.Clamp(math.ceil(math.random(0,table.Count(hurtSounds))),1,table.Count(hurtSounds))
		target:EmitSound(hurtSounds[randomSound])
	end
end)