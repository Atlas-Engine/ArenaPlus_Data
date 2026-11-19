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
	built = 1795118425,
	builtText = "2026-11-19 03:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xpm|everlook"] = { 6, 3, -12, 33 },
			["Mopster|norushen"] = { 0, 4, -40, 18 },
			["Paladîon|auberdine"] = { 1, 3, 22, 56 },
			["Marlkx|shekzeer"] = { 1, 2, -8, 32 },
			["Cavernicola|garalon"] = { 0, 1, -6, 29 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Xpm|everlook"] = { 6, 3, -12, 33 },
			["Paladîon|auberdine"] = { 1, 4, 22, 56 },
			["Mopster|norushen"] = { 0, 4, -40, 18 },
			["Marlkx|shekzeer"] = { 1, 2, -8, 32 },
			["Cavernicola|garalon"] = { 0, 1, -6, 29 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 153 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Xpm|everlook"] = { 6, 3, -12, 33 },
			["Paladîon|auberdine"] = { 1, 4, 22, 56 },
			["Mopster|norushen"] = { 0, 4, -40, 18 },
			["Marlkx|shekzeer"] = { 1, 2, -8, 32 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 223 },
			["Cavernicola|garalon"] = { 0, 1, -6, 29 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 153 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xpm|everlook"] = { 6, 3, -12, 33 },
			["Paladîon|auberdine"] = { 1, 4, 22, 56 },
			["Mopster|norushen"] = { 0, 4, -40, 18 },
			["Marlkx|shekzeer"] = { 1, 2, -8, 32 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 223 },
			["Cavernicola|garalon"] = { 0, 1, -6, 29 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 513 },
			["Filmar|shekzeer"] = { 1, 0, 23, 513 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 153 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 513 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 1272 },
			["Bobz|auberdine"] = { 10, 6, 58, 1243 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 1322 },
			["Orkidy|auberdine"] = { 10, 6, 58, 1243 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 1322 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1374 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1370 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 1288 },
			["Ayvara|shekzeer"] = { 6, 3, 32, 1378 },
			["Xpm|everlook"] = { 6, 3, -12, 33 },
			["Topshotta|everlook"] = { 2, 6, 3, 1309 },
			["Zok|shekzeer"] = { 2, 6, 2, 1297 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1393 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1374 },
			["Kospi|auberdine"] = { 3, 3, 24, 1292 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 1291 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1394 },
			["Paladîon|auberdine"] = { 1, 4, 22, 56 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1371 },
			["Mopster|norushen"] = { 0, 4, -40, 18 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 1183 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1374 },
			["Xály|shekzeer"] = { 1, 3, 5, 1128 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 1330 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 1335 },
			["Marlkx|shekzeer"] = { 1, 2, -8, 32 },
			["Orestis|norushen"] = { 0, 3, -12, 1282 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 223 },
			["Idontflinch|garalon"] = { 0, 2, 0, 1233 },
			["Marlk|shekzeer"] = { 1, 1, -1, 1421 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 1102 },
			["Taillung|shekzeer"] = { 2, 0, 4, 1254 },
			["Xpu|everlook"] = { 2, 0, 4, 1249 },
			["Cavernicola|garalon"] = { 0, 1, -6, 29 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 513 },
			["Domnox|auberdine"] = { 0, 1, -11, 1248 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 1233 },
			["Filmar|shekzeer"] = { 1, 0, 23, 513 },
			["Sapmere|auberdine"] = { 0, 1, -11, 1248 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 153 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 513 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 8, 5, 136, 1413 },
			["Missgrip|sulfuron"] = { 1, 8, 23, 1413 },
			["Lazinka|norushen"] = { 5, 1, 50, 1413 },
		},
	},
}

