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
	built = 1795111224,
	builtText = "2026-11-19 01:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Paladîon|auberdine"] = { 0, 1, 0, 33 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 103 },
			["Paladîon|auberdine"] = { 0, 1, 0, 33 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 103 },
			["Paladîon|auberdine"] = { 0, 1, 0, 33 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 33 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 103 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 393 },
			["Filmar|shekzeer"] = { 1, 0, 23, 393 },
			["Paladîon|auberdine"] = { 0, 1, 0, 33 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 393 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 1152 },
			["Bobz|auberdine"] = { 10, 6, 58, 1123 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 1202 },
			["Orkidy|auberdine"] = { 10, 6, 58, 1123 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 1202 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1254 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 1258 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1250 },
			["Skyráw|shekzeer"] = { 6, 4, -18, 103 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 1168 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1404 },
			["Topshotta|everlook"] = { 2, 6, 3, 1189 },
			["Zok|shekzeer"] = { 2, 6, 2, 1177 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1356 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1273 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1254 },
			["Kospi|auberdine"] = { 3, 3, 24, 1172 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 1171 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1274 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1301 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1251 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 1063 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1254 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 982 },
			["Xály|shekzeer"] = { 1, 3, 5, 1008 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 1209 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 1215 },
			["Orestis|norushen"] = { 0, 3, -12, 1162 },
			["Idontflinch|garalon"] = { 0, 2, 0, 1113 },
			["Semiazas|shekzeer"] = { 0, 2, 0, 1421 },
			["Taillung|shekzeer"] = { 2, 0, 4, 1134 },
			["Xpu|everlook"] = { 2, 0, 4, 1129 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1331 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 393 },
			["Domnox|auberdine"] = { 0, 1, -11, 1128 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 1113 },
			["Filmar|shekzeer"] = { 1, 0, 23, 393 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1394 },
			["Paladîon|auberdine"] = { 0, 1, 0, 33 },
			["Sapmere|auberdine"] = { 0, 1, -11, 1128 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 33 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1394 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 393 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 8, 5, 104, 1382 },
			["Голмаш|flamegor"] = { 8, 5, 136, 1293 },
			["Missgrip|sulfuron"] = { 1, 8, 23, 1293 },
			["Lazinka|norushen"] = { 5, 1, 50, 1293 },
			["Batix|shekzeer"] = { 1, 0, 16, 1401 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 1401 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1400 },
		},
	},
}

