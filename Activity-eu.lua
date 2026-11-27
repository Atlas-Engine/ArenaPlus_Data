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
	built = 1795791622,
	builtText = "2026-11-27 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 19 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 43 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 19 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 43 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 47 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 19 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 43 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 47 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kakalocko|shekzeer"] = { 1, 3, -4, 19 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 43 },
			["Coldcofeesux|shekzeer"] = { 1, 1, 2, 47 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 17, 20, 64, 797 },
			["Paloun|auberdine"] = { 10, 20, -1, 997 },
			["Challedge|garalon"] = { 15, 12, 33, 947 },
			["Elimia|garalon"] = { 15, 12, 33, 950 },
			["Hitofzaza|shekzeer"] = { 17, 8, 128, 998 },
			["Skyráw|shekzeer"] = { 13, 10, 4, 1234 },
			["Rodnichek|shekzeer"] = { 5, 17, -105, 43 },
			["Rodnichekx|shekzeer"] = { 16, 6, 141, 999 },
			["Domnox|auberdine"] = { 5, 16, -41, 1059 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 767 },
			["Weaverok|shekzeer"] = { 17, 4, 84, 948 },
			["Hopedieslast|shekzeer"] = { 11, 8, 32, 1127 },
			["Madaurmada|shekzeer"] = { 14, 3, -1, 947 },
			["Cuckmycoocon|shekzeer"] = { 7, 9, 67, 1075 },
			["Huanita|shekzeer"] = { 6, 10, -54, 935 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 939 },
			["Triplepizza|shekzeer"] = { 7, 9, 4, 1076 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 767 },
			["Capcarapkin|shekzeer"] = { 7, 5, 15, 1038 },
			["Kospi|auberdine"] = { 5, 7, -18, 997 },
			["Mythrugu|shekzeer"] = { 6, 6, 8, 1024 },
			["Rainbowrider|shekzeer"] = { 6, 6, 15, 1027 },
			["Цианидвектор|flamegor"] = { 7, 5, 18, 1041 },
			["Seera|shekzeer"] = { 6, 5, 15, 875 },
			["Srtwhippa|everlook"] = { 8, 3, 49, 964 },
			["Zok|shekzeer"] = { 8, 3, 48, 965 },
			["Commitment|shekzeer"] = { 5, 5, 9, 974 },
			["Creagender|shekzeer"] = { 2, 8, 14, 1268 },
			["Kakalocko|shekzeer"] = { 4, 6, 53, 19 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 947 },
			["Dkv|garalon"] = { 1, 8, -82, 865 },
			["Tastemydmg|shekzeer"] = { 2, 7, -15, 1164 },
			["Tyralíon|shekzeer"] = { 2, 7, -15, 1164 },
			["Blèsséd|shekzeer"] = { 2, 6, 34, 1230 },
			["Makkezi|shekzeer"] = { 2, 6, 13, 1231 },
			["Vrctx|shekzeer"] = { 8, 0, 48, 968 },
			["Ivonsa|garalon"] = { 3, 4, 0, 1356 },
			["Sírpressheal|auberdine"] = { 5, 2, 28, 1061 },
			["Bakomba|shekzeer"] = { 2, 4, -11, 947 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 947 },
			["Kennykk|garalon"] = { 1, 5, -21, 896 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 952 },
			["Psyçhosoçial|shekzeer"] = { 5, 1, 9, 1099 },
			["Wasabî|auberdine"] = { 1, 5, -28, 952 },
			["Coldcofeesux|shekzeer"] = { 3, 2, 24, 47 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 893 },
			["Auxy|garalon"] = { 3, 1, 36, 1006 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 767 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 767 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 907 },
			["Vegz|garalon"] = { 3, 1, 40, 1006 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 947 },
			["Icantrap|shekzeer"] = { 2, 1, 22, 1352 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 947 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 947 },
			["Sapmere|auberdine"] = { 0, 3, -19, 1073 },
			["Vrct|shekzeer"] = { 3, 0, 5, 947 },
			["Zhili|hoptallus"] = { 1, 2, 11, 1307 },
			["Leisure|shekzeer"] = { 0, 2, -12, 973 },
			["Plåýböt|shekzeer"] = { 0, 2, 0, 973 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 947 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 947 },
			["Сочныиочень|flamegor"] = { 0, 2, -28, 1096 },
			["Эрмантраутх|flamegor"] = { 0, 2, -28, 1102 },
			["Adesanya|shekzeer"] = { 1, 0, 8, 966 },
			["Adrianmandos|garalon"] = { 0, 1, -9, 1025 },
			["Angrycubanx|shekzeer"] = { 1, 0, 13, 1098 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 862 },
			["Cuñadita|garalon"] = { 0, 1, -2, 947 },
			["Jakamoto|shekzeer"] = { 0, 1, -4, 1114 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 927 },
			["Makû|auberdine"] = { 0, 1, -11, 1322 },
			["Qwanya|shekzeer"] = { 1, 0, 20, 1093 },
			["Remedy|shekzeer"] = { 1, 0, 8, 965 },
			["Saralyssa|auberdine"] = { 0, 1, -11, 1323 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 861 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 849 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 1393 },
			["Melatonin|everlook"] = { 3, 1, 16, 1395 },
			["Missgrip|sulfuron"] = { 0, 3, 0, 1307 },
			["Голмаш|flamegor"] = { 0, 3, -9, 1307 },
			["Batix|shekzeer"] = { 1, 0, 16, 1388 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 1388 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1388 },
		},
	},
}

