surface.CreateFont("testtest", {font = "coolvetica", size = 60, weight = 500});
surface.CreateFont("test", {font = "coolvetica", size = 30, weight = 500});
surface.CreateFont("testing", {font = "coolvetica", size = 25, weight = 450});

function hidehud(name) -- Removing the default HUD
	for k, v in pairs({"CHudHealth", "CHudBattery"})do
		if name == v then return false end
	end
end
hook.Add("HUDShouldDraw", "HideOurHud", hidehud)


/*function test()
    local AvatarDraw = AvatarDraw or false;
       -- Thanks TheCodingBeast for the help!
	   if AvatarDraw == false then
                AvatarDraw = true;  -- 
                Avatartesting = vgui.Create( "AvatarImage" );
                Avatartesting:SetSize( 64, 64 );
                Avatartesting:SetPos( 30 , ScrH() - 128 );
                Avatartesting:SetPlayer( LocalPlayer(), 64 );
 
        end
end*/


function jacob_icejjfish_sandboxhud()
	local ply  = LocalPlayer();
    local HP = ply:Health();
	local Armor = ply:Armor();
	
	
	//test();
	draw.RoundedBox(3, 30, ScrH() - 128, 300, 150, Color(40, 40, 40, 230) ) ; 
	draw.RoundedBox(3, 88.5, ScrH() - 89,205, 22, Color(0, 0, 0, 100) );
	if ply:Health() >= 1 then
	draw.RoundedBox(3, 90, ScrH() - 90, math.Clamp( HP, 0, 100 )*2, 20, Color(210, 53, 53, 255) );
    end
	draw.SimpleText("❤ ", "testing",70, ScrH() - 93, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText( "Kill 2 Build", "testing", 185, ScrH() - 127.5, color_white, TEXT_ALIGN_CENTER );
	draw.SimpleText(HP, "testing",200, ScrH() - 90, color_white, TEXT_ALIGN_CENTER)
     if ply:Armor() >= 1 then
	    draw.RoundedBox(0, 170, ScrH() - 65, math.Clamp( Armor, 0, 75 )*2, 20, Color(35, 138, 228, 255) );
	 end
end
hook.Add("HUDPaint", "CoolHUD", jacob_icejjfish_sandboxhud)   