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
	built = 1795608024,
	builtText = "2026-11-25 07:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mypupy|shekzeer"] = { 1, 4, 22, 719 },
			["Sugarbear|shekzeer"] = { 2, 3, 48, 699 },
			["Angrycubanx|shekzeer"] = { 2, 2, -9, 694 },
			["Savexx|shekzeer"] = { 1, 3, -27, 664 },
			["Srtx|shekzeer"] = { 1, 3, -15, 668 },
			["Zok|shekzeer"] = { 1, 3, -17, 718 },
			["Albatrowss|shekzeer"] = { 3, 0, 33, 713 },
			["Tslx|shekzeer"] = { 3, 0, 33, 706 },
			["Apologies|shekzeer"] = { 2, 0, 0, 587 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 694 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 587 },
			["Theånswer|shekzeer"] = { 1, 0, 12, 587 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 758 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 836 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 836 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 719 },
			["Betix|shekzeer"] = { 6, 10, -42, 772 },
			["Commitment|shekzeer"] = { 5, 10, -35, 833 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 831 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 727 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 699 },
			["Srtx|shekzeer"] = { 5, 8, -47, 668 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 829 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 763 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 829 },
			["Xpa|everlook"] = { 7, 5, 36, 788 },
			["Zok|shekzeer"] = { 5, 7, -44, 718 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 933 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 876 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 856 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 877 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 856 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 1008 },
			["Huanita|shekzeer"] = { 7, 1, 52, 790 },
			["Idontflinch|garalon"] = { 7, 1, 45, 933 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 791 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 694 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 1002 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 933 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 587 },
			["Savexx|shekzeer"] = { 2, 4, -32, 664 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 713 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 949 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 830 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 753 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 933 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 971 },
			["Orestis|norushen"] = { 0, 5, -8, 1113 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 940 },
			["Rv|shekzeer"] = { 3, 2, 39, 1179 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1180 },
			["Tslx|shekzeer"] = { 3, 2, 19, 706 },
			["Apologies|shekzeer"] = { 2, 2, -43, 587 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 1005 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 936 },
			["Domnox|auberdine"] = { 0, 3, -7, 810 },
			["Sapmere|auberdine"] = { 0, 3, -7, 811 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 753 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 964 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1317 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 753 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 936 },
			["Monklife|garalon"] = { 0, 2, 0, 830 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1293 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1293 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 988 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 831 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 694 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 587 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1108 },
			["Элементовик|flamegor"] = { 0, 1, -13, 872 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 933 },
			["Dukhdan|garalon"] = { 19, 0, 75, 933 },
			["Luckynova|garalon"] = { 19, 0, 97, 1105 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 933 },
			["Voljix|shekzeer"] = { 19, 0, 101, 933 },
			["Голмаш|flamegor"] = { 0, 19, -30, 933 },
		},
	},
}

