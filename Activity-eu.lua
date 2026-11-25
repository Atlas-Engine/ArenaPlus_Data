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
	built = 1795626037,
	builtText = "2026-11-25 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Noneedground|shekzeer"] = { 9, 1, 176, 30 },
			["Kospi|auberdine"] = { 3, 4, 7, 12 },
			["Tchaktchac|auberdine"] = { 3, 4, 5, 12 },
			["Лилрой|flamegor"] = { 0, 5, -21, 50 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 28 },
			["Pippilotta|shekzeer"] = { 2, 0, 34, 13 },
		},
		[2] = {
			["Luckynova|garalon"] = { 4, 0, 16, 22 },
			["Skorpiys|norushen"] = { 4, 0, 30, 40 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 38 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Noneedground|shekzeer"] = { 12, 1, 239, 30 },
			["Rodnichek|shekzeer"] = { 6, 3, 16, 125 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 68 },
			["Kospi|auberdine"] = { 3, 4, 7, 12 },
			["Tchaktchac|auberdine"] = { 3, 4, 5, 12 },
			["Лилрой|flamegor"] = { 0, 5, -21, 50 },
			["Commitment|shekzeer"] = { 3, 1, 15, 160 },
			["Domnox|auberdine"] = { 2, 2, 8, 63 },
			["Sapmere|auberdine"] = { 2, 2, 8, 63 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 28 },
			["Zhili|hoptallus"] = { 0, 3, -12, 168 },
			["Mîlkaa|everlook"] = { 1, 1, 10, 62 },
			["Pippilotta|shekzeer"] = { 2, 0, 34, 13 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 149 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 151 },
		},
		[2] = {
			["Luckynova|garalon"] = { 4, 0, 16, 22 },
			["Skorpiys|norushen"] = { 4, 0, 30, 40 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 38 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 38 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Noneedground|shekzeer"] = { 12, 1, 239, 30 },
			["Rodnichek|shekzeer"] = { 6, 3, 16, 125 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 68 },
			["Kospi|auberdine"] = { 3, 4, 7, 12 },
			["Tchaktchac|auberdine"] = { 3, 4, 5, 12 },
			["Commitment|shekzeer"] = { 4, 1, 26, 160 },
			["Лилрой|flamegor"] = { 0, 5, -21, 50 },
			["Domnox|auberdine"] = { 2, 2, 8, 63 },
			["Sapmere|auberdine"] = { 2, 2, 8, 63 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 28 },
			["Zhili|hoptallus"] = { 0, 3, -12, 168 },
			["Mîlkaa|everlook"] = { 1, 1, 10, 62 },
			["Pippilotta|shekzeer"] = { 2, 0, 34, 13 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 149 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 151 },
		},
		[2] = {
			["Luckynova|garalon"] = { 4, 0, 16, 22 },
			["Skorpiys|norushen"] = { 4, 0, 30, 40 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 38 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 38 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Noneedground|shekzeer"] = { 12, 1, 239, 30 },
			["Rodnichek|shekzeer"] = { 6, 3, 16, 125 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 68 },
			["Kospi|auberdine"] = { 3, 4, 7, 12 },
			["Tchaktchac|auberdine"] = { 3, 4, 5, 12 },
			["Commitment|shekzeer"] = { 4, 1, 26, 160 },
			["Лилрой|flamegor"] = { 0, 5, -21, 50 },
			["Domnox|auberdine"] = { 2, 2, 8, 63 },
			["Sapmere|auberdine"] = { 2, 2, 8, 63 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 28 },
			["Zhili|hoptallus"] = { 0, 3, -12, 168 },
			["Mîlkaa|everlook"] = { 1, 1, 10, 62 },
			["Pippilotta|shekzeer"] = { 2, 0, 34, 13 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 149 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 151 },
		},
		[2] = {
			["Luckynova|garalon"] = { 4, 0, 16, 22 },
			["Skorpiys|norushen"] = { 4, 0, 30, 40 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 38 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 38 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rodnichek|shekzeer"] = { 19, 19, -34, 125 },
			["Marlkx|shekzeer"] = { 15, 14, 20, 1058 },
			["Commitment|shekzeer"] = { 9, 11, -9, 160 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 1136 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 1019 },
			["Betix|shekzeer"] = { 6, 10, -42, 1073 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 1132 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 1027 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 1000 },
			["Noneedground|shekzeer"] = { 12, 1, 239, 30 },
			["Srtx|shekzeer"] = { 5, 8, -47, 968 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 1129 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 1064 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 1129 },
			["Xpa|everlook"] = { 7, 5, 36, 1088 },
			["Zok|shekzeer"] = { 5, 7, -44, 1019 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 1234 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 1176 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 1156 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 1177 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 1156 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 1308 },
			["Huanita|shekzeer"] = { 7, 1, 52, 1091 },
			["Idontflinch|garalon"] = { 7, 1, 45, 1234 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 1091 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 994 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 1302 },
			["Domnox|auberdine"] = { 2, 5, 1, 63 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 1234 },
			["Kakalocko|shekzeer"] = { 1, 6, -18, 68 },
			["Kospi|auberdine"] = { 3, 4, 7, 12 },
			["Sapmere|auberdine"] = { 2, 5, 1, 63 },
			["Tchaktchac|auberdine"] = { 3, 4, 5, 12 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 888 },
			["Savexx|shekzeer"] = { 2, 4, -32, 965 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 1014 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 1249 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 1131 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 1054 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 1234 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 1272 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 1241 },
			["Tslx|shekzeer"] = { 3, 2, 19, 1007 },
			["Лилрой|flamegor"] = { 0, 5, -21, 50 },
			["Apologies|shekzeer"] = { 2, 2, -43, 888 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 1305 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 1237 },
			["Orestis|norushen"] = { 0, 3, -6, 1414 },
			["Voodomann|mirage-raceway"] = { 0, 3, -26, 28 },
			["Zhili|hoptallus"] = { 0, 3, -12, 168 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 1054 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 1264 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 1054 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 1236 },
			["Mîlkaa|everlook"] = { 1, 1, 10, 62 },
			["Monklife|garalon"] = { 0, 2, 0, 1131 },
			["Pippilotta|shekzeer"] = { 2, 0, 34, 13 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 1288 },
			["Jtenrùme|auberdine"] = { 0, 1, -3, 149 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 1131 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 994 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 888 },
			["Sparâdräp|auberdine"] = { 0, 1, -3, 151 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1409 },
			["Элементовик|flamegor"] = { 0, 1, -13, 1172 },
		},
		[2] = {
			["Luckynova|garalon"] = { 23, 0, 113, 22 },
			["Believeme|norushen"] = { 0, 19, 0, 1234 },
			["Dukhdan|garalon"] = { 19, 0, 75, 1234 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 1234 },
			["Voljix|shekzeer"] = { 19, 0, 101, 1234 },
			["Голмаш|flamegor"] = { 0, 19, -30, 1234 },
			["Skorpiys|norushen"] = { 4, 0, 30, 40 },
			["Therealfq|shekzeer"] = { 1, 0, 1, 38 },
			["Weaverok|shekzeer"] = { 1, 0, 2, 38 },
		},
	},
}

