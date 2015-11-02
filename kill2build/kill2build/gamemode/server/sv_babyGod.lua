// Simple baby god

local timeTillEnd = 3;

hook.Add("PlayerSpawn", "babyGod", function(ply)
	if(ply:IsValid()) then
		ply:GodEnable() 
		ply:SetPlayerColor( Vector( 0, 1, 0 ) )
		ply:SetRenderMode( RENDERMODE_TRANSALPHA )
		ply:SetColor(Color(255,255,255,150))
		timer.Simple(timeTillEnd, 
		function() 
			if(ply:IsValid()) then
				ply:GodDisable() 
				ply:SetPlayerColor( Vector( 1, 0, 0 ) ) 
				ply:SetRenderMode( RENDERMODE_NORMAL )
				ply:SetColor(Color(255,255,255,255))
			end
		end)
	end
end)