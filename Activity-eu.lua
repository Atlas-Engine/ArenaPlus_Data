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
	built = 1795096831,
	builtText = "2026-11-19 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 154 },
			["Filmar|shekzeer"] = { 1, 0, 23, 154 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 154 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 154 },
			["Filmar|shekzeer"] = { 1, 0, 23, 154 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 154 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 154 },
			["Filmar|shekzeer"] = { 1, 0, 23, 154 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 154 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 912 },
			["Bobz|auberdine"] = { 15, 9, 73, 883 },
			["Orkidy|auberdine"] = { 15, 9, 73, 883 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 962 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 962 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 1182 },
			["Ineo|shekzeer"] = { 3, 8, -30, 1234 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 1014 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 1018 },
			["Domnox|auberdine"] = { 7, 3, -5, 888 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 1010 },
			["Sapmere|auberdine"] = { 7, 3, -4, 888 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 929 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1164 },
			["Topshotta|everlook"] = { 2, 6, 3, 949 },
			["Zok|shekzeer"] = { 2, 6, 2, 937 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1116 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 1033 },
			["Iratina|everlook"] = { 3, 4, 60, 1425 },
			["Scärlett|norushen"] = { 2, 5, -19, 1256 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1181 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 1014 },
			["Kospi|auberdine"] = { 3, 3, 24, 932 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 931 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 1034 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1061 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 1011 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 823 },
			["Orestis|norushen"] = { 0, 4, -16, 922 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 1014 },
			["Sparâdräp|auberdine"] = { 0, 4, -12, 1439 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 743 },
			["Xály|shekzeer"] = { 1, 3, 5, 768 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 970 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1234 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1414 },
			["Filmar|shekzeer"] = { 3, 0, 66, 154 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 975 },
			["Kasuny|everlook"] = { 1, 2, 1, 1234 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1363 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1363 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1414 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1414 },
			["Idontflinch|garalon"] = { 0, 2, 0, 874 },
			["Kream|shekzeer"] = { 2, 0, 30, 1372 },
			["Lácana|everlook"] = { 0, 2, -16, 1234 },
			["Taillung|shekzeer"] = { 2, 0, 4, 894 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1414 },
			["Xpu|everlook"] = { 2, 0, 4, 890 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1091 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 154 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 874 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1240 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1234 },
			["Mórdos|everlook"] = { 1, 0, 11, 1256 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1155 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1154 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 154 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1276 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 1143 },
			["Голмаш|flamegor"] = { 11, 8, 201, 1054 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 1054 },
			["Lazinka|norushen"] = { 5, 1, 50, 1054 },
			["Batix|shekzeer"] = { 3, 0, 46, 1161 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 1161 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 1160 },
		},
	},
}

