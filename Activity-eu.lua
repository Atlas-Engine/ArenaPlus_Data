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
	built = 1795186827,
	builtText = "2026-11-20 10:00 AM",
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
			["Domnox|auberdine"] = { 23, 21, -80, 945 },
			["Sapmere|auberdine"] = { 23, 21, -77, 945 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 913 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 996 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 1068 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 1069 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 1012 },
			["Givus|shekzeer"] = { 9, 7, 79, 933 },
			["Topshotta|everlook"] = { 9, 7, 5, 1012 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 933 },
			["Ivonsa|garalon"] = { 9, 6, -35, 1007 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 1060 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 933 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 1113 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 1036 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 1043 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 1082 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 1059 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 951 },
			["Xpm|everlook"] = { 6, 3, -12, 1173 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 1045 },
			["Тнэш|flamegor"] = { 5, 3, 53, 1044 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 970 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 950 },
			["Climako|auberdine"] = { 2, 4, 29, 1080 },
			["Jefers|auberdine"] = { 2, 4, 29, 1081 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 1058 },
			["Savexx|shekzeer"] = { 1, 5, -7, 933 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 972 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 1059 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 1128 },
			["Paladîon|auberdine"] = { 1, 4, 22, 1196 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 1084 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 1069 },
			["Charos|norushen"] = { 0, 4, -40, 1145 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 933 },
			["Mopster|norushen"] = { 0, 4, -40, 1158 },
			["Taillung|shekzeer"] = { 3, 1, 8, 1078 },
			["Xpu|everlook"] = { 3, 1, 16, 1076 },
			["Cavernicola|garalon"] = { 0, 3, -14, 1035 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 933 },
			["Kennyk|garalon"] = { 3, 0, 57, 1017 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1363 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 933 },
			["Trolly|shekzeer"] = { 3, 0, 47, 933 },
			["Auxy|garalon"] = { 0, 2, -18, 995 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 933 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 933 },
			["Tenex|norushen"] = { 0, 2, -8, 1005 },
			["Zhili|hoptallus"] = { 1, 1, -1, 933 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 933 },
			["Ineo|shekzeer"] = { 0, 1, -8, 1113 },
			["Orestis|norushen"] = { 0, 1, -3, 1113 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1293 },
		},
	},
}

