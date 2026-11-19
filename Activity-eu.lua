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
	built = 1795100422,
	builtText = "2026-11-19 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 213 },
			["Filmar|shekzeer"] = { 1, 0, 23, 213 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 213 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 213 },
			["Filmar|shekzeer"] = { 1, 0, 23, 213 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 213 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 972 },
			["Bobz|auberdine"] = { 15, 9, 73, 943 },
			["Orkidy|auberdine"] = { 15, 9, 73, 943 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 1022 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 1022 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 1242 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1074 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 1078 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1070 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 988 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1224 },
			["Topshotta|everlook"] = { 2, 6, 3, 1009 },
			["Zok|shekzeer"] = { 2, 6, 2, 997 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1176 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1093 },
			["Scärlett|norushen"] = { 2, 5, -19, 1316 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1241 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1074 },
			["Kospi|auberdine"] = { 3, 3, 24, 991 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 991 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1094 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1121 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1071 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 883 },
			["Orestis|norushen"] = { 0, 4, -16, 982 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1074 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 802 },
			["Xály|shekzeer"] = { 1, 3, 5, 828 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 1029 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1293 },
			["Filmar|shekzeer"] = { 3, 0, 66, 213 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 1035 },
			["Kasuny|everlook"] = { 1, 2, 1, 1293 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1423 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1423 },
			["Idontflinch|garalon"] = { 0, 2, 0, 933 },
			["Ineo|shekzeer"] = { 0, 2, -17, 1293 },
			["Kream|shekzeer"] = { 2, 0, 30, 1432 },
			["Lácana|everlook"] = { 0, 2, -16, 1293 },
			["Taillung|shekzeer"] = { 2, 0, 4, 954 },
			["Xpu|everlook"] = { 2, 0, 4, 949 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1151 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 213 },
			["Domnox|auberdine"] = { 0, 1, -11, 948 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 933 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1300 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1293 },
			["Mórdos|everlook"] = { 1, 0, 11, 1315 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1214 },
			["Sapmere|auberdine"] = { 0, 1, -11, 948 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1214 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 213 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1336 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 1202 },
			["Голмаш|flamegor"] = { 11, 8, 201, 1113 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 1113 },
			["Lazinka|norushen"] = { 5, 1, 50, 1113 },
			["Batix|shekzeer"] = { 3, 0, 46, 1221 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 1221 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 1220 },
		},
	},
}

