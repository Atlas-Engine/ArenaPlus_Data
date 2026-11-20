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
	built = 1795183235,
	builtText = "2026-11-20 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 886 },
			["Sapmere|auberdine"] = { 23, 21, -77, 886 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 853 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 936 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 1008 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 1009 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 953 },
			["Givus|shekzeer"] = { 9, 7, 79, 874 },
			["Topshotta|everlook"] = { 9, 7, 5, 952 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 874 },
			["Ivonsa|garalon"] = { 9, 6, -35, 947 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 1001 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 874 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 1054 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 976 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 983 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 1023 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 999 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 891 },
			["Xpm|everlook"] = { 6, 3, -12, 1113 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 985 },
			["Тнэш|flamegor"] = { 5, 3, 53, 984 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 910 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 890 },
			["Climako|auberdine"] = { 2, 4, 29, 1020 },
			["Jefers|auberdine"] = { 2, 4, 29, 1021 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 998 },
			["Savexx|shekzeer"] = { 1, 5, -7, 874 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 912 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 999 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 1068 },
			["Paladîon|auberdine"] = { 1, 4, 22, 1136 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 1024 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 1010 },
			["Charos|norushen"] = { 0, 4, -40, 1085 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 874 },
			["Mopster|norushen"] = { 0, 4, -40, 1098 },
			["Taillung|shekzeer"] = { 3, 1, 8, 1018 },
			["Xpu|everlook"] = { 3, 1, 16, 1016 },
			["Cavernicola|garalon"] = { 0, 3, -14, 975 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 874 },
			["Kennyk|garalon"] = { 3, 0, 57, 958 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1303 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 874 },
			["Trolly|shekzeer"] = { 3, 0, 47, 874 },
			["Auxy|garalon"] = { 0, 2, -18, 935 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 874 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 874 },
			["Tenex|norushen"] = { 0, 2, -8, 946 },
			["Zhili|hoptallus"] = { 1, 1, -1, 874 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 874 },
			["Ineo|shekzeer"] = { 0, 1, -8, 1054 },
			["Orestis|norushen"] = { 0, 1, -3, 1054 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1234 },
		},
	},
}

