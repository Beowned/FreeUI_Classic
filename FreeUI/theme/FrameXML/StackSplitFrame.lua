local F, C = unpack(select(2, ...))

tinsert(C.themes["FreeUI"], function()
	local StackSplitFrame = StackSplitFrame

	F.StripTextures(StackSplitFrame)
	F.CreateBD(StackSplitFrame)
	F.CreateSD(StackSplitFrame)
	F.Reskin(StackSplitOkayButton)
	F.Reskin(StackSplitCancelButton)
end)