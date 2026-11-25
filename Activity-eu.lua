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
	built = 1795622428,
	builtText = "2026-11-25 11:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Domnox|auberdine"] = { 2, 2, 8, 3 },
			["Kakalocko|shekzeer"] = { 1, 3, -4, 8 },
			["Sapmere|auberdine"] = { 2, 2, 8, 3 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 65 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 8 },
			["Commitment|shekzeer"] = { 4, 1, 26, 100 },
			["Domnox|auberdine"] = { 2, 2, 8, 3 },
			["Sapmere|auberdine"] = { 2, 2, 8, 3 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 107 },
			["Zhili|hoptallus"] = { 0, 3, -12, 107 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 89 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 91 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 65 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 8 },
			["Commitment|shekzeer"] = { 4, 1, 26, 100 },
			["Domnox|auberdine"] = { 2, 2, 8, 3 },
			["Sapmere|auberdine"] = { 2, 2, 8, 3 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 107 },
			["Zhili|hoptallus"] = { 0, 3, -12, 107 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 89 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 91 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 6, 3, 16, 65 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 8 },
			["Commitment|shekzeer"] = { 4, 1, 26, 100 },
			["Domnox|auberdine"] = { 2, 2, 8, 3 },
			["Sapmere|auberdine"] = { 2, 2, 8, 3 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 107 },
			["Zhili|hoptallus"] = { 0, 3, -12, 107 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 89 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 91 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 19, 19, -34, 65 },
			["Marlkx|shekzeer"] = { 15, 14, 20, 998 },
			["Commitment|shekzeer"] = { 9, 11, -9, 100 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 1076 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 959 },
			["Betix|shekzeer"] = { 6, 10, -42, 1012 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 1071 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 967 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 939 },
			["Srtx|shekzeer"] = { 5, 8, -47, 908 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 1069 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 1004 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 1069 },
			["Xpa|everlook"] = { 7, 5, 36, 1028 },
			["Zok|shekzeer"] = { 5, 7, -44, 958 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 1173 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 1116 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 1096 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 1117 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 1096 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 1248 },
			["Huanita|shekzeer"] = { 7, 1, 52, 1030 },
			["Idontflinch|garalon"] = { 7, 1, 45, 1173 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 1031 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 934 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 1242 },
			["Domnox|auberdine"] = { 2, 5, 1, 3 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 1173 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 8 },
			["Sapmere|auberdine"] = { 2, 5, 1, 3 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 827 },
			["Savexx|shekzeer"] = { 2, 4, -32, 904 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 954 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 1189 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 1070 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 993 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 1173 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 1211 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 1181 },
			["Rv|shekzeer"] = { 3, 2, 39, 1419 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1420 },
			["Tslx|shekzeer"] = { 3, 2, 19, 946 },
			["Apologies|shekzeer"] = { 2, 2, -43, 827 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 1245 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 1176 },
			["Noneedground|shekzeer"] = { 3, 0, 63, 107 },
			["Orestis|norushen"] = { 0, 3, -6, 1353 },
			["Zhili|hoptallus"] = { 0, 3, -12, 107 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 993 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 1204 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 993 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 1176 },
			["Monklife|garalon"] = { 0, 2, 0, 1071 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 1228 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 89 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 1071 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 934 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 827 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 91 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1348 },
			["Элементовик|flamegor"] = { 0, 1, -13, 1112 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 1173 },
			["Dukhdan|garalon"] = { 19, 0, 75, 1173 },
			["Luckynova|garalon"] = { 19, 0, 97, 1345 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 1173 },
			["Voljix|shekzeer"] = { 19, 0, 101, 1173 },
			["Голмаш|flamegor"] = { 0, 19, -30, 1173 },
		},
	},
}

