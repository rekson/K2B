local sbDerma = nil
local playerList = nil

local width = 550;
local height = 768;

surface.CreateFont("micro",{font = "coolvetica",size = 30,weight = 450, shadow = true });
surface.CreateFont("macro",{font = "coolvetica",size = 22.5,weight = 450, shadow = true });

function GM:ScoreboardShow()
	
	if !IsValid(sbDerma) then
		sbDerma = vgui.Create("DFrame")
		sbDerma:SetSize(width,height)
		sbDerma:SetPos((ScrW() / 2) - (width/2), ScrH() / 2 - height/2) // Center
		sbDerma:SetTitle("")
		sbDerma:SetDraggable(false)
		sbDerma:ShowCloseButton(false)
		  sbDerma.Paint = function()
			//draw.RoundedBox(5, 0,0, sbDerma:GetWide(), sbDerma:GetTall(), Color(69,69,70,100))
		end
		
		local playerScrollPanel = vgui.Create("DScrollPanel", sbDerma)
		playerScrollPanel:SetSize(sbDerma:GetWide(), sbDerma:GetTall() - 20)
		playerScrollPanel:SetPos(0,20)
		
		playerList = vgui.Create("DListLayout", playerScrollPanel)
		playerList:SetSize(playerScrollPanel:GetWide(), playerScrollPanel:GetTall())
		playerList:SetPos(0,0)
	end
	
	if IsValid(sbDerma) then
		playerList:Clear()
		for k,v in pairs(player.GetAll()) do
		local playerPanel = vgui.Create("DPanel",playerList)
			playerPanel:SetSize(playerList:GetWide(), 50)
			playerPanel:SetPos(0,0)
			playerPanel.Paint = function()
				draw.RoundedBox(3,0,0, playerPanel:GetWide(), playerPanel:GetTall(), Color(100,100,100,150))
				draw.RoundedBox(3,0,48, playerPanel:GetWide(), 2, Color(211,134,0))
				
				draw.SimpleText(v:GetName(),"micro",20,10,color_white)
				//draw.SimpleText("  ❤ ".. v:Health() .. "  ♦ " .. v:Armor(),"macro",90,15,color_white)
			end
		end
		sbDerma:Show()
		sbDerma:MakePopup()
		sbDerma:SetKeyboardInputEnabled(false)
	end
end
	
function GM:ScoreboardHide()
	if IsValid(sbDerma) then
			sbDerma:Hide()
	end
end