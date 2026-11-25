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
	built = 1795611629,
	builtText = "2026-11-25 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Apologies|shekzeer"] = { 2, 0, 0, 647 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 647 },
			["Theånswer|shekzeer"] = { 1, 0, 12, 647 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 818 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 897 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 896 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 779 },
			["Betix|shekzeer"] = { 6, 10, -42, 832 },
			["Commitment|shekzeer"] = { 5, 10, -35, 893 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 892 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 787 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 759 },
			["Srtx|shekzeer"] = { 5, 8, -47, 728 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 889 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 824 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 889 },
			["Xpa|everlook"] = { 7, 5, 36, 848 },
			["Zok|shekzeer"] = { 5, 7, -44, 779 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 993 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 936 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 916 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 937 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 916 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 1068 },
			["Huanita|shekzeer"] = { 7, 1, 52, 850 },
			["Idontflinch|garalon"] = { 7, 1, 45, 993 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 851 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 754 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 1062 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 993 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 647 },
			["Savexx|shekzeer"] = { 2, 4, -32, 724 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 774 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 1009 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 890 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 813 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 993 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 1031 },
			["Orestis|norushen"] = { 0, 5, -8, 1173 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 1001 },
			["Rv|shekzeer"] = { 3, 2, 39, 1239 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1240 },
			["Tslx|shekzeer"] = { 3, 2, 19, 766 },
			["Apologies|shekzeer"] = { 2, 2, -43, 647 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 1065 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 996 },
			["Domnox|auberdine"] = { 0, 3, -7, 870 },
			["Sapmere|auberdine"] = { 0, 3, -7, 871 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 813 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 1024 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1377 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 813 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 996 },
			["Monklife|garalon"] = { 0, 2, 0, 891 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1353 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1353 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 1048 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 891 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 754 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 647 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1168 },
			["Элементовик|flamegor"] = { 0, 1, -13, 932 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 993 },
			["Dukhdan|garalon"] = { 19, 0, 75, 993 },
			["Luckynova|garalon"] = { 19, 0, 97, 1165 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 993 },
			["Voljix|shekzeer"] = { 19, 0, 101, 993 },
			["Голмаш|flamegor"] = { 0, 19, -30, 993 },
		},
	},
}

