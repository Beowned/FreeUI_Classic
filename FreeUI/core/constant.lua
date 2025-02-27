local F, C = unpack(select(2, ...))


C.Class = select(2, UnitClass('player'))
C.Color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[C.Class]
C.Name = UnitName('player')
C.Level = UnitLevel('player')
C.Realm = GetRealmName()
C.Client = GetLocale()
C.Version = GetAddOnMetadata('FreeUI', 'Version')
C.Title = GetAddOnMetadata('FreeUI', 'Title')
C.Support = GetAddOnMetadata('FreeUI', 'X-Support')
C.wowBuild = select(2, GetBuildInfo()); C.wowBuild = tonumber(C.wowBuild)
C.isClassic = select(4, GetBuildInfo()) < 20000

RAID_CLASS_COLORS['SHAMAN']['r'] = 0.0
RAID_CLASS_COLORS['SHAMAN']['g'] = 0.44
RAID_CLASS_COLORS['SHAMAN']['b'] = 0.87
RAID_CLASS_COLORS['SHAMAN']['colorStr'] = 'ff0070de'

C.ClassColors = {}
C.ClassList = {}
for k, v in pairs(LOCALIZED_CLASS_NAMES_MALE) do
	C.ClassList[v] = k
end

local colors = CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS
for class in pairs(colors) do
	C.ClassColors[class] = {}
	C.ClassColors[class].r = colors[class].r
	C.ClassColors[class].g = colors[class].g
	C.ClassColors[class].b = colors[class].b
	C.ClassColors[class].colorStr = colors[class].colorStr
end
C.r, C.g, C.b = C.ClassColors[C.Class].r, C.ClassColors[C.Class].g, C.ClassColors[C.Class].b

C.MyColor = format('|cff%02x%02x%02x', C.r*255, C.g*255, C.b*255)
C.InfoColor = '|cffe9c55d'
C.GreyColor = '|cff808080'
C.RedColor = '|cffff2735'
C.GreenColor = '|cff3a9d36'

C.LineString = C.GreyColor..'---------------'
C.LeftButton = ' |TInterface\\TUTORIALFRAME\\UI-TUTORIAL-FRAME:13:11:0:-1:512:512:12:66:230:307|t '
C.RightButton = ' |TInterface\\TUTORIALFRAME\\UI-TUTORIAL-FRAME:13:11:0:-1:512:512:12:66:333:411|t '
C.MiddleButton = ' |TInterface\\TUTORIALFRAME\\UI-TUTORIAL-FRAME:13:11:0:-1:512:512:12:66:127:204|t '
C.CopyTex = 'Interface\\Buttons\\UI-GuildButton-PublicNote-Up'
C.AssetsPath = 'interface\\addons\\FreeUI\\assets\\'
C.TexCoord = {.08, .92, .08, .92}


C.media = {
	['arrowUp']    = C.AssetsPath..'arrow-up-active',
	['arrowDown']  = C.AssetsPath..'arrow-down-active',
	['arrowLeft']  = C.AssetsPath..'arrow-left-active',
	['arrowRight'] = C.AssetsPath..'arrow-right-active',
	['gradient']   = C.AssetsPath..'gradient',
	['bdTex']      = 'Interface\\ChatFrame\\ChatFrameBackground',
	['pushed']     = C.AssetsPath..'pushed',
	['checked']    = C.AssetsPath..'checked',
	['glowTex']    = C.AssetsPath..'glowTex',
	['roleIcons']  = C.AssetsPath..'UI-LFG-ICON-ROLES',
	['sbTex']      = C.AssetsPath..'statusbar',
	['bgTex']	   = C.AssetsPath..'bgTex',
}


local dev = {'歸雁入胡天'}
local function isDeveloper()
	for _, name in pairs(dev) do
		if UnitName('player') == name then
			return true
		end
	end
end
C.isDeveloper = isDeveloper()

local function isCNClient()
	if GetLocale() == 'zhCN' or GetLocale() == 'zhTW' then
		return true
	end
end
C.isCNClient = isCNClient()


local normalFont, damageFont, headerFont, chatFont
if GetLocale() == 'zhCN' then
	normalFont = 'Fonts\\ARKai_T.ttf'
	damageFont = 'Fonts\\ARKai_C.ttf'
	headerFont = 'Fonts\\ARKai_T.ttf'
	chatFont   = 'Fonts\\ARKai_T.ttf'
elseif GetLocale() == 'zhTW' then
	normalFont = 'Fonts\\blei00d.ttf'
	damageFont = 'Fonts\\bKAI00M.ttf'
	headerFont = 'Fonts\\blei00d.ttf'
	chatFont   = 'Fonts\\blei00d.ttf'
elseif GetLocale() == 'koKR' then
	normalFont = 'Fonts\\2002.ttf'
	damageFont = 'Fonts\\K_Damage.ttf'
	headerFont = 'Fonts\\2002.ttf'
	chatFont   = 'Fonts\\2002.ttf'
elseif GetLocale() == 'ruRU' then
	normalFont = 'Fonts\\FRIZQT___CYR.ttf'
	damageFont = 'Fonts\\FRIZQT___CYR.ttf'
	headerFont = 'Fonts\\FRIZQT___CYR.ttf'
	chatFont   = 'Fonts\\FRIZQT___CYR.ttf'
else
	normalFont = C.AssetsPath..'font\\expresswaysb.ttf'
	damageFont = C.AssetsPath..'font\\PEPSI_pl.ttf'
	headerFont = C.AssetsPath..'font\\ExocetBlizzardMedium.ttf'
	chatFont   = C.AssetsPath..'font\\expresswaysb.ttf'
end

C.font = {
	['normal']  = normalFont,
	['damage']  = damageFont,
	['header']  = headerFont,
	['chat']    = chatFont,
	['pixel']   = C.AssetsPath..'font\\pixel.ttf',
}

if GetLocale() == 'ruRU' then
	C.font.pixel = C.AssetsPath..'font\\iFlash705.ttf'
end

C.NormalFont = {C.font.normal, 11, 'OUTLINE'}
C.PixelFont = {C.font.pixel, 8, 'OUTLINEMONOCHROME'}



local LSM = LibStub and LibStub('LibSharedMedia-3.0', true)
if not LSM then return end

local zhCN, zhTW, western = LSM.LOCALE_BIT_zhCN, LSM.LOCALE_BIT_zhTW, LSM.LOCALE_BIT_western

LSM:Register('background', 'FreeUI_BG', 			C.media.bdTex)

LSM:Register('statusbar', 'FreeUI_SB',  			C.media.sbTex)

LSM:Register('font', 'FreeUI_ExocetBlizzardLight', 	C.AssetsPath..'font\\ExocetBlizzardLight.ttf', zhCN + zhTW + western)
LSM:Register('font', 'FreeUI_ExocetBlizzardMedium', C.AssetsPath..'font\\ExocetBlizzardMedium.ttf', zhCN + zhTW + western)
LSM:Register('font', 'FreeUI_supereffective', 		C.AssetsPath..'font\\supereffective.ttf', zhCN + zhTW + western)
LSM:Register('font', 'FreeUI_pixel', 				C.AssetsPath..'font\\pixel.ttf', zhCN + zhTW + western)
LSM:Register('font', 'FreeUI_pixel_bold', 			C.AssetsPath..'font\\pixel_bold.ttf', zhCN + zhTW + western)

LSM:Register('font', 'FreeUI_Normal', 				C.font.normal, zhCN + zhTW + western)
LSM:Register('font', 'FreeUI_Header', 				C.font.header, zhCN + zhTW + western)
LSM:Register('font', 'FreeUI_Chat', 				C.font.chat, zhCN + zhTW + western)

LSM:Register('sound', 'FreeUI_Buzz', 				C.AssetsPath..'sound\\buzz.ogg')
LSM:Register('sound', 'FreeUI_Ding', 				C.AssetsPath..'sound\\ding.ogg')
LSM:Register('sound', 'FreeUI_Execute', 			C.AssetsPath..'sound\\execute.ogg')
LSM:Register('sound', 'FreeUI_LowHealth', 			C.AssetsPath..'sound\\lowhealth.ogg')
LSM:Register('sound', 'FreeUI_LowMana', 			C.AssetsPath..'sound\\lowmana.ogg')
LSM:Register('sound', 'FreeUI_Miss', 				C.AssetsPath..'sound\\miss.mp3')
LSM:Register('sound', 'FreeUI_Proc', 				C.AssetsPath..'sound\\proc.ogg')
LSM:Register('sound', 'FreeUI_Interrupt', 			C.AssetsPath..'sound\\interrupt.ogg')
LSM:Register('sound', 'FreeUI_Notification', 		C.AssetsPath..'sound\\notification.mp3')
LSM:Register('sound', 'FreeUI_Warning', 			C.AssetsPath..'sound\\warning.ogg')
LSM:Register('sound', 'FreeUI_WhisperNormal', 		C.AssetsPath..'sound\\whisper_normal.ogg')
LSM:Register('sound', 'FreeUI_WhisperBN', 			C.AssetsPath..'sound\\whisper_bn.ogg')
LSM:Register('sound', 'FreeUI_Forthehorde', 		C.AssetsPath..'sound\\forthehorde.mp3')

