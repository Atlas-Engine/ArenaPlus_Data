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
	built = 1795197632,
	builtText = "2026-11-20 01:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Monomax|shekzeer"] = { 9, 8, 13, 34 },
			["Вялыйпаладин|flamegor"] = { 8, 6, 19, 47 },
			["Mwaniel|auberdine"] = { 2, 4, 33, 34 },
			["Wasabî|auberdine"] = { 2, 4, 8, 34 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 34 },
			["Ivonsa|garalon"] = { 1, 0, 8, 34 },
			["Shlouh|shekzeer"] = { 1, 0, 12, 34 },
			["Мориконе|flamegor"] = { 0, 1, -5, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Monomax|shekzeer"] = { 9, 8, 13, 34 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 47 },
			["Mwaniel|auberdine"] = { 2, 4, 33, 34 },
			["Wasabî|auberdine"] = { 2, 4, 8, 34 },
			["Hapless|everlook"] = { 2, 3, -28, 72 },
			["Ceendare|auberdine"] = { 0, 4, 0, 93 },
			["Sangore|auberdine"] = { 0, 4, -11, 93 },
			["Shlouh|shekzeer"] = { 3, 0, 36, 34 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 154 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 154 },
			["Domnox|auberdine"] = { 2, 0, 6, 88 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 34 },
			["Sapmere|auberdine"] = { 2, 0, 6, 89 },
			["Ivonsa|garalon"] = { 1, 0, 8, 34 },
			["Мориконе|flamegor"] = { 0, 1, -5, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Monomax|shekzeer"] = { 9, 8, 13, 34 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 47 },
			["Mwaniel|auberdine"] = { 2, 4, 33, 34 },
			["Wasabî|auberdine"] = { 2, 4, 8, 34 },
			["Hapless|everlook"] = { 2, 3, -28, 72 },
			["Ceendare|auberdine"] = { 0, 4, 0, 93 },
			["Sangore|auberdine"] = { 0, 4, -11, 93 },
			["Shlouh|shekzeer"] = { 3, 0, 36, 34 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 154 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 154 },
			["Domnox|auberdine"] = { 2, 0, 6, 88 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 34 },
			["Sapmere|auberdine"] = { 2, 0, 6, 89 },
			["Ivonsa|garalon"] = { 1, 0, 8, 34 },
			["Мориконе|flamegor"] = { 0, 1, -5, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Monomax|shekzeer"] = { 9, 8, 13, 34 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 47 },
			["Mwaniel|auberdine"] = { 2, 4, 33, 34 },
			["Wasabî|auberdine"] = { 2, 4, 8, 34 },
			["Hapless|everlook"] = { 2, 3, -28, 72 },
			["Ceendare|auberdine"] = { 0, 4, 0, 93 },
			["Sangore|auberdine"] = { 0, 4, -11, 93 },
			["Shlouh|shekzeer"] = { 3, 0, 36, 34 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 154 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 154 },
			["Domnox|auberdine"] = { 2, 0, 6, 88 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 34 },
			["Sapmere|auberdine"] = { 2, 0, 6, 89 },
			["Ivonsa|garalon"] = { 1, 0, 8, 34 },
			["Мориконе|flamegor"] = { 0, 1, -5, 34 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 25, 21, -74, 88 },
			["Sapmere|auberdine"] = { 25, 21, -71, 89 },
			["Allanaa|mirage-raceway"] = { 13, 30, 161, 1093 },
			["Вялыйхант|flamegor"] = { 18, 13, 33, 1176 },
			["Tastemydmg|shekzeer"] = { 11, 12, -24, 1248 },
			["Tyralíon|shekzeer"] = { 11, 12, -24, 1249 },
			["Monomax|shekzeer"] = { 9, 8, 13, 34 },
			["Вялыйпаладин|flamegor"] = { 9, 8, 7, 47 },
			["Deepfull|shekzeer"] = { 9, 7, -7, 1192 },
			["Givus|shekzeer"] = { 9, 7, 79, 1114 },
			["Ivonsa|garalon"] = { 10, 6, -27, 34 },
			["Topshotta|everlook"] = { 9, 7, 5, 1192 },
			["Filmarisa|shekzeer"] = { 9, 6, 35, 1114 },
			["Rainbowrïder|shekzeer"] = { 9, 5, 39, 1241 },
			["Ithildrin|mirage-raceway"] = { 7, 6, 37, 1114 },
			["Stålkungen|shekzeer"] = { 7, 6, 18, 1294 },
			["Triplecheese|shekzeer"] = { 7, 6, 10, 1216 },
			["Marlkx|shekzeer"] = { 7, 3, 56, 1223 },
			["Фазерихх|flamegor"] = { 7, 3, 51, 1263 },
			["Gitrdone|shekzeer"] = { 7, 2, 53, 1239 },
			["Vrctx|shekzeer"] = { 9, 0, 67, 1131 },
			["Xpm|everlook"] = { 6, 3, -12, 1353 },
			["Drumåndbåss|shekzeer"] = { 5, 3, 53, 1225 },
			["Тнэш|flamegor"] = { 5, 3, 53, 1224 },
			["Hayvanqt|shekzeer"] = { 5, 2, 70, 1150 },
			["Healdbyme|shekzeer"] = { 5, 2, 47, 1130 },
			["Climako|auberdine"] = { 2, 4, 29, 1260 },
			["Jefers|auberdine"] = { 2, 4, 29, 1261 },
			["Makkezi|shekzeer"] = { 1, 5, -25, 1238 },
			["Mwaniel|auberdine"] = { 2, 4, 33, 34 },
			["Savexx|shekzeer"] = { 1, 5, -7, 1114 },
			["Srtwhippa|everlook"] = { 1, 5, -6, 1152 },
			["Wasabî|auberdine"] = { 2, 4, 8, 34 },
			["Ziggemaster|shekzeer"] = { 1, 5, -25, 1239 },
			["Cõmbustz|shekzeer"] = { 2, 3, -15, 1308 },
			["Hapless|everlook"] = { 2, 3, -28, 72 },
			["ßlinkd|shekzeer"] = { 2, 3, -8, 1264 },
			["ßonnießlue|shekzeer"] = { 2, 3, -30, 1250 },
			["Ceendare|auberdine"] = { 0, 4, 0, 93 },
			["Charos|norushen"] = { 0, 4, -40, 1325 },
			["Kakalocko|shekzeer"] = { 1, 3, -16, 1114 },
			["Mopster|norushen"] = { 0, 4, -40, 1338 },
			["Paladîon|auberdine"] = { 1, 3, 22, 1376 },
			["Sangore|auberdine"] = { 0, 4, -11, 93 },
			["Taillung|shekzeer"] = { 3, 1, 8, 1258 },
			["Xpu|everlook"] = { 3, 1, 16, 1256 },
			["Cavernicola|garalon"] = { 0, 3, -14, 1215 },
			["Deepshelter|shekzeer"] = { 0, 3, -29, 1114 },
			["Kennyk|garalon"] = { 3, 0, 57, 1197 },
			["Shlouh|shekzeer"] = { 3, 0, 36, 34 },
			["Taopaípaí|auberdine"] = { 0, 3, -24, 1114 },
			["Trolly|shekzeer"] = { 3, 0, 47, 1114 },
			["Aironsxx|shekzeer"] = { 2, 0, 12, 154 },
			["Auxy|garalon"] = { 0, 2, -18, 1175 },
			["Chandlerbing|shekzeer"] = { 2, 0, 12, 154 },
			["Cherryontop|shekzeer"] = { 1, 1, 20, 1114 },
			["Coldcofeesux|shekzeer"] = { 0, 2, -24, 1114 },
			["Hopedieslast|shekzeer"] = { 2, 0, 17, 34 },
			["Tenex|norushen"] = { 0, 2, -8, 1186 },
			["Zhili|hoptallus"] = { 1, 1, -1, 1114 },
			["Вялыйхантер|flamegor"] = { 2, 0, 14, 1114 },
			["Ineo|shekzeer"] = { 0, 1, -8, 1294 },
			["Orestis|norushen"] = { 0, 1, -3, 1294 },
			["Мориконе|flamegor"] = { 0, 1, -5, 34 },
		},
	},
}

