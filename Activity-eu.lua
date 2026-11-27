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
	built = 1795780823,
	builtText = "2026-11-27 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 10, 6, 71, 617 },
			["Dkv|garalon"] = { 1, 8, -82, 685 },
			["Guccidaggers|shekzeer"] = { 2, 6, 3, 587 },
			["Kennykk|garalon"] = { 1, 5, -21, 716 },
			["Ryuuman|shekzeer"] = { 3, 2, 37, 587 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 713 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 587 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 587 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 682 },
			["Seera|shekzeer"] = { 0, 1, -6, 695 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 681 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 669 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 17, 20, 64, 617 },
			["Paloun|auberdine"] = { 10, 20, -1, 817 },
			["Rodnichek|shekzeer"] = { 10, 19, -10, 947 },
			["Challedge|garalon"] = { 15, 12, 33, 767 },
			["Elimia|garalon"] = { 15, 12, 33, 770 },
			["Hitofzaza|shekzeer"] = { 17, 8, 128, 818 },
			["Skyráw|shekzeer"] = { 13, 10, 4, 1054 },
			["Rodnichekx|shekzeer"] = { 16, 6, 141, 819 },
			["Domnox|auberdine"] = { 5, 16, -41, 879 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 587 },
			["Weaverok|shekzeer"] = { 17, 4, 84, 768 },
			["Hopedieslast|shekzeer"] = { 11, 8, 32, 947 },
			["Madaurmada|shekzeer"] = { 14, 3, -1, 767 },
			["Cuckmycoocon|shekzeer"] = { 7, 9, 67, 895 },
			["Huanita|shekzeer"] = { 6, 10, -54, 755 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 759 },
			["Triplepizza|shekzeer"] = { 7, 9, 4, 896 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 587 },
			["Capcarapkin|shekzeer"] = { 7, 5, 15, 858 },
			["Kospi|auberdine"] = { 5, 7, -18, 817 },
			["Mythrugu|shekzeer"] = { 6, 6, 8, 844 },
			["Rainbowrider|shekzeer"] = { 6, 6, 15, 847 },
			["Цианидвектор|flamegor"] = { 7, 5, 18, 861 },
			["Seera|shekzeer"] = { 6, 5, 15, 695 },
			["Srtwhippa|everlook"] = { 8, 3, 49, 784 },
			["Zok|shekzeer"] = { 8, 3, 48, 785 },
			["Commitment|shekzeer"] = { 5, 5, 9, 794 },
			["Creagender|shekzeer"] = { 2, 8, 14, 1088 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 767 },
			["Dkv|garalon"] = { 1, 8, -82, 685 },
			["Sírpressheal|auberdine"] = { 6, 3, 16, 881 },
			["Tastemydmg|shekzeer"] = { 2, 7, -15, 984 },
			["Tyralíon|shekzeer"] = { 2, 7, -15, 984 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 1323 },
			["Blèsséd|shekzeer"] = { 2, 6, 34, 1050 },
			["Makkezi|shekzeer"] = { 2, 6, 13, 1051 },
			["Vrctx|shekzeer"] = { 8, 0, 48, 788 },
			["Ivonsa|garalon"] = { 3, 4, 0, 1176 },
			["Bakomba|shekzeer"] = { 2, 4, -11, 767 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 767 },
			["Kakalocko|shekzeer"] = { 3, 3, 57, 1131 },
			["Kennykk|garalon"] = { 1, 5, -21, 716 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 772 },
			["Psyçhosoçial|shekzeer"] = { 5, 1, 9, 919 },
			["Wasabî|auberdine"] = { 1, 5, -28, 772 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 713 },
			["Auxy|garalon"] = { 3, 1, 36, 826 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 587 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 587 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 727 },
			["Vegz|garalon"] = { 3, 1, 40, 826 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 767 },
			["Coldcofeesux|shekzeer"] = { 2, 1, 22, 1127 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 1307 },
			["Icantrap|shekzeer"] = { 2, 1, 22, 1172 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 767 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 767 },
			["Sapmere|auberdine"] = { 0, 3, -19, 893 },
			["Vrct|shekzeer"] = { 3, 0, 5, 767 },
			["Zhili|hoptallus"] = { 1, 2, 11, 1127 },
			["Leisure|shekzeer"] = { 0, 2, -12, 793 },
			["Plåýböt|shekzeer"] = { 0, 2, 0, 793 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 767 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 767 },
			["Сочныиочень|flamegor"] = { 0, 2, -28, 916 },
			["Эрмантраутх|flamegor"] = { 0, 2, -28, 922 },
			["Adesanya|shekzeer"] = { 1, 0, 8, 786 },
			["Adrianmandos|garalon"] = { 0, 1, -9, 845 },
			["Angrycubanx|shekzeer"] = { 1, 0, 13, 918 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 682 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 1413 },
			["Cuñadita|garalon"] = { 0, 1, -2, 767 },
			["Jakamoto|shekzeer"] = { 0, 1, -4, 934 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 747 },
			["Makû|auberdine"] = { 0, 1, -11, 1142 },
			["Qwanya|shekzeer"] = { 1, 0, 20, 913 },
			["Remedy|shekzeer"] = { 1, 0, 8, 785 },
			["Saralyssa|auberdine"] = { 0, 1, -11, 1143 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 681 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 669 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 1213 },
			["Melatonin|everlook"] = { 3, 1, 16, 1215 },
			["Missgrip|sulfuron"] = { 0, 3, 0, 1127 },
			["Голмаш|flamegor"] = { 0, 3, -9, 1127 },
			["Batix|shekzeer"] = { 1, 0, 16, 1208 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 1208 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1208 },
		},
	},
}

