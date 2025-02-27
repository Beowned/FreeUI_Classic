local F, C, L = unpack(select(2, ...))


C['general'] = {
	['uiScale'] = 1,
	['uiScaleAuto'] = true,

	['fasterLoot'] = true,
	['enhancedMenu'] = true,
	['mailButton'] = true, 				
	['alreadyKnown'] = true,
	['tradeTabs'] = true,
	['marker'] = true,
	['itemLevel'] = true,
	['helmCloak'] = true,
	['PVPSound'] = true,


	
	['clickCast'] = true,
		['clickCast_filter'] = false,

	['camera'] = true,
		['cameraZoomSpeed'] = 5,
		['actionCam'] = false,
		['actionCam_full'] = false,

	['numberFormat'] = 1, -- 2 for Chinse number format (万/亿/兆)
}

C['appearance'] = {
	['themes'] = true,
		['backdropColour'] = {.03, .03, .03},
		['backdropAlpha'] = .7,
		['buttonGradientColour'] = {.1, .1, .1, .5},
		['buttonSolidColour'] = {.05, .05, .05, .7},
		['gradient'] = true,

	['shadow'] = true,

	['flashCursor'] = true,
	['vignette'] = true,
		['vignetteAlpha'] = .8,



	['fonts'] = true,

	['DBM'] = true,
	['BigWigs'] = true,
	['WeakAuras'] = true,
	['PremadeGroupsFilter'] = true,
	['Skada'] = true,
	['QuestLogEx'] = true,
}

C['actionbar'] = {
	['enable'] = true,
		['buttonSizeSmall'] = 24,
		['buttonSizeNormal'] = 30,
		['buttonSizeBig'] = 34,
		['padding'] = 2,
		['margin'] = 4,

		['hotKey'] = true,
		['macroName'] = true,
		['count'] = true,
		['classColor'] = false,

		['layoutStyle'] = 1,

		['bar3'] = true,
			['bar3Mouseover'] = true,
		['stanceBar'] = true,
			['stanceBarMouseover'] = false,
		['petBar'] = true,
			['petBarMouseover'] = false,
		['sideBar'] = true,
			['sideBarMouseover'] = true,

		['hoverBind'] = true,
}

C['map'] = {
	['worldMapScale'] = .6,
	['worldMapFader'] = true,
	['worldMapCoords'] = true,
	['worldMapReveal'] = true,
	['miniMapScale'] = 1,
	['miniMapPosition'] = {'BOTTOMRIGHT', UIParent, 'BOTTOMRIGHT', -50, 50},
	['miniMapSize'] = 240,
	['whoPings'] = true,
	['microMenu'] = true,
	['expRepBar'] = true,
}

C['notification'] = {
	['enableBanner'] = true,
		['playSounds'] = true,
		['animations'] = true,
		['timeShown'] = 5,

		['checkBagsFull'] = true,
		['checkMail'] = true,
		['autoRepairCost'] = true,
		['autoSellJunk'] = true,

	['questNotifier'] = true,
		['questProgress'] = true,
		['onlyCompleteRing'] = true,

	['interrupt'] = true,
		['interruptAnnounce'] = true,
	['dispel'] = true,
		['dispelAnnounce'] = true,
	['rare'] = true,
		['rareSound'] = true,
	['vitalSpells'] = true,
	['resurrect'] = true,
	['sapped'] = true,
	['buff'] = true,
	['emergency'] = true,
		['lowHealth'] = 0.5,
		['lowMana'] = 0.3,
}

C['automation'] = {
	['autoSetRole'] = true,

	['autoSellJunk'] = true,
	['autoRepair'] = true,
	['autoScreenShot'] = true,
	['autoQuest'] = true,
	['autoBuyStack'] = true,
	['autoTabBinder'] = true,
	['autoAcceptInvite'] = false,
	['autoInvite'] = true,
		['autoInvite_keyword'] = 'invite',
}

C['inventory'] = {
	['enable'] = true,
		['bagScale'] = 1,
		['itemSlotSize'] = 36,
		['bagColumns'] = 10,
		['bankColumns'] = 10,
		['reverseSort'] = true,
		['itemLevel'] = false,
		['newitemFlash'] = true,
		['deleteButton'] = true,
		['useCategory'] = true,
			['gearSetFilter'] = false,
			['tradeGoodsFilter'] = true,
			['questItemFilter'] = true,
			['mechagonItemFilter'] = true,
}

C['infobar'] = {
	['enable'] = true,
		['barHeight'] = 20,
		['anchorTop'] = true,
		['mouseover'] = true,
		['stats'] = true,
		['skadaHelper'] = true,
		['friends'] = true,
		['currencies'] = true,
		['durability'] = true,
		['talent'] = true,
}

C['tooltip'] = {
	['enable'] = true,
		['cursor'] = false,
		['position'] = {'BOTTOMRIGHT', UIParent, 'BOTTOMRIGHT', -50, 300},
		['scale'] = 1,
		['hideTitle'] = true,
		['hideRealm'] = true,
		['hideRank'] = true,
		['hideJunkGuild'] = true,
		['combatHide'] = false,
		['ilvlSpec'] = true,
			['ilvlSpecByShift'] = false,
		['extraInfo'] = true,
			['extraInfoByShift'] = false,
		['azeriteTrait'] = true,
			['azeriteTraitOnlyIcons'] = true,
		['linkHover'] = true,
		['borderColor'] = true,
		['tipIcon'] = true,
		['targetBy'] = true,
		['petInfo'] = true,
}

C['chat'] = {
	['enable'] = true,
		['lockPosition'] = true,
		['fontOutline'] = false,
		['tabs'] = true,
		['abbreviate'] = true,
		['fading'] = true,
			['fadingVisible'] = 60,
			['fadingDuration'] = 6,
		['itemLinks'] = true,
		['spamageMeter'] = true,
		['chatCopy'] = true,
		['nameCopy'] = true,
		['urlCopy'] = true,
		['hideVoiceButtons'] = true,
		['whisperSticky'] = true,
		['whisperAlert'] = true,
			['lastAlertTimer'] = 30,
		['autoBubble'] = false,
		['timeStamp'] = false,
			['timeStampColor'] = {.5, .5, .5},
		['filters'] = true,
			['keywordsList'] = '',
			['blockAddonAlert'] = true,
				['addonBlockList'] = {
					'任务进度提示', '%[接受任务%]', '%(任务完成%)', '<大脚', '【爱不易】', 'EUI[:_]', '打断:.+|Hspell', 'PS 死亡: .+>', '%*%*.+%*%*', '<iLvl>', ('%-'):rep(20),
					'<小队物品等级:.+>', '<LFG>', '进度:', '属性通报', 'wow.+兑换码', 'wow.+验证码', '=>', '【有爱插件】', '：.+>'
					},
}

C['unitframe'] = {
	['enable'] = true,
		['transMode'] = true,
		['colourSmooth'] = false,
		['healer'] = false,
		['portrait'] = true,

		['dispellable'] = true,
		['debuffbyPlayer'] = true,
		['rangeCheck'] = true,

		['classPower'] = true,
			['classPower_height'] = 2,

		['totems'] = true,

		['power_height'] = 3,
		['altpower_height'] = 2,

		['enableFCT'] = true,
			['playerFCT'] = true,
			['targetFCT'] = true,
			['petFCT'] = true,
			['hotsDots'] = true,
			['autoAttack'] = true,
			['overHealing'] = false,
		
		['enableCastbar'] = true,
			['castbar_separatePlayer'] = false,
			['castbar_separateTarget'] = false,
			['castbar_CastingColor'] = {110/255, 176/255, 216/255},
			['castbar_ChannelingColor'] = {92/255, 193/255, 216/255},
			['castbar_notInterruptibleColor'] = {190/255, 10/255, 18/255},
			['castbar_CompleteColor'] = {63/255, 161/255, 124/255},
			['castbar_FailColor'] = {187/255, 99/255, 110/255},
			['castbar_showSpellName'] = false,
			['castbar_showSpellTimer'] = false,

		['enableGroup'] = true,
			['groupNames'] = false,
			['groupColourSmooth'] = true,
			['groupFilter'] = 8,

		['enableBoss'] = true,
			['bossColourSmooth'] = true,

		['player_pos'] = {'TOP', UIParent, 'CENTER', 0, -300},
		['player_pos_healer'] = {'RIGHT', UIParent, 'CENTER', -100, -200},
		['player_width'] = 200,
		['player_width_healer'] = 200,
		['player_height'] = 16,
		['player_height_healer'] = 16,
		['player_cb_width'] = 200,
		['player_cb_width_healer'] = 200,
		['player_cb_height'] = 16,
		['player_cb_height_healer'] = 16,
		['player_frameVisibility'] = '[combat][mod:shift][@target,exists][@vehicle,exists][overridebar][shapeshift][vehicleui][possessbar] show; hide',
		['frameVisibility'] = false,

		['pet_pos'] = {'RIGHT', 'oUF_Player', 'LEFT', -6, 0},
		['pet_pos_healer'] = {'RIGHT', 'oUF_Player', 'LEFT', -6, 0},
		['pet_width'] = 68,
		['pet_width_healer'] = 68,
		['pet_height'] = 16,
		['pet_height_healer'] = 16,
		['pet_frameVisibility'] = '[nocombat,nomod,@target,noexists][@pet,noexists] hide; show',


		['target_pos'] = {'LEFT', 'oUF_Player', 'RIGHT', 80, 60},
		['target_pos_healer'] = {'LEFT', UIParent, 'CENTER', 100, -200},
		['target_width'] = 200,
		['target_width_healer'] = 200,
		['target_height'] = 16,
		['target_height_healer'] = 16,
		['target_cb_width'] = 200,
		['target_cb_width_healer'] = 200,
		['target_cb_height'] = 10,
		['target_cb_height_healer'] = 10,


		['targettarget_pos'] = {'LEFT', 'oUF_Target', 'RIGHT', 6, 0},
		['targettarget_pos_healer'] = {'CENTER', UIParent, 'CENTER', 0, -200},
		['targettarget_width'] = 80,
		['targettarget_width_healer'] = 80,
		['targettarget_height'] = 16,
		['targettarget_height_healer'] = 16,

		['party_pos'] = {'BOTTOMRIGHT', 'oUF_Player', 'TOPLEFT', -100, 60},
		['party_pos_healer'] = {'TOP', UIParent, 'CENTER', 0, -250},
		['party_width'] = 90,
		['party_width_healer'] = 70,
		['party_height'] = 38,
		['party_height_healer'] = 34,
		['party_gap'] = 6,

		['raid_pos'] = {'RIGHT', Minimap, 'LEFT', -8, 0},
		['raid_pos_healer'] = {'TOP', UIParent, 'CENTER', 0, -250},
		['raid_width'] = 48,
		['raid_width_healer'] = 48,
		['raid_height'] = 32,
		['raid_height_healer'] = 32,
		['raid_gap'] = 5,

		['boss_pos'] = {'LEFT', 'oUF_Target', 'RIGHT', 120, 160},
		['boss_pos_healer'] = {'LEFT', 'oUF_Target', 'RIGHT', 120, 160},
		['boss_width'] = 166,
		['boss_width_healer'] = 166,
		['boss_height'] = 20,
		['boss_height_healer'] = 20,
		['boss_gap'] = 60,

}


C['quest'] = {
	['questTracker'] = true,
	['quickQuest'] = true,
	['questNotifier'] = true,
		['questProgress'] = true,
		['onlyCompleteRing'] = false,
}

C['cooldown'] = {
	['cdEnhanced'] = true,
		['cdFont'] = {'interface\\addons\\FreeUI\\assets\\font\\supereffective.ttf', 16, 'OUTLINEMONOCHROME'},
	['cdPulse'] = true,
		['ignoredSpells'] = {
			--GetSpellInfo(6807),	-- Maul
			--GetSpellInfo(35395),	-- Crusader Strike
		},
}