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
	built = 1795528839,
	builtText = "2026-11-24 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Plåýböt|shekzeer"] = { 0, 1, 0, 694 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 929 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 836 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 836 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 887 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 886 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 934 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 1020 },
			["Kobra|shekzeer"] = { 9, 7, 30, 874 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 1026 },
			["Srtx|shekzeer"] = { 11, 5, 65, 874 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 858 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 858 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 874 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 1053 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 1047 },
			["Idontflinch|garalon"] = { 7, 6, -10, 1054 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1127 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 1003 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 1054 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 955 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 957 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 919 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 925 },
			["Zok|shekzeer"] = { 7, 3, 62, 969 },
			["Yezze|garalon"] = { 4, 5, -4, 1234 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1234 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 1030 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 1162 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 1162 },
			["Dkv|garalon"] = { 0, 6, -35, 1168 },
			["Click|shekzeer"] = { 1, 4, -20, 1054 },
			["Commitment|shekzeer"] = { 2, 3, 14, 964 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 1054 },
			["Katkota|shekzeer"] = { 2, 3, 17, 874 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 1054 },
			["Syncix|everlook"] = { 3, 2, -1, 1063 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 874 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1281 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 935 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 1045 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 1378 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 1046 },
			["Kennykk|garalon"] = { 0, 3, -9, 1284 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 1364 },
			["Tenex|norushen"] = { 0, 3, -18, 1068 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 965 },
			["Xpu|everlook"] = { 3, 0, 19, 965 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1139 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 1414 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 1030 },
			["Элементовик|flamegor"] = { 2, 0, 11, 1032 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 923 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 1414 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 1028 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 1404 },
			["Leisure|shekzeer"] = { 0, 1, -1, 845 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 874 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 694 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 1414 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 1432 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 1054 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1217 },
			["Rbgme|norushen"] = { 25, 0, 155, 1054 },
			["Screwedup|norushen"] = { 25, 0, 149, 1054 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 1054 },
			["Рыкай|flamegor"] = { 0, 25, -136, 1054 },
			["Dukhdan|garalon"] = { 2, 1, 8, 1054 },
			["Lazinka|norushen"] = { 2, 1, 15, 1054 },
			["Voljix|shekzeer"] = { 2, 1, 14, 1054 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 1054 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1206 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1189 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1197 },
		},
	},
}

