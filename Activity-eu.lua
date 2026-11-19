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
	built = 1795107646,
	builtText = "2026-11-19 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 43 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 43 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 334 },
			["Filmar|shekzeer"] = { 1, 0, 23, 334 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 334 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skyráw|shekzeer"] = { 2, 1, 4, 43 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 334 },
			["Filmar|shekzeer"] = { 1, 0, 23, 334 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 334 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bobz|auberdine"] = { 15, 9, 73, 1063 },
			["Вялыйхант|flamegor"] = { 11, 12, 9, 1093 },
			["Skyráw|shekzeer"] = { 12, 5, -4, 43 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 1142 },
			["Orkidy|auberdine"] = { 10, 6, 58, 1063 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 1142 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1194 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 1198 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1191 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 1109 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1344 },
			["Topshotta|everlook"] = { 2, 6, 3, 1129 },
			["Zok|shekzeer"] = { 2, 6, 2, 1117 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1296 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1213 },
			["Scärlett|norushen"] = { 2, 5, -19, 1436 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1361 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1194 },
			["Kospi|auberdine"] = { 3, 3, 24, 1112 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 1112 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1214 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1241 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1191 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 1003 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1194 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 923 },
			["Xály|shekzeer"] = { 1, 3, 5, 948 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 1150 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1414 },
			["Filmar|shekzeer"] = { 3, 0, 66, 334 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 1155 },
			["Kasuny|everlook"] = { 1, 2, 1, 1414 },
			["Orestis|norushen"] = { 0, 3, -12, 1103 },
			["Idontflinch|garalon"] = { 0, 2, 0, 1054 },
			["Ineo|shekzeer"] = { 0, 2, -17, 1414 },
			["Lácana|everlook"] = { 0, 2, -16, 1414 },
			["Taillung|shekzeer"] = { 2, 0, 4, 1074 },
			["Xpu|everlook"] = { 2, 0, 4, 1070 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1271 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 334 },
			["Domnox|auberdine"] = { 0, 1, -11, 1068 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 1054 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1420 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1414 },
			["Mórdos|everlook"] = { 1, 0, 11, 1436 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1335 },
			["Sapmere|auberdine"] = { 0, 1, -11, 1068 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1334 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 334 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 1323 },
			["Голмаш|flamegor"] = { 11, 8, 201, 1234 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 1234 },
			["Lazinka|norushen"] = { 5, 1, 50, 1234 },
			["Batix|shekzeer"] = { 3, 0, 46, 1341 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 1341 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 1340 },
		},
	},
}

