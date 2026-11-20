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
	built = 1795165223,
	builtText = "2026-11-20 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 553 },
			["Domnox|auberdine"] = { 19, 18, -86, 585 },
			["Sapmere|auberdine"] = { 19, 18, -84, 585 },
			["Вялыйхант|flamegor"] = { 16, 11, 35, 636 },
			["Givus|shekzeer"] = { 9, 7, 79, 573 },
			["Ivonsa|garalon"] = { 9, 5, -23, 647 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 676 },
			["Ithildrin|mirage-raceway"] = { 6, 6, 19, 573 },
			["Filmarisa|shekzeer"] = { 7, 4, 34, 573 },
			["Deepfull|shekzeer"] = { 3, 6, -14, 652 },
			["Topshotta|everlook"] = { 3, 6, -7, 652 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 591 },
			["Tastemydmg|shekzeer"] = { 5, 3, 10, 708 },
			["Tyralíon|shekzeer"] = { 5, 3, 10, 709 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 610 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 590 },
			["Drumåndbåss|shekzeer"] = { 3, 3, 31, 685 },
			["Gitrdone|shekzeer"] = { 5, 1, 40, 699 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 698 },
			["Rainbowrïder|shekzeer"] = { 5, 1, 40, 700 },
			["Savexx|shekzeer"] = { 1, 5, -7, 573 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 612 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 699 },
			["Тнэш|flamegor"] = { 3, 3, 31, 684 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 573 },
			["ßonnießlue|shekzeer"] = { 1, 3, -42, 709 },
			["Kennyk|garalon"] = { 3, 0, 57, 657 },
			["Taillung|shekzeer"] = { 3, 0, 23, 718 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 573 },
			["Trolly|shekzeer"] = { 3, 0, 47, 573 },
			["Xpu|everlook"] = { 3, 0, 29, 716 },
			["Auxy|garalon"] = { 0, 2, -18, 635 },
			["Cavernicola|garalon"] = { 0, 2, -8, 675 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 573 },
			["Deepshelter|shekzeer"] = { 0, 2, -17, 573 },
			["Marlkx|shekzeer"] = { 2, 0, 23, 683 },
			["Tenex|norushen"] = { 0, 2, -8, 645 },
			["Zhili|hoptallus"] = { 1, 1, -1, 573 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 573 },
			["Cherryontop|shekzeer"] = { 0, 1, 0, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 585 },
			["Sapmere|auberdine"] = { 23, 21, -77, 585 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 553 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 636 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 708 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 709 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 652 },
			["Givus|shekzeer"] = { 9, 7, 79, 573 },
			["Topshotta|everlook"] = { 9, 7, 5, 652 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 573 },
			["Ivonsa|garalon"] = { 9, 6, -35, 647 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 700 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 573 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 753 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 676 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 683 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 722 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 699 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 591 },
			["Xpm|everlook"] = { 6, 3, -12, 813 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 685 },
			["Тнэш|flamegor"] = { 5, 3, 53, 684 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 610 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 590 },
			["Climako|auberdine"] = { 2, 4, 29, 720 },
			["Jefers|auberdine"] = { 2, 4, 29, 721 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 698 },
			["Savexx|shekzeer"] = { 1, 5, -7, 573 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 612 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 699 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 768 },
			["Paladîon|auberdine"] = { 1, 4, 22, 836 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 724 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 709 },
			["Charos|norushen"] = { 0, 4, -40, 785 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 573 },
			["Mopster|norushen"] = { 0, 4, -40, 797 },
			["Taillung|shekzeer"] = { 3, 1, 8, 718 },
			["Xpu|everlook"] = { 3, 1, 16, 716 },
			["Cavernicola|garalon"] = { 0, 3, -14, 675 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 573 },
			["Kennyk|garalon"] = { 3, 0, 57, 657 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1003 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 573 },
			["Trolly|shekzeer"] = { 3, 0, 47, 573 },
			["Auxy|garalon"] = { 0, 2, -18, 635 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 573 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 573 },
			["Tenex|norushen"] = { 0, 2, -8, 645 },
			["Zhili|hoptallus"] = { 1, 1, -1, 573 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 573 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 1293 },
			["Filmar|shekzeer"] = { 1, 0, 23, 1293 },
			["Ineo|shekzeer"] = { 0, 1, -8, 753 },
			["Orestis|norushen"] = { 0, 1, -3, 753 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 933 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 1293 },
		},
	},
}

