// Randomly drops an item listed randomly

local chancePercentOfDrop = 99;
local entRemoveTime = 30;

// Top is for the ent name bottom is for ent model.

local items = {
	"item_healthkit",
	"item_battery"
	}
				
local itemModel = {
	"models/weapons/w_medkit.mdl",
	"models/items/battery.mdl"
	}

hook.Add("PlayerDeath","dropItemOnDeath", function(victim, inflictor, attacker)
	if(attacker != victim) then
		local randomNum = math.random(0,100)
		if(randomNum < chancePercentOfDrop) then
			local randomItem = math.Clamp(math.ceil(math.random(0,table.Count(items))),1,table.Count(items))
			local drop = ents.Create( items[randomItem] )
			if ( !IsValid( drop ) ) then return end
			drop:SetModel( itemModel[randomItem] )
			drop:SetPos( victim:GetPos() )
			drop:Spawn()
			timer.Simple( entRemoveTime, 
			function() 
				if(drop:IsValid()) then 
					drop:Remove()
				end
			end)
		end
	end
end)