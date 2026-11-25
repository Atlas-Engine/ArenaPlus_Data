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
	built = 1795615237,
	builtText = "2026-11-25 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Commitment|shekzeer"] = { 1, 0, 11, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Commitment|shekzeer"] = { 1, 0, 11, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Commitment|shekzeer"] = { 1, 0, 11, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Apologies|shekzeer"] = { 2, 0, 0, 708 },
			["Commitment|shekzeer"] = { 1, 0, 11, 41 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 708 },
			["Theånswer|shekzeer"] = { 1, 0, 12, 708 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 878 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 957 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 956 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 839 },
			["Betix|shekzeer"] = { 6, 10, -42, 893 },
			["Commitment|shekzeer"] = { 6, 10, -24, 41 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 952 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 847 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 820 },
			["Srtx|shekzeer"] = { 5, 8, -47, 788 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 949 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 884 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 949 },
			["Xpa|everlook"] = { 7, 5, 36, 908 },
			["Zok|shekzeer"] = { 5, 7, -44, 839 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 1054 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 996 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 976 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 997 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 976 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 1128 },
			["Huanita|shekzeer"] = { 7, 1, 52, 911 },
			["Idontflinch|garalon"] = { 7, 1, 45, 1054 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 911 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 814 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 1122 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 1054 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 708 },
			["Savexx|shekzeer"] = { 2, 4, -32, 785 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 834 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 1069 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 951 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 874 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 1054 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 1092 },
			["Orestis|norushen"] = { 0, 5, -8, 1234 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 1061 },
			["Rv|shekzeer"] = { 3, 2, 39, 1300 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1300 },
			["Tslx|shekzeer"] = { 3, 2, 19, 827 },
			["Apologies|shekzeer"] = { 2, 2, -43, 708 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 1125 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 1057 },
			["Domnox|auberdine"] = { 0, 3, -7, 930 },
			["Sapmere|auberdine"] = { 0, 3, -7, 931 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 874 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 1084 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1437 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 874 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 1056 },
			["Monklife|garalon"] = { 0, 2, 0, 951 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1414 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1414 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 1108 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 951 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 814 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 708 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1229 },
			["Элементовик|flamegor"] = { 0, 1, -13, 992 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 1054 },
			["Dukhdan|garalon"] = { 19, 0, 75, 1054 },
			["Luckynova|garalon"] = { 19, 0, 97, 1225 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 1054 },
			["Voljix|shekzeer"] = { 19, 0, 101, 1054 },
			["Голмаш|flamegor"] = { 0, 19, -30, 1054 },
		},
	},
}

