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
	built = 1795089626,
	builtText = "2026-11-19 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 33 },
			["Filmar|shekzeer"] = { 1, 0, 23, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 33 },
			["Filmar|shekzeer"] = { 1, 0, 23, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 33 },
			["Filmar|shekzeer"] = { 1, 0, 23, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 33 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Numanuxna|shekzeer"] = { 0, 2, -8, 703 },
			["ßonnießlue|shekzeer"] = { 2, 0, 2, 622 },
			["Xály|shekzeer"] = { 0, 2, -2, 648 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 33 },
			["Filmar|shekzeer"] = { 1, 0, 23, 33 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 33 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Вялыйхант|flamegor"] = { 15, 17, -15, 792 },
			["Bobz|auberdine"] = { 17, 11, 71, 763 },
			["Orkidy|auberdine"] = { 17, 11, 71, 763 },
			["Cõmbustz|shekzeer"] = { 6, 10, -55, 842 },
			["Rainbowrïder|shekzeer"] = { 6, 10, -55, 842 },
			["Skyráw|shekzeer"] = { 10, 4, -8, 1062 },
			["Ineo|shekzeer"] = { 3, 8, -30, 1113 },
			["Srtwhippa|everlook"] = { 5, 6, 26, 894 },
			["Ayvara|shekzeer"] = { 6, 4, 17, 898 },
			["Domnox|auberdine"] = { 7, 3, -5, 768 },
			["Mythrugun|shekzeer"] = { 6, 4, 17, 890 },
			["Sapmere|auberdine"] = { 7, 3, -4, 768 },
			["Vrctx|shekzeer"] = { 10, 0, 98, 808 },
			["Kospi|auberdine"] = { 5, 4, 25, 812 },
			["Marlkx|shekzeer"] = { 4, 4, 10, 1044 },
			["Topshotta|everlook"] = { 2, 6, 3, 829 },
			["Zok|shekzeer"] = { 2, 6, 2, 817 },
			["Фазерихх|flamegor"] = { 4, 4, 5, 996 },
			["Brazqrx|shekzeer"] = { 3, 4, -15, 913 },
			["Iratina|everlook"] = { 3, 4, 60, 1305 },
			["Scärlett|norushen"] = { 2, 5, -19, 1136 },
			["Semiazas|shekzeer"] = { 2, 5, 29, 1061 },
			["Sparâdräp|auberdine"] = { 1, 6, -19, 1319 },
			["Deepfull|shekzeer"] = { 3, 3, 20, 894 },
			["Tchaktchac|auberdine"] = { 3, 3, 19, 811 },
			["Heyblinkin|shekzeer"] = { 2, 3, 21, 914 },
			["Jtenrùme|auberdine"] = { 1, 4, -17, 1371 },
			["Marlk|shekzeer"] = { 2, 3, 6, 941 },
			["Iceicebabeh|shekzeer"] = { 2, 2, 23, 891 },
			["Numanuxna|shekzeer"] = { 1, 3, -22, 703 },
			["Orestis|norushen"] = { 0, 4, -16, 802 },
			["Shlouh|shekzeer"] = { 2, 2, 13, 894 },
			["ßonnießlue|shekzeer"] = { 4, 0, 7, 622 },
			["Xály|shekzeer"] = { 1, 3, 5, 648 },
			["Zellëph|auberdine"] = { 0, 4, -19, 1364 },
			["Briefcasejoe|mirage-raceway"] = { 0, 3, -43, 850 },
			["Cavernicola|garalon"] = { 0, 3, -21, 1113 },
			["Chirdè|auberdine"] = { 0, 3, -12, 1293 },
			["Filmar|shekzeer"] = { 3, 0, 66, 33 },
			["Healdbyme|shekzeer"] = { 0, 3, -15, 855 },
			["Jtéxploze|auberdine"] = { 0, 3, -20, 1357 },
			["Kasuny|everlook"] = { 1, 2, 1, 1113 },
			["Paloun|auberdine"] = { 2, 1, -1, 1389 },
			["Aironsxx|shekzeer"] = { 0, 2, -21, 1243 },
			["Chandlerbing|shekzeer"] = { 0, 2, -21, 1243 },
			["Durianlover|shekzeer"] = { 2, 0, 8, 1293 },
			["Hopedieslast|shekzeer"] = { 2, 0, 11, 1293 },
			["Idontflinch|garalon"] = { 0, 2, 0, 753 },
			["Kream|shekzeer"] = { 2, 0, 30, 1252 },
			["Lácana|everlook"] = { 0, 2, -16, 1113 },
			["Taillung|shekzeer"] = { 2, 0, 4, 774 },
			["Trolly|shekzeer"] = { 2, 0, 35, 1293 },
			["Xpu|everlook"] = { 2, 0, 4, 769 },
			["Zniffa|mirage-raceway"] = { 1, 1, 13, 971 },
			["Dokiúr|mirage-raceway"] = { 0, 1, -17, 33 },
			["Døudøu|shekzeer"] = { 0, 1, -10, 753 },
			["Jäckynkô|hoptallus"] = { 1, 0, 3, 1380 },
			["Juicyverÿ|shekzeer"] = { 1, 0, 4, 1120 },
			["Madaurmada|shekzeer"] = { 1, 0, 1, 1113 },
			["Mórdos|everlook"] = { 1, 0, 11, 1136 },
			["Nossy|hoptallus"] = { 0, 1, -4, 1034 },
			["Refresherr|hoptallus"] = { 1, 0, 3, 1381 },
			["Zonya|hoptallus"] = { 0, 1, -5, 1034 },
			["Вялыйпаладин|flamegor"] = { 1, 0, 18, 33 },
			["Эрмантраутх|flamegor"] = { 1, 0, 4, 1156 },
		},
		[2] = {
			["Tropycal|mirage-raceway"] = { 11, 8, 162, 1022 },
			["Голмаш|flamegor"] = { 11, 8, 201, 933 },
			["Missgrip|sulfuron"] = { 5, 11, 330, 933 },
			["Lazinka|norushen"] = { 5, 1, 50, 933 },
			["Batix|shekzeer"] = { 3, 0, 46, 1041 },
			["Therealfq|shekzeer"] = { 3, 0, 5, 1041 },
			["Weaverok|shekzeer"] = { 3, 0, 13, 1040 },
		},
	},
}

