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
	built = 1795777224,
	builtText = "2026-11-27 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 16, 17, 68, 557 },
			["Challedge|garalon"] = { 14, 12, 21, 707 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 527 },
			["Elimia|garalon"] = { 10, 10, -7, 710 },
			["Huanita|shekzeer"] = { 6, 10, -54, 695 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 699 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 527 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 707 },
			["Weaverok|shekzeer"] = { 7, 3, 46, 708 },
			["Dkv|garalon"] = { 1, 8, -82, 625 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 707 },
			["Kennykk|garalon"] = { 1, 5, -21, 656 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 712 },
			["Wasabî|auberdine"] = { 1, 5, -28, 712 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 653 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 527 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 527 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 667 },
			["Bakomba|shekzeer"] = { 0, 3, -30, 707 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 707 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 707 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 707 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 707 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 707 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 622 },
			["Cuñadita|garalon"] = { 0, 1, -2, 707 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 687 },
			["Madaurmada|shekzeer"] = { 0, 1, -4, 707 },
			["Seera|shekzeer"] = { 0, 1, -6, 635 },
			["Vrct|shekzeer"] = { 1, 0, 3, 707 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 621 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 609 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Xály|shekzeer"] = { 17, 20, 64, 557 },
			["Paloun|auberdine"] = { 10, 20, -1, 757 },
			["Rodnichek|shekzeer"] = { 10, 19, -10, 887 },
			["Challedge|garalon"] = { 15, 12, 33, 707 },
			["Elimia|garalon"] = { 15, 12, 33, 710 },
			["Hitofzaza|shekzeer"] = { 17, 8, 128, 758 },
			["Skyráw|shekzeer"] = { 13, 10, 4, 994 },
			["Rodnichekx|shekzeer"] = { 16, 6, 141, 759 },
			["Domnox|auberdine"] = { 5, 16, -41, 819 },
			["Ryuuman|shekzeer"] = { 11, 10, 177, 527 },
			["Weaverok|shekzeer"] = { 17, 4, 84, 708 },
			["Hopedieslast|shekzeer"] = { 11, 8, 32, 887 },
			["Madaurmada|shekzeer"] = { 14, 3, -1, 707 },
			["Cuckmycoocon|shekzeer"] = { 7, 9, 67, 835 },
			["Huanita|shekzeer"] = { 6, 10, -54, 695 },
			["Tackiella|shekzeer"] = { 6, 10, -49, 699 },
			["Triplepizza|shekzeer"] = { 7, 9, 4, 836 },
			["Guccidaggers|shekzeer"] = { 2, 11, -39, 527 },
			["Capcarapkin|shekzeer"] = { 7, 5, 15, 798 },
			["Kospi|auberdine"] = { 5, 7, -18, 757 },
			["Mythrugu|shekzeer"] = { 6, 6, 8, 784 },
			["Rainbowrider|shekzeer"] = { 6, 6, 15, 787 },
			["Цианидвектор|flamegor"] = { 7, 5, 18, 801 },
			["Seera|shekzeer"] = { 6, 5, 15, 635 },
			["Srtwhippa|everlook"] = { 8, 3, 49, 724 },
			["Zok|shekzeer"] = { 8, 3, 48, 725 },
			["Commitment|shekzeer"] = { 5, 5, 9, 734 },
			["Creagender|shekzeer"] = { 2, 8, 14, 1028 },
			["Kalreth|shekzeer"] = { 5, 5, -1, 707 },
			["Dkv|garalon"] = { 1, 8, -82, 625 },
			["Sírpressheal|auberdine"] = { 6, 3, 16, 821 },
			["Tastemydmg|shekzeer"] = { 2, 7, -15, 924 },
			["Tyralíon|shekzeer"] = { 2, 7, -15, 924 },
			["Bibeed|shekzeer"] = { 5, 3, 19, 1263 },
			["Blèsséd|shekzeer"] = { 2, 6, 34, 990 },
			["Makkezi|shekzeer"] = { 2, 6, 13, 991 },
			["Vrctx|shekzeer"] = { 8, 0, 48, 728 },
			["Ivonsa|garalon"] = { 3, 4, 0, 1116 },
			["Bakomba|shekzeer"] = { 2, 4, -11, 707 },
			["Durianlover|shekzeer"] = { 2, 4, -1, 707 },
			["Kakalocko|shekzeer"] = { 3, 3, 57, 1071 },
			["Kennykk|garalon"] = { 1, 5, -21, 656 },
			["Mwaniel|auberdine"] = { 1, 5, -24, 712 },
			["Psyçhosoçial|shekzeer"] = { 5, 1, 9, 859 },
			["Wasabî|auberdine"] = { 1, 5, -28, 712 },
			["Srtdrippa|everlook"] = { 1, 4, -8, 653 },
			["Auxy|garalon"] = { 3, 1, 36, 766 },
			["Diskotrisko|norushen"] = { 3, 1, 41, 527 },
			["Kennyk|shekzeer"] = { 3, 1, 35, 527 },
			["Marlkx|shekzeer"] = { 1, 3, -3, 667 },
			["Vegz|garalon"] = { 3, 1, 40, 766 },
			["Cherryontop|shekzeer"] = { 0, 3, 0, 707 },
			["Coldcofeesux|shekzeer"] = { 2, 1, 22, 1067 },
			["Crazyskill|shekzeer"] = { 1, 2, -24, 1247 },
			["Icantrap|shekzeer"] = { 2, 1, 22, 1112 },
			["Ngmi|shekzeer"] = { 0, 3, -31, 707 },
			["Plåýßøt|shekzeer"] = { 0, 3, -31, 707 },
			["Sapmere|auberdine"] = { 0, 3, -19, 833 },
			["Vrct|shekzeer"] = { 3, 0, 5, 707 },
			["Zhili|hoptallus"] = { 1, 2, 11, 1067 },
			["Leisure|shekzeer"] = { 0, 2, -12, 733 },
			["Plåýböt|shekzeer"] = { 0, 2, 0, 733 },
			["Ryuujin|shekzeer"] = { 2, 0, 29, 707 },
			["Theånswer|shekzeer"] = { 2, 0, 25, 707 },
			["Сочныиочень|flamegor"] = { 0, 2, -28, 856 },
			["Эрмантраутх|flamegor"] = { 0, 2, -28, 862 },
			["Abdiwallahi|shekzeer"] = { 0, 1, 0, 1427 },
			["Adesanya|shekzeer"] = { 1, 0, 8, 726 },
			["Adrianmandos|garalon"] = { 0, 1, -9, 785 },
			["Angrycubanx|shekzeer"] = { 1, 0, 13, 858 },
			["Biggestegoeu|shekzeer"] = { 0, 1, -16, 622 },
			["Crazyskiill|shekzeer"] = { 0, 1, -5, 1353 },
			["Cuñadita|garalon"] = { 0, 1, -2, 707 },
			["Jakamoto|shekzeer"] = { 0, 1, -4, 874 },
			["Jeffkaplan|shekzeer"] = { 1, 0, 22, 687 },
			["Makû|auberdine"] = { 0, 1, -11, 1082 },
			["Qwanya|shekzeer"] = { 1, 0, 20, 853 },
			["Remedy|shekzeer"] = { 1, 0, 8, 725 },
			["Saralyssa|auberdine"] = { 0, 1, -11, 1083 },
			["Yhwatch|shekzeer"] = { 0, 1, -16, 621 },
			["Zipzipzapzap|shekzeer"] = { 1, 0, 11, 609 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 3, 1, 19, 1153 },
			["Melatonin|everlook"] = { 3, 1, 16, 1155 },
			["Missgrip|sulfuron"] = { 0, 3, 0, 1067 },
			["Голмаш|flamegor"] = { 0, 3, -9, 1067 },
			["Batix|shekzeer"] = { 1, 0, 16, 1148 },
			["Therealfq|shekzeer"] = { 1, 0, 2, 1148 },
			["Weaverok|shekzeer"] = { 1, 0, 5, 1148 },
		},
	},
}

