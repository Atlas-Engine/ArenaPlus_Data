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
	built = 1795532434,
	builtText = "2026-11-24 10:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 57 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 34 },
			["Orestis|norushen"] = { 0, 2, -2, 34 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 57 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 34 },
			["Orestis|norushen"] = { 0, 2, -2, 34 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 57 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 34 },
			["Orestis|norushen"] = { 0, 2, -2, 34 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 57 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 34 },
			["Orestis|norushen"] = { 0, 2, -2, 34 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 34 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 989 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 896 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 896 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 947 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 945 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 994 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 1080 },
			["Kobra|shekzeer"] = { 9, 7, 30, 934 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 1086 },
			["Srtx|shekzeer"] = { 11, 5, 65, 934 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 918 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 918 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 934 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 1112 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 1107 },
			["Idontflinch|garalon"] = { 7, 6, -10, 1114 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1187 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 1062 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 1114 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 1015 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 1017 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 979 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 985 },
			["Zok|shekzeer"] = { 7, 3, 62, 1029 },
			["Yezze|garalon"] = { 4, 5, -4, 1294 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1294 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 1090 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 1222 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 1222 },
			["Dkv|garalon"] = { 0, 6, -35, 1228 },
			["Click|shekzeer"] = { 1, 4, -20, 1114 },
			["Commitment|shekzeer"] = { 2, 3, 14, 1024 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 1114 },
			["Katkota|shekzeer"] = { 2, 3, 17, 934 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 1114 },
			["Syncix|everlook"] = { 3, 2, -1, 1123 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 934 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1341 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 995 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 1105 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 1106 },
			["Kennykk|garalon"] = { 0, 3, -9, 1344 },
			["Noneedground|shekzeer"] = { 2, 1, 34, 34 },
			["Snaredog|shekzeer"] = { 2, 1, 16, 34 },
			["Tenex|norushen"] = { 0, 3, -18, 1127 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 1025 },
			["Xpu|everlook"] = { 3, 0, 19, 1025 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1199 },
			["Cavernicola|garalon"] = { 0, 2, -2, 57 },
			["Orestis|norushen"] = { 0, 2, -2, 34 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 1090 },
			["Элементовик|flamegor"] = { 2, 0, 11, 1092 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 983 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 1088 },
			["Leisure|shekzeer"] = { 0, 1, -1, 905 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 934 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 754 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 1114 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1277 },
			["Rbgme|norushen"] = { 25, 0, 155, 1114 },
			["Screwedup|norushen"] = { 25, 0, 149, 1114 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 1114 },
			["Рыкай|flamegor"] = { 0, 25, -136, 1114 },
			["Dukhdan|garalon"] = { 2, 1, 8, 1114 },
			["Lazinka|norushen"] = { 2, 1, 15, 1114 },
			["Voljix|shekzeer"] = { 2, 1, 14, 1114 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 1114 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1266 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1249 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1257 },
		},
	},
}

