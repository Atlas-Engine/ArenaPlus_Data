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
	built = 1795543225,
	builtText = "2026-11-24 01:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 1 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 33 },
			["Orestis|norushen"] = { 0, 3, -6, 33 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 44 },
			["Idontflinch|garalon"] = { 1, 0, 6, 33 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 28 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 25 },
			["Dukhdan|garalon"] = { 18, 0, 72, 33 },
			["Voljix|shekzeer"] = { 18, 0, 97, 33 },
			["Голмаш|flamegor"] = { 0, 18, -29, 33 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 33 },
			["Believeme|norushen"] = { 0, 9, 0, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 1 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 33 },
			["Rv|shekzeer"] = { 3, 2, 39, 99 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 100 },
			["Orestis|norushen"] = { 0, 3, -6, 33 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 44 },
			["Idontflinch|garalon"] = { 1, 0, 6, 33 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 28 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 25 },
			["Dukhdan|garalon"] = { 18, 0, 72, 33 },
			["Voljix|shekzeer"] = { 18, 0, 97, 33 },
			["Голмаш|flamegor"] = { 0, 18, -29, 33 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 33 },
			["Believeme|norushen"] = { 0, 9, 0, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 1 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 33 },
			["Orestis|norushen"] = { 0, 5, -8, 33 },
			["Rv|shekzeer"] = { 3, 2, 39, 99 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 100 },
			["Cavernicola|garalon"] = { 0, 2, -2, 237 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 213 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 213 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 44 },
			["Idontflinch|garalon"] = { 1, 0, 6, 33 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 28 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 25 },
			["Dukhdan|garalon"] = { 18, 0, 72, 33 },
			["Voljix|shekzeer"] = { 18, 0, 97, 33 },
			["Голмаш|flamegor"] = { 0, 18, -29, 33 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 33 },
			["Believeme|norushen"] = { 0, 9, 0, 33 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 1 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 33 },
			["Orestis|norushen"] = { 0, 5, -8, 33 },
			["Rv|shekzeer"] = { 3, 2, 39, 99 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 100 },
			["Cavernicola|garalon"] = { 0, 2, -2, 237 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 213 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 213 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 44 },
			["Idontflinch|garalon"] = { 1, 0, 6, 33 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 28 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 25 },
			["Dukhdan|garalon"] = { 18, 0, 72, 33 },
			["Voljix|shekzeer"] = { 18, 0, 97, 33 },
			["Голмаш|flamegor"] = { 0, 18, -29, 33 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 33 },
			["Believeme|norushen"] = { 0, 9, 0, 33 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 1169 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 1076 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 1076 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 1126 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 1125 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 1174 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 1259 },
			["Kobra|shekzeer"] = { 9, 7, 30, 1113 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 1266 },
			["Srtx|shekzeer"] = { 11, 5, 65, 1113 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 1098 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 1098 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 1292 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 1287 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1367 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 1242 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 1195 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 1196 },
			["Rodnichek|shekzeer"] = { 6, 5, 15, 1 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 1159 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 1165 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 33 },
			["Idontflinch|garalon"] = { 4, 5, -15, 33 },
			["Durianlover|shekzeer"] = { 5, 3, 41, 1113 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 1270 },
			["Zok|shekzeer"] = { 5, 3, 40, 1209 },
			["Derxibro|shekzeer"] = { 2, 4, -49, 44 },
			["Click|shekzeer"] = { 1, 4, -20, 1293 },
			["Commitment|shekzeer"] = { 2, 3, 14, 1204 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 1293 },
			["Katkota|shekzeer"] = { 2, 3, 17, 1113 },
			["Orestis|norushen"] = { 0, 5, -8, 33 },
			["Rv|shekzeer"] = { 3, 2, 39, 99 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 1293 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 100 },
			["Syncix|everlook"] = { 3, 2, -1, 1303 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 1113 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 1174 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 1285 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 1286 },
			["Tenex|norushen"] = { 0, 3, -18, 1307 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 1205 },
			["Xpu|everlook"] = { 3, 0, 19, 1205 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1379 },
			["Cavernicola|garalon"] = { 0, 2, -2, 237 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 213 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 213 },
			["Voodomann|mirage-raceway"] = { 1, 1, 13, 1402 },
			["Вялыйхантер|flamegor"] = { 1, 1, 7, 1402 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 1270 },
			["Элементовик|flamegor"] = { 2, 0, 11, 1272 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 1163 },
			["Dkv|garalon"] = { 0, 1, -2, 1408 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 1268 },
			["Leisure|shekzeer"] = { 0, 1, -1, 1085 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 1113 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 933 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 28 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 22, -37, 33 },
			["Dukhdan|garalon"] = { 20, 1, 80, 33 },
			["Voljix|shekzeer"] = { 20, 1, 111, 33 },
			["Luckynova|garalon"] = { 19, 0, 97, 25 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 33 },
			["Believeme|norushen"] = { 0, 9, 0, 33 },
			["Lazinka|norushen"] = { 2, 1, 15, 1293 },
			["Rbgme|norushen"] = { 2, 0, 8, 1293 },
			["Screwedup|norushen"] = { 2, 0, 8, 1293 },
			["Totemgodx|shekzeer"] = { 0, 2, -5, 1293 },
			["Рыкай|flamegor"] = { 0, 2, -8, 1293 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1429 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1437 },
		},
	},
}

