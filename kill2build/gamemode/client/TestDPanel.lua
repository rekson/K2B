-- todo, automate this shit
PList = {}
-- list attributes | 80 icon spacing | 10 padding
-- Cheap price
PList["SmallMetalPanel"] = {posX = 10 + 10,  posY = 50 + 10, model = "models/props_debris/metal_panel02a.mdl", tt = "Small but indestructable!\nKill credit cost: 1"}
PList["WoodenDresser"] = {posX = 10 + 80 + 10, posY = 50 + 10, model = "models/props_c17/shelfunit01a.mdl", tt = "Large, but can only take a few shots.\nKill credit cost: 1"}
PList["BlueBarrel2"] = {posX = 90 + 80 + 10, posY = 50 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel3"] = {posX = 170 + 80 + 10, posY = 50 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel4"] = {posX = 250 + 80 + 10, posY = 50 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
--Medium price
PList["BlueBarrel5"] = {posX = 10 + 10,  posY = 230 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel6"] = {posX = 10 + 80 + 10, posY = 230 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel7"] = {posX = 90 + 80 + 10, posY = 230 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel8"] = {posX = 170 + 80 + 10, posY = 230 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel9"] = {posX = 250 + 80 + 10, posY = 230 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
--Expensive price
PList["BlueBarrel10"] = {posX = 10 + 10,  posY = 410 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel11"] = {posX = 10 + 80 + 10, posY = 410 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel12"] = {posX = 90 + 80 + 10, posY = 410 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel13"] = {posX = 170 + 80 + 10, posY = 410 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}
PList["BlueBarrel14"] = {posX = 250 + 80 + 10, posY = 410 + 10, model = "models/props_borealis/bluebarrel001.mdl", tt = "Kill count cost: 1"}

WList = {}
--Semi-automatic
WList["Pistol"] = {posX = 10 + 10,  posY = 50 + 10, model = "models/weapons/v_Pistol.mdl", tt = "A standard 9mm pistol.\nKill credit cost: 1"}
WList["375Revolver"] = {posX = 10 + 80 + 10, posY = 50 + 10, model = "models/weapons/v_357.mdl", tt = "A 375 revolver.\nKill credit cost: 6"}
WList["Crossbow"] = {posX = 90 + 80 + 10, posY = 50 + 10, model = "models/weapons/v_crossbow.mdl", tt = "A standard crossbow.\nKill credit cost: 8"}
WList["Shotgun"] = {posX = 170 + 80 + 10, posY = 50 + 10, model = "models/weapons/v_shotgun.mdl", tt = "A shotgun.\nKill count cost: 4"}
--Full Auto
WList["SMG"] = {posX = 10 + 10,  posY = 230 + 10, model = "models/weapons/v_smg1.mdl", tt = "A standard SMG.\nKill count cost: 4"}
WList["AR2"] = {posX = 10 + 80 + 10, posY = 230 + 10, model = "models/weapons/v_IRifle.mdl", tt = "A combine rifle.\nKill count cost: 4"}
--Explosive
WList["Grenade"] = {posX = 10 + 10,  posY = 410 + 10, model = "models/weapons/v_grenade.mdl", tt = "A standard issue grenade.\nKill count cost: 12"}
WList["Slam"] = {posX = 10 + 80 + 10, posY = 410 + 10, model = "models/weapons/w_slam.mdl", tt = "Slams\nKill count cost: 12"}
WList["RPG"] = {posX = 90 + 80 + 10, posY = 410 + 10, model = "models/weapons/w_rocket_launcher.mdl", tt = "RPG Ammo\nKill count cost: 24"}

EList = {}
--Health and suit
EList["HealthVial"] = {posX = 10 + 10,  posY = 50 + 10, model = "models/healthvial.mdl", tt = "Heals 10 health.\nKill credit cost: 2"}
EList["SuitBattery"] = {posX = 10 + 80 + 10, posY = 50 + 10, model = "models/Items/battery.mdl", tt = "Gives 15 suit charge.\nKill credit cost: 2"}
EList["HealthKit"] = {posX = 90 + 80 + 10, posY = 50 + 10, model = "models/Items/HealthKit.mdl", tt = "Heals 25 health.\nKill count cost: 5"}
--Ammo
EList["PistolAmmo"] = {posX = 10 + 10,  posY = 230 + 10, model = "models/Items/BoxSRounds.mdl", tt = "Pistol Ammo\nKill count cost: 1"}
EList["375Ammo"] = {posX = 10 + 80 + 10, posY = 230 + 10, model = "models/Items/357ammobox.mdl", tt = "375 Ammo\nKill count cost: 2"}
EList["CrossbowAmmo"] = {posX = 90 + 80 + 10, posY = 230 + 10, model = "models/Items/CrossbowRounds.mdl", tt = "Crossbow Ammo\nKill count cost: 3"}
EList["SMGAmmo"] = {posX = 170 + 80 + 10, posY = 230 + 10, model = "models/Items/BoxMRounds.mdl", tt = "SMG Ammo\nKill count cost: 3"}
EList["ShotgunAmmo"] = {posX = 250 + 80 + 10, posY = 230 + 10 + 10, model = "models/Items/BoxBuckshot.mdl", tt = "Buckshot\nKill count cost: 2"}
EList["AR2Ammo"] = {posX = 10 + 10,  posY = 410 + 10, model = "models/Items/combine_rifle_cartridge01.mdl", tt = "AR2 Ammo\nKill count cost: 4"}
EList["GrenadeAmmo"] = {posX = 10 + 80 + 10, posY = 410 + 10, model = "models/weapons/w_grenade.mdl", tt = "Grenades\nKill count cost: 8"}
EList["SlamAmmo"] = {posX = 90 + 80 + 10, posY = 410 + 10, model = "models/items/ammocrate_grenade.mdl", tt = "Slams\nKill count cost: 8"}
EList["RPGAmmo"] = {posX = 170 + 80 + 10, posY = 410 + 10, model = "models/items/ar2_grenade.mdl", tt = "RPG Ammo\nKill count cost: 12"}

DLList = {}
DLList["Category1"] = {posX = 10, posY = 10, text = "Category1"}
DLList["Category2"] = {posX = 10, posY = 180 + 10, text = "Category2"}
DLList["Category3"] = {posX = 10, posY = 360 + 10, text = "Category3"}

menuFrame = nil

function buyMenuOpen()
	menuFrame = vgui.Create("DFrame")
	menuFrame:SetTitle("Kill 2 Build bitch")
	menuFrame:SetSize(900, 600)
	menuFrame:Center()
	menuFrame:ShowCloseButton(false)

	local sheet = vgui.Create("DPropertySheet", menuFrame)
	sheet:Dock(FILL)

	local propPanel = vgui.Create("DScrollPanel", sheet)
	propPanel:SetPos(40, 40)
	propPanel:SetText("Props")
	propPanel:SizeToContents()
	sheet:AddSheet("Props", propPanel, "icon16/wrench_orange.png")
	
	local weaponPanel = vgui.Create("DScrollPanel", sheet)
	weaponPanel:SetPos(40, 40)
	weaponPanel:SetText("Weapons")
	weaponPanel:SizeToContents()
	sheet:AddSheet("Weapons", weaponPanel, "icon16/bomb.png")
	
	local entPanel = vgui.Create("DScrollPanel", sheet)
	entPanel:SetPos(40, 40)
	entPanel:SetText("Entities")
	entPanel:SizeToContents()
	sheet:AddSheet("Entities", entPanel, "icon16/box.png")
	
	gui.EnableScreenClicker(true)
	
	-- Populate the prop menu
	
	DLList["Category1"].text = "Cheap boi shit"
	DLList["Category2"].text = "Kinda 'spensive shit"
	DLList["Category3"].text = "R u rolling in skrill? shit"
	
	for k, v in pairs(DLList) do
		local label = vgui.Create("DLabel", propPanel)
		label:SetPos(DLList[k].posX, DLList[k].posY)
		label:SetText(DLList[k].text)
		label:SetFont("CloseCaption_Bold")
		label:SizeToContents()
		propPanel:AddItem(label)
	end
	
	for k, v in pairs(PList) do
		local spawnIcon = vgui.Create("SpawnIcon", propPanel)
		spawnIcon:SetModel(PList[k].model)
		spawnIcon:SetPos(PList[k].posX, PList[k].posY)
		spawnIcon:SetSize(80, 80)
		spawnIcon:SetToolTip(PList[k].tt)
		propPanel:AddItem(spawnIcon)
		
		function spawnIcon:DoClick()
			net.Start( "SpawnProp" )
			net.WriteString(PList[k].model)
			net.SendToServer()
		end
	end
	
	-- Populate the weapon menu
	
	DLList["Category1"].text = "Semi-automatic"
	DLList["Category2"].text = "Full automatic"
	DLList["Category3"].text = "Explosive"
	
	for k, v in pairs(DLList) do
		local label = vgui.Create("DLabel", weaponPanel)
		label:SetPos(DLList[k].posX, DLList[k].posY)
		label:SetText(DLList[k].text)
		label:SetFont("CloseCaption_Bold")
		label:SizeToContents()
		weaponPanel:AddItem(label)
	end
	
	for k, v in pairs(WList) do
		local spawnIcon = vgui.Create("SpawnIcon", weaponPanel)
		spawnIcon:SetModel(WList[k].model)
		spawnIcon:SetPos(WList[k].posX, WList[k].posY)
		spawnIcon:SetSize(80, 80)
		spawnIcon:SetToolTip(WList[k].tt)
		weaponPanel:AddItem(spawnIcon)
		
		function spawnIcon:DoClick()
			net.Start( "SpawnProp" )
			net.WriteString(WList[k].model)
			net.SendToServer()
		end
	end
	
	-- Populate the entity menu
	
	DLList["Category1"].text = "Health and Suit"
	DLList["Category2"].text = "Ammo"
	DLList["Category3"].text = ""
	
	for k, v in pairs(DLList) do
		local label = vgui.Create("DLabel", entPanel)
		label:SetPos(DLList[k].posX, DLList[k].posY)
		label:SetText(DLList[k].text)
		label:SetFont("CloseCaption_Bold")
		label:SizeToContents()
		entPanel:AddItem(label)
	end
	
	for k, v in pairs(EList) do
		local spawnIcon = vgui.Create("SpawnIcon", entPanel)
		spawnIcon:SetModel(EList[k].model)
		spawnIcon:SetPos(EList[k].posX, EList[k].posY)
		spawnIcon:SetSize(80, 80)
		spawnIcon:SetToolTip(EList[k].tt)
		entPanel:AddItem(spawnIcon)
		
		function spawnIcon:DoClick()
			net.Start( "SpawnProp" )
			net.WriteString(EList[k].model)
			net.SendToServer()
		end
	end
	
	return false
end
hook.Add("SpawnMenuOpen", "OpenSpawnMenu", buyMenuOpen)

function buyMenuClose()
	if menuFrame != nil and menuFrame != NULL then
		menuFrame:Close()
		gui.EnableScreenClicker(false)
	end
end
hook.Add("OnSpawnMenuClose", "CloseBuyMenu", buyMenuClose)

--local function disallowSpawnMenu( )
	--return false
--end
--hook.Add( "SpawnMenuOpen", "DisallowSpawnMenu", disallowSpawnMenu)