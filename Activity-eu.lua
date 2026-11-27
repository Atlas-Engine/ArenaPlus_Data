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
	built = 1795788036,
	builtText = "2026-11-27 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Guccidaggers|shekzeer"] = { 2, 6, 3, 708 },
			["Ryuuman|shekzeer"] = { 3, 2, 37, 708 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 708 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 17, 20, 64, 737 },
			["Paloun|auberdine"] = { 10, 20, -1, 937 },
			["Rodnichek|shekzeer"] = { 10, 19, -10, 1068 },
			["Challedge|garalon"] = { 15, 12, 33, 888 },
			["Elimia|garalon"] = { 15, 12, 33, 890 },
			["Hitofzaza|shekzeer"] = { 17, 8, 128, 938 },
			["Skyráw|shekzeer"] = { 13, 10, 4, 1174 },
			["Rodnichekx|shekzeer"] = { 16, 6, 141, 939 },
			["Domnox|auberdine"] = { 5, 16, -41, 999 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 708 },
			["Weaverok|shekzeer"] = { 17, 4, 84, 889 },
			["Hopedieslast|shekzeer"] = { 11, 8, 32, 1068 },
			["Madaurmada|shekzeer"] = { 14, 3, -1, 888 },
			["Cuckmycoocon|shekzeer"] = { 7, 9, 67, 1015 },
			["Huanita|shekzeer"] = { 6, 10, -54, 875 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 879 },
			["Triplepizza|shekzeer"] = { 7, 9, 4, 1016 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 708 },
			["Capcarapkin|shekzeer"] = { 7, 5, 15, 979 },
			["Kospi|auberdine"] = { 5, 7, -18, 937 },
			["Mythrugu|shekzeer"] = { 6, 6, 8, 964 },
			["Rainbowrider|shekzeer"] = { 6, 6, 15, 967 },
			["Цианидвектор|flamegor"] = { 7, 5, 18, 981 },
			["Seera|shekzeer"] = { 6, 5, 15, 815 },
			["Srtwhippa|everlook"] = { 8, 3, 49, 905 },
			["Zok|shekzeer"] = { 8, 3, 48, 905 },
			["Commitment|shekzeer"] = { 5, 5, 9, 914 },
			["Creagender|shekzeer"] = { 2, 8, 14, 1208 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 888 },
			["Dkv|garalon"] = { 1, 8, -82, 805 },
			["Sírpressheal|auberdine"] = { 6, 3, 16, 1001 },
			["Tastemydmg|shekzeer"] = { 2, 7, -15, 1104 },
			["Tyralíon|shekzeer"] = { 2, 7, -15, 1104 },
			["Blèsséd|shekzeer"] = { 2, 6, 34, 1170 },
			["Makkezi|shekzeer"] = { 2, 6, 13, 1172 },
			["Vrctx|shekzeer"] = { 8, 0, 48, 909 },
			["Ivonsa|garalon"] = { 3, 4, 0, 1296 },
			["Bakomba|shekzeer"] = { 2, 4, -11, 888 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 888 },
			["Kakalocko|shekzeer"] = { 3, 3, 57, 1251 },
			["Kennykk|garalon"] = { 1, 5, -21, 837 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 892 },
			["Psyçhosoçial|shekzeer"] = { 5, 1, 9, 1039 },
			["Wasabî|auberdine"] = { 1, 5, -28, 892 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 834 },
			["Auxy|garalon"] = { 3, 1, 36, 946 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 708 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 708 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 847 },
			["Vegz|garalon"] = { 3, 1, 40, 946 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 888 },
			["Coldcofeesux|shekzeer"] = { 2, 1, 22, 1248 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 1428 },
			["Icantrap|shekzeer"] = { 2, 1, 22, 1292 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 888 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 888 },
			["Sapmere|auberdine"] = { 0, 3, -19, 1013 },
			["Vrct|shekzeer"] = { 3, 0, 5, 888 },
			["Zhili|hoptallus"] = { 1, 2, 11, 1248 },
			["Leisure|shekzeer"] = { 0, 2, -12, 913 },
			["Plåýböt|shekzeer"] = { 0, 2, 0, 913 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 888 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 888 },
			["Сочныиочень|flamegor"] = { 0, 2, -28, 1037 },
			["Эрмантраутх|flamegor"] = { 0, 2, -28, 1042 },
			["Adesanya|shekzeer"] = { 1, 0, 8, 907 },
			["Adrianmandos|garalon"] = { 0, 1, -9, 965 },
			["Angrycubanx|shekzeer"] = { 1, 0, 13, 1039 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 802 },
			["Cuñadita|garalon"] = { 0, 1, -2, 888 },
			["Jakamoto|shekzeer"] = { 0, 1, -4, 1054 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 867 },
			["Makû|auberdine"] = { 0, 1, -11, 1262 },
			["Qwanya|shekzeer"] = { 1, 0, 20, 1033 },
			["Remedy|shekzeer"] = { 1, 0, 8, 905 },
			["Saralyssa|auberdine"] = { 0, 1, -11, 1263 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 802 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 790 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 1333 },
			["Melatonin|everlook"] = { 3, 1, 16, 1336 },
			["Missgrip|sulfuron"] = { 0, 3, 0, 1248 },
			["Голмаш|flamegor"] = { 0, 3, -9, 1248 },
			["Batix|shekzeer"] = { 1, 0, 16, 1328 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 1328 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1328 },
		},
	},
}

