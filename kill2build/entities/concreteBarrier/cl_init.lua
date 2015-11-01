include("shared.lua")

function ENT:Draw()
	self.Entity:DrawModel()
	self:SetColor( Color(100,100,100) )
end