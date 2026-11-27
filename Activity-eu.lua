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
	built = 1795795228,
	builtText = "2026-11-27 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tastemydmg|shekzeer"] = { 1, 2, 9, 15 },
			["Tyralíon|shekzeer"] = { 1, 2, 9, 15 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 7 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 79 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 103 },
			["Tastemydmg|shekzeer"] = { 1, 2, 9, 15 },
			["Tyralíon|shekzeer"] = { 1, 2, 9, 15 },
			["Anadosova|shekzeer"] = { 2, 0, 21, 72 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 107 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 7 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 79 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 103 },
			["Tastemydmg|shekzeer"] = { 1, 2, 9, 15 },
			["Tyralíon|shekzeer"] = { 1, 2, 9, 15 },
			["Anadosova|shekzeer"] = { 2, 0, 21, 72 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 107 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 7 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 79 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 103 },
			["Tastemydmg|shekzeer"] = { 1, 2, 9, 15 },
			["Tyralíon|shekzeer"] = { 1, 2, 9, 15 },
			["Anadosova|shekzeer"] = { 2, 0, 21, 72 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 107 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 7 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 17, 20, 64, 857 },
			["Paloun|auberdine"] = { 10, 20, -1, 1057 },
			["Challedge|garalon"] = { 15, 12, 33, 1007 },
			["Elimia|garalon"] = { 15, 12, 33, 1010 },
			["Hitofzaza|shekzeer"] = { 17, 8, 128, 1058 },
			["Rodnichek|shekzeer"] = { 5, 17, -105, 103 },
			["Rodnichekx|shekzeer"] = { 16, 6, 141, 1059 },
			["Skyráw|shekzeer"] = { 13, 9, 18, 1294 },
			["Domnox|auberdine"] = { 5, 16, -41, 1119 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 827 },
			["Weaverok|shekzeer"] = { 17, 4, 84, 1009 },
			["Hopedieslast|shekzeer"] = { 11, 8, 32, 1187 },
			["Madaurmada|shekzeer"] = { 14, 3, -1, 1007 },
			["Cuckmycoocon|shekzeer"] = { 7, 9, 67, 1135 },
			["Huanita|shekzeer"] = { 6, 10, -54, 995 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 999 },
			["Triplepizza|shekzeer"] = { 7, 9, 4, 1136 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 827 },
			["Capcarapkin|shekzeer"] = { 7, 5, 15, 1098 },
			["Kospi|auberdine"] = { 5, 7, -18, 1057 },
			["Mythrugu|shekzeer"] = { 6, 6, 8, 1084 },
			["Rainbowrider|shekzeer"] = { 6, 6, 15, 1087 },
			["Tastemydmg|shekzeer"] = { 3, 9, -6, 15 },
			["Tyralíon|shekzeer"] = { 3, 9, -6, 15 },
			["Цианидвектор|flamegor"] = { 7, 5, 18, 1101 },
			["Seera|shekzeer"] = { 6, 5, 15, 935 },
			["Srtwhippa|everlook"] = { 8, 3, 49, 1024 },
			["Zok|shekzeer"] = { 8, 3, 48, 1025 },
			["Commitment|shekzeer"] = { 5, 5, 9, 1034 },
			["Creagender|shekzeer"] = { 2, 8, 14, 1328 },
			["Kakalocko|shekzeer"] = { 4, 6, 53, 79 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 1007 },
			["Dkv|garalon"] = { 1, 8, -82, 925 },
			["Blèsséd|shekzeer"] = { 2, 6, 34, 1290 },
			["Makkezi|shekzeer"] = { 2, 6, 13, 1292 },
			["Vrctx|shekzeer"] = { 8, 0, 48, 1029 },
			["Ivonsa|garalon"] = { 3, 4, 0, 1416 },
			["Sírpressheal|auberdine"] = { 5, 2, 28, 1121 },
			["Bakomba|shekzeer"] = { 2, 4, -11, 1007 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 1007 },
			["Kennykk|garalon"] = { 1, 5, -21, 956 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 1012 },
			["Psyçhosoçial|shekzeer"] = { 5, 1, 9, 1159 },
			["Wasabî|auberdine"] = { 1, 5, -28, 1012 },
			["Coldcofeesux|shekzeer"] = { 3, 2, 24, 107 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 953 },
			["Auxy|garalon"] = { 3, 1, 36, 1066 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 827 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 827 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 967 },
			["Vegz|garalon"] = { 3, 1, 40, 1066 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 1007 },
			["Icantrap|shekzeer"] = { 2, 1, 22, 1412 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 1007 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 1007 },
			["Sapmere|auberdine"] = { 0, 3, -19, 1133 },
			["Vrct|shekzeer"] = { 3, 0, 5, 1007 },
			["Zhili|hoptallus"] = { 1, 2, 11, 1367 },
			["Anadosova|shekzeer"] = { 2, 0, 21, 72 },
			["Leisure|shekzeer"] = { 0, 2, -12, 1033 },
			["Plåýböt|shekzeer"] = { 0, 2, 0, 1033 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 1007 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 1007 },
			["Сочныиочень|flamegor"] = { 0, 2, -28, 1156 },
			["Эрмантраутх|flamegor"] = { 0, 2, -28, 1162 },
			["Adesanya|shekzeer"] = { 1, 0, 8, 1026 },
			["Adrianmandos|garalon"] = { 0, 1, -9, 1085 },
			["Angrycubanx|shekzeer"] = { 1, 0, 13, 1158 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 922 },
			["Cuñadita|garalon"] = { 0, 1, -2, 1007 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 7 },
			["Jakamoto|shekzeer"] = { 0, 1, -4, 1174 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 987 },
			["Makû|auberdine"] = { 0, 1, -11, 1382 },
			["Qwanya|shekzeer"] = { 1, 0, 20, 1153 },
			["Remedy|shekzeer"] = { 1, 0, 8, 1025 },
			["Saralyssa|auberdine"] = { 0, 1, -11, 1383 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 921 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 909 },
		},
		[2] = {
			["Missgrip|sulfuron"] = { 0, 3, 0, 1367 },
			["Голмаш|flamegor"] = { 0, 3, -9, 1367 },
		},
	},
}

