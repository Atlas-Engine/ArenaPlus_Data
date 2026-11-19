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
	built = 1795104025,
	builtText = "2026-11-19 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 273 },
			["Filmar|shekzeer"] = { 1, 0, 23, 273 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 273 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 273 },
			["Filmar|shekzeer"] = { 1, 0, 23, 273 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 273 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 1032 },
			["Bobz|auberdine"] = { 15, 9, 73, 1003 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 1082 },
			["Orkidy|auberdine"] = { 10, 6, 58, 1003 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 1082 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 1302 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1134 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 1138 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1130 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 1048 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1284 },
			["Topshotta|everlook"] = { 2, 6, 3, 1069 },
			["Zok|shekzeer"] = { 2, 6, 2, 1057 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1236 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1153 },
			["Scärlett|norushen"] = { 2, 5, -19, 1376 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1301 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1134 },
			["Kospi|auberdine"] = { 3, 3, 24, 1052 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 1051 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1154 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1181 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1131 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 943 },
			["Orestis|norushen"] = { 0, 4, -16, 1042 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1134 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 862 },
			["Xály|shekzeer"] = { 1, 3, 5, 888 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 1090 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1353 },
			["Filmar|shekzeer"] = { 3, 0, 66, 273 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 1095 },
			["Kasuny|everlook"] = { 1, 2, 1, 1353 },
			["Idontflinch|garalon"] = { 0, 2, 0, 993 },
			["Ineo|shekzeer"] = { 0, 2, -17, 1353 },
			["Lácana|everlook"] = { 0, 2, -16, 1353 },
			["Taillung|shekzeer"] = { 2, 0, 4, 1014 },
			["Xpu|everlook"] = { 2, 0, 4, 1009 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1211 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 273 },
			["Domnox|auberdine"] = { 0, 1, -11, 1008 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 993 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1360 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1353 },
			["Mórdos|everlook"] = { 1, 0, 11, 1376 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1274 },
			["Sapmere|auberdine"] = { 0, 1, -11, 1008 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1274 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 273 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1396 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 1262 },
			["Голмаш|flamegor"] = { 11, 8, 201, 1173 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 1173 },
			["Lazinka|norushen"] = { 5, 1, 50, 1173 },
			["Batix|shekzeer"] = { 3, 0, 46, 1281 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 1281 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 1280 },
		},
	},
}

