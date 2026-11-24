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
	built = 1795539629,
	builtText = "2026-11-24 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Straviouse|hoptallus"] = { 3, 2, 56, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Straviouse|hoptallus"] = { 3, 2, 56, 40 },
			["Cavernicola|garalon"] = { 0, 2, -2, 177 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 153 },
			["Orestis|norushen"] = { 0, 2, -2, 153 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 153 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Straviouse|hoptallus"] = { 3, 2, 56, 40 },
			["Cavernicola|garalon"] = { 0, 2, -2, 177 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 153 },
			["Orestis|norushen"] = { 0, 2, -2, 153 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 153 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Straviouse|hoptallus"] = { 3, 2, 56, 40 },
			["Cavernicola|garalon"] = { 0, 2, -2, 177 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 153 },
			["Orestis|norushen"] = { 0, 2, -2, 153 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 153 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 1109 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 1016 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 1016 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 1066 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 1065 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 1114 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 1200 },
			["Kobra|shekzeer"] = { 9, 7, 30, 1053 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 1206 },
			["Srtx|shekzeer"] = { 11, 5, 65, 1053 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 1038 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 1038 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 1053 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 1232 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 1227 },
			["Idontflinch|garalon"] = { 7, 6, -10, 1233 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1307 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 1182 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 1135 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 1136 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 1099 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 1105 },
			["Derxibro|shekzeer"] = { 5, 5, -51, 1233 },
			["Zok|shekzeer"] = { 7, 3, 62, 1149 },
			["Yezze|garalon"] = { 4, 5, -4, 1413 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1413 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 1210 },
			["Dkv|garalon"] = { 0, 6, -35, 1348 },
			["Click|shekzeer"] = { 1, 4, -20, 1233 },
			["Commitment|shekzeer"] = { 2, 3, 14, 1144 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 1233 },
			["Katkota|shekzeer"] = { 2, 3, 17, 1053 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 1233 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 40 },
			["Syncix|everlook"] = { 3, 2, -1, 1243 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 1053 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 1115 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 1225 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 1226 },
			["Tenex|norushen"] = { 0, 3, -18, 1247 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 1145 },
			["Xpu|everlook"] = { 3, 0, 19, 1145 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1319 },
			["Cavernicola|garalon"] = { 0, 2, -2, 177 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 153 },
			["Orestis|norushen"] = { 0, 2, -2, 153 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 153 },
			["Voodomann|mirage-raceway"] = { 1, 1, 13, 1342 },
			["Вялыйхантер|flamegor"] = { 1, 1, 7, 1342 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 1210 },
			["Элементовик|flamegor"] = { 2, 0, 11, 1212 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 1103 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 1208 },
			["Leisure|shekzeer"] = { 0, 1, -1, 1025 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 1053 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 873 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 1233 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1397 },
			["Rbgme|norushen"] = { 25, 0, 155, 1233 },
			["Screwedup|norushen"] = { 25, 0, 149, 1233 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 1233 },
			["Рыкай|flamegor"] = { 0, 25, -136, 1233 },
			["Dukhdan|garalon"] = { 2, 1, 8, 1233 },
			["Lazinka|norushen"] = { 2, 1, 15, 1233 },
			["Voljix|shekzeer"] = { 2, 1, 14, 1233 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 1233 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1386 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1369 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1377 },
		},
	},
}

