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
	built = 1795546830,
	builtText = "2026-11-24 02:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Zok|shekzeer"] = { 4, 4, -27, 4 },
			["Srtx|shekzeer"] = { 3, 4, -32, 4 },
			["Keyoo|shekzeer"] = { 0, 4, -41, 24 },
			["Rodnichekx|shekzeer"] = { 0, 4, -14, 24 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 61 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 94 },
			["Zok|shekzeer"] = { 4, 4, -27, 4 },
			["Srtx|shekzeer"] = { 3, 4, -32, 4 },
			["Rv|shekzeer"] = { 3, 2, 39, 159 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 160 },
			["Keyoo|shekzeer"] = { 0, 4, -41, 24 },
			["Rodnichekx|shekzeer"] = { 0, 4, -14, 24 },
			["Orestis|norushen"] = { 0, 3, -6, 94 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 104 },
			["Idontflinch|garalon"] = { 1, 0, 6, 94 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 88 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 85 },
			["Dukhdan|garalon"] = { 18, 0, 72, 94 },
			["Voljix|shekzeer"] = { 18, 0, 97, 94 },
			["Голмаш|flamegor"] = { 0, 18, -29, 94 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 94 },
			["Believeme|norushen"] = { 0, 9, 0, 94 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 61 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 94 },
			["Zok|shekzeer"] = { 4, 4, -27, 4 },
			["Srtx|shekzeer"] = { 3, 4, -32, 4 },
			["Orestis|norushen"] = { 0, 5, -8, 94 },
			["Rv|shekzeer"] = { 3, 2, 39, 159 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 160 },
			["Keyoo|shekzeer"] = { 0, 4, -41, 24 },
			["Rodnichekx|shekzeer"] = { 0, 4, -14, 24 },
			["Cavernicola|garalon"] = { 0, 2, -2, 297 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 274 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 274 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 104 },
			["Idontflinch|garalon"] = { 1, 0, 6, 94 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 88 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 85 },
			["Dukhdan|garalon"] = { 18, 0, 72, 94 },
			["Voljix|shekzeer"] = { 18, 0, 97, 94 },
			["Голмаш|flamegor"] = { 0, 18, -29, 94 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 94 },
			["Believeme|norushen"] = { 0, 9, 0, 94 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 5, 15, 61 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 94 },
			["Zok|shekzeer"] = { 4, 4, -27, 4 },
			["Srtx|shekzeer"] = { 3, 4, -32, 4 },
			["Orestis|norushen"] = { 0, 5, -8, 94 },
			["Rv|shekzeer"] = { 3, 2, 39, 159 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 160 },
			["Keyoo|shekzeer"] = { 0, 4, -41, 24 },
			["Rodnichekx|shekzeer"] = { 0, 4, -14, 24 },
			["Cavernicola|garalon"] = { 0, 2, -2, 297 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 274 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 274 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 104 },
			["Idontflinch|garalon"] = { 1, 0, 6, 94 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 88 },
		},
		[2] = {
			["Luckynova|garalon"] = { 19, 0, 97, 85 },
			["Dukhdan|garalon"] = { 18, 0, 72, 94 },
			["Voljix|shekzeer"] = { 18, 0, 97, 94 },
			["Голмаш|flamegor"] = { 0, 18, -29, 94 },
			["Missgrip|sulfuron"] = { 0, 17, 0, 94 },
			["Believeme|norushen"] = { 0, 9, 0, 94 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 1229 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 1136 },
			["Srtx|shekzeer"] = { 14, 9, 33, 4 },
			["Biggestegoeu|shekzeer"] = { 17, 4, 32, 1136 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 1186 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 1185 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 1234 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 1320 },
			["Kobra|shekzeer"] = { 9, 7, 30, 1174 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 1326 },
			["Zok|shekzeer"] = { 9, 7, 13, 4 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 1158 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 1158 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 1352 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 1347 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1427 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 1302 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 1255 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 1256 },
			["Rodnichek|shekzeer"] = { 6, 5, 15, 61 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 1219 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 1225 },
			["Hopedieslast|shekzeer"] = { 5, 4, -29, 94 },
			["Idontflinch|garalon"] = { 4, 5, -15, 94 },
			["Durianlover|shekzeer"] = { 5, 3, 41, 1174 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 1330 },
			["Derxibro|shekzeer"] = { 2, 4, -49, 104 },
			["Click|shekzeer"] = { 1, 4, -20, 1354 },
			["Commitment|shekzeer"] = { 2, 3, 14, 1264 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 1354 },
			["Katkota|shekzeer"] = { 2, 3, 17, 1174 },
			["Orestis|norushen"] = { 0, 5, -8, 94 },
			["Rv|shekzeer"] = { 3, 2, 39, 159 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 1354 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 160 },
			["Syncix|everlook"] = { 3, 2, -1, 1363 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 1174 },
			["Keyoo|shekzeer"] = { 0, 4, -41, 24 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 1235 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 1345 },
			["Rodnichekx|shekzeer"] = { 0, 4, -14, 24 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 1346 },
			["Tenex|norushen"] = { 0, 3, -18, 1367 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 1265 },
			["Xpu|everlook"] = { 3, 0, 19, 1265 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1439 },
			["Cavernicola|garalon"] = { 0, 2, -2, 297 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 274 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 274 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 1330 },
			["Элементовик|flamegor"] = { 2, 0, 11, 1332 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 1223 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 1328 },
			["Leisure|shekzeer"] = { 0, 1, -1, 1145 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 1174 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 994 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 88 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 22, -37, 94 },
			["Dukhdan|garalon"] = { 20, 1, 80, 94 },
			["Voljix|shekzeer"] = { 20, 1, 111, 94 },
			["Luckynova|garalon"] = { 19, 0, 97, 85 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 94 },
			["Believeme|norushen"] = { 0, 9, 0, 94 },
			["Lazinka|norushen"] = { 2, 1, 15, 1354 },
			["Rbgme|norushen"] = { 2, 0, 8, 1354 },
			["Screwedup|norushen"] = { 2, 0, 8, 1354 },
			["Totemgodx|shekzeer"] = { 0, 2, -5, 1354 },
			["Рыкай|flamegor"] = { 0, 2, -8, 1354 },
		},
	},
}

