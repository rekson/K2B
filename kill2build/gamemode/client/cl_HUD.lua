// Simple list of fonts easy to add more
if not CLIENT then return end

surface.CreateFont("large",{font = "coolvetica",size = 70,weight = 500, shadow = true});
surface.CreateFont("medium",{font = "coolvetica",size = 65,weight = 500});
surface.CreateFont("small",{font = "coolvetica",size = 45,weight = 450});
surface.CreateFont("micro",{font = "coolvetica",size = 30,weight = 450, shadow = true });
surface.CreateFont("macro",{font = "coolvetica",size = 22.5,weight = 450, shadow = true });

local hide = { // List all HUD's to hide.
	CHudHealth = true,
	CHudBattery = true,
	CHudAmmo = true,
	CHudSecondaryAmmo = true,
	CTargetID = true
}

hook.Add( "HUDShouldDraw", "HideHUD", function( name ) // Hide all HUD's
	if ( hide[ name ] ) then return false end
end )

function GM:HUDDrawTargetID()
end

function kill2BuildHUD() // Load in newly designed HUD
	local ply = LocalPlayer();
	local health = ply:Health();
	local armor = ply:Armor();
	
	draw.RoundedBox(3, ScrW()-2560, ScrH() - 45, 4096, 45, Color(40, 40, 40, 230)); // Main Box
	
	// Health
	draw.RoundedBox(3, 59, ScrH() - 36,204, 22, Color(210, 53, 53, 35) ); // Health Bar Shadow
	if ply:Health() >= 1 then
		draw.RoundedBox(3, 60, ScrH() - 37.5, math.Clamp( health, 0, 100 )*2, 20, Color(210, 53, 53, 255) ); // Health Bar
    end
	draw.SimpleText("❤ ", "large",55, ScrH() - 60, color_white, TEXT_ALIGN_CENTER)
	draw.SimpleText(health, "small",160, ScrH() - 46.5, color_white, TEXT_ALIGN_CENTER)
	
	//Armor
	draw.RoundedBox(3, 289, ScrH() - 36,205, 22, Color(35, 138, 228, 35) ); // Armor Bar Shadow
    if ply:Armor() >= 1 then
		draw.RoundedBox(3, 290, ScrH() - 37.5, math.Clamp( armor, 0, 100 )*2, 20, Color(35, 138, 228, 255) ); // Armor Bar
	end
	draw.SimpleText("♦ ", "medium",300, ScrH() - 60, color_white, TEXT_ALIGN_CENTER)
	draw.SimpleText(armor, "small",390, ScrH() - 46.5, color_white, TEXT_ALIGN_CENTER)
	
	draw.SimpleText("Kills ", "micro", 550, ScrH() - 37, color_white, TEXT_ALIGN_CENTER)
	draw.SimpleText(ply:Frags(), "micro", 580, ScrH() - 37, color_white, TEXT_ALIGN_LEFT)
	
	draw.SimpleText("Deaths ", "micro", 700, ScrH() - 37, color_white, TEXT_ALIGN_CENTER)
	draw.SimpleText(ply:Deaths(), "micro", 750, ScrH() - 37, color_white, TEXT_ALIGN_LEFT)
	
	//if(ply:Alive()) then
		//if(ply:GetActiveWeapon() and ply:GetActiveWeapon():GetPrintName() != nil) then
			//draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "macro", 1400, ScrH() - 40, color_white, TEXT_ALIGN_CENTER)
		//end
	//end
	
	if(ply:Alive()) then
		if(ply:GetActiveWeapon():Clip1() != nil) then
			if(ply:GetActiveWeapon():Clip1() != -1) then
				draw.SimpleText("Ammo " .. ply:GetActiveWeapon():Clip1() .. " / " .. ply:GetAmmoCount(ply:GetActiveWeapon():GetPrimaryAmmoType()), macro, 1400, ScrH() - 19.5, color_white,TEXT_ALIGN_CENTER )
			end
		end
	end
end
hook.Add("HUDPaint", "Kill2Build", kill2BuildHUD)


hook.Add("HUDDrawTargetID","newNameTag", function()
	//
end)