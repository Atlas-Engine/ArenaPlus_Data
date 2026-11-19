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
	built = 1795114829,
	builtText = "2026-11-19 02:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 163 },
			["Paladîon|auberdine"] = { 0, 1, 0, 93 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 163 },
			["Paladîon|auberdine"] = { 0, 1, 0, 93 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 163 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 453 },
			["Filmar|shekzeer"] = { 1, 0, 23, 453 },
			["Paladîon|auberdine"] = { 0, 1, 0, 93 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 93 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 453 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 11, 12, 9, 1212 },
			["Bobz|auberdine"] = { 10, 6, 58, 1183 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 1262 },
			["Orkidy|auberdine"] = { 10, 6, 58, 1183 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 1262 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1314 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 1318 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1310 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 1229 },
			["Topshotta|everlook"] = { 2, 6, 3, 1249 },
			["Zok|shekzeer"] = { 2, 6, 2, 1237 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1416 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1333 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1314 },
			["Kospi|auberdine"] = { 3, 3, 24, 1232 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 1231 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1334 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1361 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1311 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 1123 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1314 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 1043 },
			["Xály|shekzeer"] = { 1, 3, 5, 1068 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 1270 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 1275 },
			["Orestis|norushen"] = { 0, 3, -12, 1222 },
			["Skyráw|shekzeer"] = { 2, 1, 4, 163 },
			["Idontflinch|garalon"] = { 0, 2, 0, 1173 },
			["Taillung|shekzeer"] = { 2, 0, 4, 1194 },
			["Xpu|everlook"] = { 2, 0, 4, 1189 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1391 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 453 },
			["Domnox|auberdine"] = { 0, 1, -11, 1188 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 1173 },
			["Filmar|shekzeer"] = { 1, 0, 23, 453 },
			["Paladîon|auberdine"] = { 0, 1, 0, 93 },
			["Sapmere|auberdine"] = { 0, 1, -11, 1188 },
			["Xddðð|shekzeer"] = { 1, 0, 2, 93 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 453 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 8, 5, 136, 1353 },
			["Missgrip|sulfuron"] = { 1, 8, 23, 1353 },
			["Lazinka|norushen"] = { 5, 1, 50, 1353 },
		},
	},
}

