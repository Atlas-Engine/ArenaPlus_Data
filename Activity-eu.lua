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
	built = 1795190424,
	builtText = "2026-11-20 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 40 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 34 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 34 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 40 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 34 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 34 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 32 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 40 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 34 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 34 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 32 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 40 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 34 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 34 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 32 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 23, 21, -80, 1005 },
			["Sapmere|auberdine"] = { 23, 21, -77, 1005 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 973 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 1056 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 1128 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 1129 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 1072 },
			["Givus|shekzeer"] = { 9, 7, 79, 993 },
			["Topshotta|everlook"] = { 9, 7, 5, 1072 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 993 },
			["Ivonsa|garalon"] = { 9, 6, -35, 1067 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 1120 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 993 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 1173 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 1096 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 1103 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 1142 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 1119 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 1011 },
			["Xpm|everlook"] = { 6, 3, -12, 1233 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 1105 },
			["Тнэш|flamegor"] = { 5, 3, 53, 1104 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 1030 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 1010 },
			["Climako|auberdine"] = { 2, 4, 29, 1140 },
			["Jefers|auberdine"] = { 2, 4, 29, 1141 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 1118 },
			["Savexx|shekzeer"] = { 1, 5, -7, 993 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 1032 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 1119 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 1188 },
			["Paladîon|auberdine"] = { 1, 4, 22, 1256 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 1144 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 1129 },
			["Charos|norushen"] = { 0, 4, -40, 1205 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 993 },
			["Mopster|norushen"] = { 0, 4, -40, 1217 },
			["Taillung|shekzeer"] = { 3, 1, 8, 1138 },
			["Xpu|everlook"] = { 3, 1, 16, 1136 },
			["Cavernicola|garalon"] = { 0, 3, -14, 1095 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 993 },
			["Kennyk|garalon"] = { 3, 0, 57, 1077 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 1423 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 993 },
			["Trolly|shekzeer"] = { 3, 0, 47, 993 },
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 40 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 34 },
			["Auxy|garalon"] = { 0, 2, -18, 1055 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 34 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 993 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 993 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 32 },
			["Tenex|norushen"] = { 0, 2, -8, 1065 },
			["Zhili|hoptallus"] = { 1, 1, -1, 993 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 993 },
			["Ineo|shekzeer"] = { 0, 1, -8, 1173 },
			["Orestis|norushen"] = { 0, 1, -3, 1173 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1353 },
		},
	},
}

