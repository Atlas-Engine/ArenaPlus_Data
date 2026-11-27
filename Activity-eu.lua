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
	built = 1795784428,
	builtText = "2026-11-27 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 10, 6, 71, 677 },
			["Guccidaggers|shekzeer"] = { 2, 6, 3, 647 },
			["Ryuuman|shekzeer"] = { 3, 2, 37, 647 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 647 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 647 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 17, 20, 64, 677 },
			["Paloun|auberdine"] = { 10, 20, -1, 877 },
			["Rodnichek|shekzeer"] = { 10, 19, -10, 1007 },
			["Challedge|garalon"] = { 15, 12, 33, 827 },
			["Elimia|garalon"] = { 15, 12, 33, 830 },
			["Hitofzaza|shekzeer"] = { 17, 8, 128, 878 },
			["Skyráw|shekzeer"] = { 13, 10, 4, 1114 },
			["Rodnichekx|shekzeer"] = { 16, 6, 141, 879 },
			["Domnox|auberdine"] = { 5, 16, -41, 939 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 647 },
			["Weaverok|shekzeer"] = { 17, 4, 84, 829 },
			["Hopedieslast|shekzeer"] = { 11, 8, 32, 1007 },
			["Madaurmada|shekzeer"] = { 14, 3, -1, 827 },
			["Cuckmycoocon|shekzeer"] = { 7, 9, 67, 955 },
			["Huanita|shekzeer"] = { 6, 10, -54, 815 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 819 },
			["Triplepizza|shekzeer"] = { 7, 9, 4, 956 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 647 },
			["Capcarapkin|shekzeer"] = { 7, 5, 15, 918 },
			["Kospi|auberdine"] = { 5, 7, -18, 877 },
			["Mythrugu|shekzeer"] = { 6, 6, 8, 904 },
			["Rainbowrider|shekzeer"] = { 6, 6, 15, 907 },
			["Цианидвектор|flamegor"] = { 7, 5, 18, 921 },
			["Seera|shekzeer"] = { 6, 5, 15, 755 },
			["Srtwhippa|everlook"] = { 8, 3, 49, 844 },
			["Zok|shekzeer"] = { 8, 3, 48, 845 },
			["Commitment|shekzeer"] = { 5, 5, 9, 854 },
			["Creagender|shekzeer"] = { 2, 8, 14, 1148 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 827 },
			["Dkv|garalon"] = { 1, 8, -82, 745 },
			["Sírpressheal|auberdine"] = { 6, 3, 16, 941 },
			["Tastemydmg|shekzeer"] = { 2, 7, -15, 1044 },
			["Tyralíon|shekzeer"] = { 2, 7, -15, 1044 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 1383 },
			["Blèsséd|shekzeer"] = { 2, 6, 34, 1110 },
			["Makkezi|shekzeer"] = { 2, 6, 13, 1112 },
			["Vrctx|shekzeer"] = { 8, 0, 48, 849 },
			["Ivonsa|garalon"] = { 3, 4, 0, 1236 },
			["Bakomba|shekzeer"] = { 2, 4, -11, 827 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 827 },
			["Kakalocko|shekzeer"] = { 3, 3, 57, 1191 },
			["Kennykk|garalon"] = { 1, 5, -21, 776 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 832 },
			["Psyçhosoçial|shekzeer"] = { 5, 1, 9, 979 },
			["Wasabî|auberdine"] = { 1, 5, -28, 832 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 773 },
			["Auxy|garalon"] = { 3, 1, 36, 886 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 647 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 647 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 787 },
			["Vegz|garalon"] = { 3, 1, 40, 886 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 827 },
			["Coldcofeesux|shekzeer"] = { 2, 1, 22, 1187 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 1367 },
			["Icantrap|shekzeer"] = { 2, 1, 22, 1232 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 827 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 827 },
			["Sapmere|auberdine"] = { 0, 3, -19, 953 },
			["Vrct|shekzeer"] = { 3, 0, 5, 827 },
			["Zhili|hoptallus"] = { 1, 2, 11, 1187 },
			["Leisure|shekzeer"] = { 0, 2, -12, 853 },
			["Plåýböt|shekzeer"] = { 0, 2, 0, 853 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 827 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 827 },
			["Сочныиочень|flamegor"] = { 0, 2, -28, 976 },
			["Эрмантраутх|flamegor"] = { 0, 2, -28, 982 },
			["Adesanya|shekzeer"] = { 1, 0, 8, 846 },
			["Adrianmandos|garalon"] = { 0, 1, -9, 905 },
			["Angrycubanx|shekzeer"] = { 1, 0, 13, 978 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 742 },
			["Cuñadita|garalon"] = { 0, 1, -2, 827 },
			["Jakamoto|shekzeer"] = { 0, 1, -4, 994 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 807 },
			["Makû|auberdine"] = { 0, 1, -11, 1202 },
			["Qwanya|shekzeer"] = { 1, 0, 20, 973 },
			["Remedy|shekzeer"] = { 1, 0, 8, 845 },
			["Saralyssa|auberdine"] = { 0, 1, -11, 1203 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 741 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 729 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 1273 },
			["Melatonin|everlook"] = { 3, 1, 16, 1275 },
			["Missgrip|sulfuron"] = { 0, 3, 0, 1187 },
			["Голмаш|flamegor"] = { 0, 3, -9, 1187 },
			["Batix|shekzeer"] = { 1, 0, 16, 1268 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 1268 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1268 },
		},
	},
}

