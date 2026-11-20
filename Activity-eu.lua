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
	built = 1795194031,
	builtText = "2026-11-20 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Hapless|everlook"] = { 2, 3, -28, 12 },
			["Ceendare|auberdine"] = { 0, 4, 0, 33 },
			["Sangore|auberdine"] = { 0, 4, -11, 33 },
			["Domnox|auberdine"] = { 2, 0, 6, 28 },
			["Sapmere|auberdine"] = { 2, 0, 6, 29 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Hapless|everlook"] = { 2, 3, -28, 12 },
			["Ceendare|auberdine"] = { 0, 4, 0, 33 },
			["Sangore|auberdine"] = { 0, 4, -11, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 100 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 94 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 94 },
			["Domnox|auberdine"] = { 2, 0, 6, 28 },
			["Sapmere|auberdine"] = { 2, 0, 6, 29 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 92 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Hapless|everlook"] = { 2, 3, -28, 12 },
			["Ceendare|auberdine"] = { 0, 4, 0, 33 },
			["Sangore|auberdine"] = { 0, 4, -11, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 100 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 94 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 94 },
			["Domnox|auberdine"] = { 2, 0, 6, 28 },
			["Sapmere|auberdine"] = { 2, 0, 6, 29 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 92 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Hapless|everlook"] = { 2, 3, -28, 12 },
			["Ceendare|auberdine"] = { 0, 4, 0, 33 },
			["Sangore|auberdine"] = { 0, 4, -11, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 100 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 94 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 94 },
			["Domnox|auberdine"] = { 2, 0, 6, 28 },
			["Sapmere|auberdine"] = { 2, 0, 6, 29 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 92 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 25, 21, -74, 28 },
			["Sapmere|auberdine"] = { 25, 21, -71, 29 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 1033 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 1116 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 1188 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 1189 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 1132 },
			["Givus|shekzeer"] = { 9, 7, 79, 1054 },
			["Topshotta|everlook"] = { 9, 7, 5, 1132 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 1054 },
			["Ivonsa|garalon"] = { 9, 6, -35, 1127 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 1180 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 1054 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 1234 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 1156 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 1163 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 1203 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 1179 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 1071 },
			["Xpm|everlook"] = { 6, 3, -12, 1293 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 1165 },
			["Тнэш|flamegor"] = { 5, 3, 53, 1164 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 1090 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 1070 },
			["Climako|auberdine"] = { 2, 4, 29, 1200 },
			["Jefers|auberdine"] = { 2, 4, 29, 1201 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 1178 },
			["Savexx|shekzeer"] = { 1, 5, -7, 1054 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 1092 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 1179 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 1248 },
			["Hapless|everlook"] = { 2, 3, -28, 12 },
			["Paladîon|auberdine"] = { 1, 4, 22, 1316 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 1204 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 1190 },
			["Ceendare|auberdine"] = { 0, 4, 0, 33 },
			["Charos|norushen"] = { 0, 4, -40, 1265 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 1054 },
			["Mopster|norushen"] = { 0, 4, -40, 1278 },
			["Sangore|auberdine"] = { 0, 4, -11, 33 },
			["Taillung|shekzeer"] = { 3, 1, 8, 1198 },
			["Xpu|everlook"] = { 3, 1, 16, 1196 },
			["Cavernicola|garalon"] = { 0, 3, -14, 1155 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 1054 },
			["Kennyk|garalon"] = { 3, 0, 57, 1137 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 1054 },
			["Trolly|shekzeer"] = { 3, 0, 47, 1054 },
			["Вялыйпаладин|flamegor"] = { 1, 2, -12, 100 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 94 },
			["Auxy|garalon"] = { 0, 2, -18, 1115 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 94 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 1054 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 1054 },
			["Shlouh|shekzeer"] = { 2, 0, 24, 92 },
			["Tenex|norushen"] = { 0, 2, -8, 1125 },
			["Zhili|hoptallus"] = { 1, 1, -1, 1054 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 1054 },
			["Ineo|shekzeer"] = { 0, 1, -8, 1234 },
			["Orestis|norushen"] = { 0, 1, -3, 1234 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 1414 },
		},
	},
}

