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
	built = 1795168823,
	builtText = "2026-11-20 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 613 },
			["Domnox|auberdine"] = { 19, 18, -86, 645 },
			["Sapmere|auberdine"] = { 19, 18, -84, 645 },
			["Вялыйхант|flamegor"] = { 16, 11, 35, 696 },
			["Givus|shekzeer"] = { 9, 7, 79, 633 },
			["Ivonsa|garalon"] = { 9, 5, -23, 707 },
			["Ithildrin|mirage-raceway"] = { 6, 6, 19, 633 },
			["Filmarisa|shekzeer"] = { 7, 4, 34, 633 },
			["Deepfull|shekzeer"] = { 3, 6, -14, 712 },
			["Topshotta|everlook"] = { 3, 6, -7, 712 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 651 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 670 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 650 },
			["Savexx|shekzeer"] = { 1, 5, -7, 633 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 672 },
			["Kakalocko|shekzeer"] = { 1, 2, -10, 633 },
			["Kennyk|garalon"] = { 3, 0, 57, 717 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 633 },
			["Trolly|shekzeer"] = { 3, 0, 47, 633 },
			["Auxy|garalon"] = { 0, 2, -18, 695 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 633 },
			["Deepshelter|shekzeer"] = { 0, 2, -17, 633 },
			["Tenex|norushen"] = { 0, 2, -8, 705 },
			["Zhili|hoptallus"] = { 1, 1, -1, 633 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 633 },
			["Cherryontop|shekzeer"] = { 0, 1, 0, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 645 },
			["Sapmere|auberdine"] = { 23, 21, -77, 645 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 613 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 696 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 768 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 769 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 712 },
			["Givus|shekzeer"] = { 9, 7, 79, 633 },
			["Topshotta|everlook"] = { 9, 7, 5, 712 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 633 },
			["Ivonsa|garalon"] = { 9, 6, -35, 707 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 760 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 633 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 813 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 736 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 743 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 782 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 759 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 651 },
			["Xpm|everlook"] = { 6, 3, -12, 873 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 745 },
			["Тнэш|flamegor"] = { 5, 3, 53, 744 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 670 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 650 },
			["Climako|auberdine"] = { 2, 4, 29, 780 },
			["Jefers|auberdine"] = { 2, 4, 29, 781 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 758 },
			["Savexx|shekzeer"] = { 1, 5, -7, 633 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 672 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 759 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 828 },
			["Paladîon|auberdine"] = { 1, 4, 22, 896 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 784 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 769 },
			["Charos|norushen"] = { 0, 4, -40, 845 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 633 },
			["Mopster|norushen"] = { 0, 4, -40, 857 },
			["Taillung|shekzeer"] = { 3, 1, 8, 778 },
			["Xpu|everlook"] = { 3, 1, 16, 776 },
			["Cavernicola|garalon"] = { 0, 3, -14, 735 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 633 },
			["Kennyk|garalon"] = { 3, 0, 57, 717 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1063 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 633 },
			["Trolly|shekzeer"] = { 3, 0, 47, 633 },
			["Auxy|garalon"] = { 0, 2, -18, 695 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 633 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 633 },
			["Tenex|norushen"] = { 0, 2, -8, 705 },
			["Zhili|hoptallus"] = { 1, 1, -1, 633 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 633 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 1353 },
			["Filmar|shekzeer"] = { 1, 0, 23, 1353 },
			["Ineo|shekzeer"] = { 0, 1, -8, 813 },
			["Orestis|norushen"] = { 0, 1, -3, 813 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 993 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 1353 },
		},
	},
}

