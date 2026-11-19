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
	built = 1795093227,
	builtText = "2026-11-19 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 93 },
			["Filmar|shekzeer"] = { 1, 0, 23, 93 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 93 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 93 },
			["Filmar|shekzeer"] = { 1, 0, 23, 93 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 93 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 682 },
			["Xály|shekzeer"] = { 0, 2, -2, 708 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 93 },
			["Filmar|shekzeer"] = { 1, 0, 23, 93 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 93 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 852 },
			["Bobz|auberdine"] = { 15, 9, 73, 823 },
			["Orkidy|auberdine"] = { 15, 9, 73, 823 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 902 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 902 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 1122 },
			["Ineo|shekzeer"] = { 3, 8, -30, 1173 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 954 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 958 },
			["Domnox|auberdine"] = { 7, 3, -5, 828 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 950 },
			["Sapmere|auberdine"] = { 7, 3, -4, 828 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 869 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1104 },
			["Topshotta|everlook"] = { 2, 6, 3, 889 },
			["Zok|shekzeer"] = { 2, 6, 2, 877 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 1056 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 973 },
			["Iratina|everlook"] = { 3, 4, 60, 1365 },
			["Scärlett|norushen"] = { 2, 5, -19, 1196 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1121 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 954 },
			["Kospi|auberdine"] = { 3, 3, 24, 872 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 871 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 974 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1431 },
			["Marlk|shekzeer"] = { 2, 3, 6, 1001 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 951 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 763 },
			["Orestis|norushen"] = { 0, 4, -16, 862 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 954 },
			["Sparâdräp|auberdine"] = { 0, 4, -12, 1379 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 682 },
			["Xály|shekzeer"] = { 1, 3, 5, 708 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1424 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 910 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1173 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1353 },
			["Filmar|shekzeer"] = { 3, 0, 66, 93 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 915 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1417 },
			["Kasuny|everlook"] = { 1, 2, 1, 1173 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1303 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1303 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1353 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1353 },
			["Idontflinch|garalon"] = { 0, 2, 0, 813 },
			["Kream|shekzeer"] = { 2, 0, 30, 1312 },
			["Lácana|everlook"] = { 0, 2, -16, 1173 },
			["Taillung|shekzeer"] = { 2, 0, 4, 834 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1353 },
			["Xpu|everlook"] = { 2, 0, 4, 829 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 1031 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 93 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 813 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1440 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1180 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1173 },
			["Mórdos|everlook"] = { 1, 0, 11, 1196 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1094 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1094 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 93 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1216 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 1082 },
			["Голмаш|flamegor"] = { 11, 8, 201, 993 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 993 },
			["Lazinka|norushen"] = { 5, 1, 50, 993 },
			["Batix|shekzeer"] = { 3, 0, 46, 1101 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 1101 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 1100 },
		},
	},
}

