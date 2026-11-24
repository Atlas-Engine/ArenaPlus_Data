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
	built = 1795536032,
	builtText = "2026-11-24 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 117 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 94 },
			["Orestis|norushen"] = { 0, 2, -2, 94 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 94 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 117 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 94 },
			["Orestis|norushen"] = { 0, 2, -2, 94 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 94 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cavernicola|garalon"] = { 0, 2, -2, 117 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 94 },
			["Orestis|norushen"] = { 0, 2, -2, 94 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 94 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 1049 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 956 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 956 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 1006 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 1005 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 1054 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 1140 },
			["Kobra|shekzeer"] = { 9, 7, 30, 994 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 1146 },
			["Srtx|shekzeer"] = { 11, 5, 65, 994 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 978 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 978 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 994 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 1172 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 1167 },
			["Idontflinch|garalon"] = { 7, 6, -10, 1174 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1247 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 1122 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 1075 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 1076 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 1039 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 1045 },
			["Derxibro|shekzeer"] = { 5, 5, -51, 1174 },
			["Zok|shekzeer"] = { 7, 3, 62, 1089 },
			["Yezze|garalon"] = { 4, 5, -4, 1354 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1354 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 1150 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 1282 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 1282 },
			["Dkv|garalon"] = { 0, 6, -35, 1288 },
			["Click|shekzeer"] = { 1, 4, -20, 1174 },
			["Commitment|shekzeer"] = { 2, 3, 14, 1084 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 1174 },
			["Katkota|shekzeer"] = { 2, 3, 17, 994 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 1174 },
			["Syncix|everlook"] = { 3, 2, -1, 1183 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 994 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1401 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 1055 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 1165 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 1166 },
			["Kennykk|garalon"] = { 0, 3, -9, 1404 },
			["Tenex|norushen"] = { 0, 3, -18, 1187 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 1085 },
			["Xpu|everlook"] = { 3, 0, 19, 1085 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1259 },
			["Cavernicola|garalon"] = { 0, 2, -2, 117 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 94 },
			["Orestis|norushen"] = { 0, 2, -2, 94 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 94 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 1150 },
			["Элементовик|flamegor"] = { 2, 0, 11, 1152 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 1043 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 1148 },
			["Leisure|shekzeer"] = { 0, 1, -1, 965 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 994 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 814 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 1174 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1337 },
			["Rbgme|norushen"] = { 25, 0, 155, 1174 },
			["Screwedup|norushen"] = { 25, 0, 149, 1174 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 1174 },
			["Рыкай|flamegor"] = { 0, 25, -136, 1174 },
			["Dukhdan|garalon"] = { 2, 1, 8, 1174 },
			["Lazinka|norushen"] = { 2, 1, 15, 1174 },
			["Voljix|shekzeer"] = { 2, 1, 14, 1174 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 1174 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1326 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1309 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1317 },
		},
	},
}

