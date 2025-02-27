local F, C = unpack(select(2, ...))

tinsert(C.themes["FreeUI"], function()
	-- Dressup Frame

	F.ReskinPortraitFrame(DressUpFrame)
--	F.Reskin(DressUpFrameOutfitDropDown.SaveButton)
	F.Reskin(DressUpFrameCancelButton)
	F.Reskin(DressUpFrameResetButton)
--	F.StripTextures(DressUpFrameOutfitDropDown)
--	F.ReskinDropDown(DressUpFrameOutfitDropDown)
	F.ReskinClose(DressUpFrameCloseButton, "TOPRIGHT", DressUpFrame, "TOPRIGHT", -10, 0)

--	DressUpFrameOutfitDropDown:SetHeight(32)
--	DressUpFrameOutfitDropDown.SaveButton:SetPoint("LEFT", DressUpFrameOutfitDropDown, "RIGHT", -13, 2)
	DressUpFrameResetButton:SetPoint("RIGHT", DressUpFrameCancelButton, "LEFT", -1, 0)

--	F.ReskinMinMax(MaximizeMinimizeFrame)

	-- SideDressUp

	F.StripTextures(SideDressUpFrame, 0)
	select(5, SideDressUpModelCloseButton:GetRegions()):Hide()

	SideDressUpModel:HookScript("OnShow", function(self)
		self:ClearAllPoints()
		self:SetPoint("LEFT", self:GetParent():GetParent(), "RIGHT", C.mult, 0)
	end)

	F.Reskin(SideDressUpModelResetButton)
	F.ReskinClose(SideDressUpModelCloseButton)
	F.SetBD(SideDressUpModel)
end)
