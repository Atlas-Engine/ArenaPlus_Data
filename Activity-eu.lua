-- Who has been playing, written by tools\UpdateActivity.ps1. Do not edit by hand.
--
-- Built from the activity log the ladder pass keeps, which records a row each
-- time a character's win or loss count moves between two polls. It costs no
-- requests: every figure here was already paid for by that pass.
--
-- Keyed by the display name exactly as the leaderboard carries it, joined to
-- the log on the generator's side. Do NOT lowercase a name to look it up:
-- Lua's :lower() folds only A-Z and would miss every accented character.
--
-- [hours][bracket]["Name|realm"] = { won, lost, rating moved, minutes ago }
--
-- "Minutes ago" counts back from `built` below, not from now, and it is when
-- the character was last SEEN to have played rather than when they played.
-- The ladder is polled on a timer, so a game is noticed at the next poll --
-- accurate to fifteen minutes on Mists and to the hour on Anniversary.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

ns.ACTIVITY_BY_REGION = ns.ACTIVITY_BY_REGION or {}

ns.ACTIVITY_BY_REGION["eu"] = {
	built = 1795158024,
	builtText = "2026-11-20 02:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 465 },
			["Sapmere|auberdine"] = { 23, 21, -77, 465 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 433 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 516 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 588 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 589 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 532 },
			["Givus|shekzeer"] = { 9, 7, 79, 453 },
			["Topshotta|everlook"] = { 9, 7, 5, 532 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 453 },
			["Ivonsa|garalon"] = { 9, 6, -35, 527 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 580 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 453 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 633 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 556 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 563 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 602 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 579 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 471 },
			["Xpm|everlook"] = { 6, 3, -12, 693 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 565 },
			["Тнэш|flamegor"] = { 5, 3, 53, 564 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 490 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 470 },
			["Climako|auberdine"] = { 2, 4, 29, 600 },
			["Jefers|auberdine"] = { 2, 4, 29, 601 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 578 },
			["Savexx|shekzeer"] = { 1, 5, -7, 453 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 492 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 579 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 648 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 604 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 589 },
			["Charos|norushen"] = { 0, 4, -40, 665 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 453 },
			["Mopster|norushen"] = { 0, 4, -40, 677 },
			["Paladîon|auberdine"] = { 1, 3, 22, 716 },
			["Taillung|shekzeer"] = { 3, 1, 8, 598 },
			["Xpu|everlook"] = { 3, 1, 16, 596 },
			["Cavernicola|garalon"] = { 0, 3, -14, 555 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 453 },
			["Kennyk|garalon"] = { 3, 0, 57, 537 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 453 },
			["Trolly|shekzeer"] = { 3, 0, 47, 453 },
			["Auxy|garalon"] = { 0, 2, -18, 515 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 453 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 453 },
			["Tenex|norushen"] = { 0, 2, -8, 525 },
			["Zhili|hoptallus"] = { 1, 1, -1, 453 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 453 },
			["Ineo|shekzeer"] = { 0, 1, -8, 633 },
			["Orestis|norushen"] = { 0, 1, -3, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 465 },
			["Sapmere|auberdine"] = { 23, 21, -77, 465 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 433 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 516 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 588 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 589 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 532 },
			["Givus|shekzeer"] = { 9, 7, 79, 453 },
			["Topshotta|everlook"] = { 9, 7, 5, 532 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 453 },
			["Ivonsa|garalon"] = { 9, 6, -35, 527 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 580 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 453 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 633 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 556 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 563 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 602 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 579 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 471 },
			["Xpm|everlook"] = { 6, 3, -12, 693 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 565 },
			["Тнэш|flamegor"] = { 5, 3, 53, 564 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 490 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 470 },
			["Climako|auberdine"] = { 2, 4, 29, 600 },
			["Jefers|auberdine"] = { 2, 4, 29, 601 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 578 },
			["Savexx|shekzeer"] = { 1, 5, -7, 453 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 492 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 579 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 648 },
			["Paladîon|auberdine"] = { 1, 4, 22, 716 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 604 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 589 },
			["Charos|norushen"] = { 0, 4, -40, 665 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 453 },
			["Mopster|norushen"] = { 0, 4, -40, 677 },
			["Taillung|shekzeer"] = { 3, 1, 8, 598 },
			["Xpu|everlook"] = { 3, 1, 16, 596 },
			["Cavernicola|garalon"] = { 0, 3, -14, 555 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 453 },
			["Kennyk|garalon"] = { 3, 0, 57, 537 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 883 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 453 },
			["Trolly|shekzeer"] = { 3, 0, 47, 453 },
			["Auxy|garalon"] = { 0, 2, -18, 515 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 453 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 453 },
			["Tenex|norushen"] = { 0, 2, -8, 525 },
			["Zhili|hoptallus"] = { 1, 1, -1, 453 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 453 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 1173 },
			["Filmar|shekzeer"] = { 1, 0, 23, 1173 },
			["Ineo|shekzeer"] = { 0, 1, -8, 633 },
			["Orestis|norushen"] = { 0, 1, -3, 633 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 813 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 1173 },
		},
	},
}

