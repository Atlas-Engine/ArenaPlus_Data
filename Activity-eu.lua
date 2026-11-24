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
	built = 1795521626,
	builtText = "2026-11-24 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Biggestegoeu|shekzeer"] = { 4, 0, 21, 716 },
			["Yhwatch|shekzeer"] = { 4, 0, 22, 716 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 809 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 716 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 716 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 766 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 765 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 814 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 899 },
			["Kobra|shekzeer"] = { 9, 7, 30, 753 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 906 },
			["Srtx|shekzeer"] = { 11, 5, 65, 753 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 738 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 738 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 753 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 932 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 927 },
			["Idontflinch|garalon"] = { 7, 6, -10, 933 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1007 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 882 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 933 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 835 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 836 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 799 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 805 },
			["Zok|shekzeer"] = { 7, 3, 62, 849 },
			["Yezze|garalon"] = { 4, 5, -4, 1113 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1113 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 910 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 1042 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 1042 },
			["Dkv|garalon"] = { 0, 6, -35, 1048 },
			["Click|shekzeer"] = { 1, 4, -20, 933 },
			["Commitment|shekzeer"] = { 2, 3, 14, 844 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 933 },
			["Katkota|shekzeer"] = { 2, 3, 17, 753 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 933 },
			["Syncix|everlook"] = { 3, 2, -1, 943 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 753 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1160 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 814 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 925 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 1258 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 926 },
			["Kennykk|garalon"] = { 0, 3, -9, 1163 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 1244 },
			["Tenex|norushen"] = { 0, 3, -18, 947 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 845 },
			["Xpu|everlook"] = { 3, 0, 19, 845 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1019 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 1324 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 1323 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 1293 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 910 },
			["Элементовик|flamegor"] = { 2, 0, 11, 912 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 803 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 1333 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 1293 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 908 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 1284 },
			["Leisure|shekzeer"] = { 0, 1, -1, 725 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 753 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 573 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 1293 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 1312 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 933 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1097 },
			["Rbgme|norushen"] = { 25, 0, 155, 933 },
			["Screwedup|norushen"] = { 25, 0, 149, 933 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 933 },
			["Рыкай|flamegor"] = { 0, 25, -136, 933 },
			["Dukhdan|garalon"] = { 2, 1, 8, 933 },
			["Lazinka|norushen"] = { 2, 1, 15, 933 },
			["Voljix|shekzeer"] = { 2, 1, 14, 933 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 933 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1086 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1069 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1077 },
		},
	},
}

