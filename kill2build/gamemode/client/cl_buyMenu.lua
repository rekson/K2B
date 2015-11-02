-- todo, automate this shit
PList = {}
-- list attributes | 80 icon spacing | 10 padding
-- Cheap price
PList["SmallMetalPanel"] = {posX = 10 + 10,  posY = 50 + 10, model = "models/props_debris/metal_panel02a.mdl", tt = "Health: 115\nKill credit cost: 1"}
PList["Gravestone"] = {posX = 10 + 80 + 10, posY = 50 + 10, model = "models/props_c17/gravestone003a.mdl", tt = "Health: 200\nKill credit cost: 3"}
PList["WoodenDoor"] = {posX = 90 + 80 + 10, posY = 50 + 10, model = "models/props_c17/door01_left.mdl", tt = "Health: 100\nKill count cost: 2"}
PList["Desk"] = {posX = 170 + 80 + 10, posY = 50 + 10, model = "models/props_wasteland/controlroom_desk001a.mdl", tt = "Health: 115\nKill count cost: 2"}
PList["LargeMetalPanel"] = {posX = 250 + 80 + 10, posY = 50 + 10, model = "models/props_debris/metal_panel01a.mdl", tt = "Health: 150\nKill count cost: 3"}
--Medium price
PList["ConcreteBarrier"] = {posX = 10 + 10,  posY = 230 + 10, model = "models/props_c17/concrete_barrier001a.mdl", tt = "Health: 225\nKill count cost: 4"}
PList["Stove"] = {posX = 10 + 80 + 10, posY = 230 + 10, model = "models/props_c17/furnitureStove001a.mdl", tt = "Health: 250\nKill count cost: 4"}
PList["VendingMachineDoor"] = {posX = 90 + 80 + 10, posY = 230 + 10, model = "models/props_interiors/VendingMachineSoda01a_door.mdl", tt = "Health: 300\nKill count cost: 6"}
PList["MetalGate"] = {posX = 170 + 80 + 10, posY = 230 + 10, model = "models/props_building_details/Storefront_Template001a_Bars.mdl", tt = "Health: 225\nKill count cost: 4"}
PList["BlastDoor"] = {posX = 250 + 80 + 10, posY = 230 + 10, model = "models/props_lab/blastdoor001a.mdl", tt = "Health: 350\nKill count cost: 8"}
--Expensive price
PList["Metal1x2"] = {posX = 10 + 10,  posY = 410 + 10, model = "models/props_phx/construct/metal_plate1x2.mdl", tt = "Health: 375\nKill count cost: 8"}
PList["Metal2x4"] = {posX = 10 + 80 + 10, posY = 410 + 10, model = "models/props_phx/construct/metal_plate2x4.mdl", tt = "Health: 500\nKill count cost: 20"}
PList["LargeBlastDoor"] = {posX = 90 + 80 + 10, posY = 410 + 10, model = "models/props_lab/blastdoor001c.mdl", tt = "Health: 435\nKill count cost: 16"}
PList["Metal1x2Window"] = {posX = 170 + 80 + 10, posY = 410 + 10, model = "models/props_phx/construct/windows/window1x2.mdl", tt = "Health: 375\nKill count cost: 8"}
PList["CombineBarrier"] = {posX = 250 + 80 + 10, posY = 410 + 10, model = "models/props_combine/combine_barricade_short02a.mdl", tt = "Health:700\nKill count cost: 32"}

WList = {}
--Semi-automatic
WList["Pistol"] = {posX = 10 + 10,  posY = 50 + 10, model = "models/weapons/w_Pistol.mdl", tt = "A standard 9mm pistol.\nKill credit cost: 1"}
WList["375Revolver"] = {posX = 10 + 80 + 10, posY = 50 + 10, model = "models/weapons/w_357.mdl", tt = "A 375 revolver.\nKill credit cost: 6"}
WList["Crossbow"] = {posX = 90 + 80 + 10, posY = 50 + 10, model = "models/weapons/w_crossbow.mdl", tt = "A standard crossbow.\nKill credit cost: 8"}
WList["Shotgun"] = {posX = 170 + 80 + 10, posY = 50 + 10, model = "models/weapons/w_shotgun.mdl", tt = "A shotgun.\nKill count cost: 4"}
--Full Auto
WList["SMG"] = {posX = 10 + 10,  posY = 230 + 10, model = "models/weapons/w_smg1.mdl", tt = "A standard SMG.\nKill count cost: 4"}
WList["AR2"] = {posX = 10 + 80 + 10, posY = 230 + 10, model = "models/weapons/w_IRifle.mdl", tt = "A combine rifle.\nKill count cost: 4"}
--Explosive
WList["Grenade"] = {posX = 10 + 10,  posY = 410 + 10, model = "models/weapons/w_grenade.mdl", tt = "A standard issue grenade.\nKill count cost: 12"}
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
	
	DLList["Category1"].text = "Low quality"
	DLList["Category2"].text = "Medium quality"
	DLList["Category3"].text = "High quality"
	
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
			net.Start( "SpawnEntity" )
			net.WriteString(k)
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
			net.Start( "SpawnEntity" )
			net.WriteString(k)
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