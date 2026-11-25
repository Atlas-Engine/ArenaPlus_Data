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
	built = 1795604427,
	builtText = "2026-11-25 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 9, 9, 11, 698 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 659 },
			["Betix|shekzeer"] = { 6, 9, -38, 712 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 667 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 639 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 704 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 634 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 527 },
			["Savexx|shekzeer"] = { 2, 4, -32, 604 },
			["Srtx|shekzeer"] = { 2, 4, -15, 608 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 653 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 693 },
			["Tslx|shekzeer"] = { 3, 2, 19, 646 },
			["Apologies|shekzeer"] = { 2, 2, -43, 527 },
			["Zok|shekzeer"] = { 1, 3, -17, 658 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 693 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 693 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 634 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 527 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 698 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 776 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 776 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 659 },
			["Betix|shekzeer"] = { 6, 10, -42, 712 },
			["Commitment|shekzeer"] = { 5, 10, -35, 773 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 771 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 667 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 639 },
			["Srtx|shekzeer"] = { 5, 8, -47, 608 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 769 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 704 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 769 },
			["Xpa|everlook"] = { 7, 5, 36, 728 },
			["Zok|shekzeer"] = { 5, 7, -44, 658 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 873 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 816 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 796 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 817 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 796 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 948 },
			["Huanita|shekzeer"] = { 7, 1, 52, 730 },
			["Idontflinch|garalon"] = { 7, 1, 45, 873 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 731 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 634 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 942 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 873 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 527 },
			["Savexx|shekzeer"] = { 2, 4, -32, 604 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 653 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 889 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 770 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 693 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 873 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 911 },
			["Orestis|norushen"] = { 0, 5, -8, 1053 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 881 },
			["Rv|shekzeer"] = { 3, 2, 39, 1119 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1120 },
			["Tslx|shekzeer"] = { 3, 2, 19, 646 },
			["Apologies|shekzeer"] = { 2, 2, -43, 527 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 945 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 876 },
			["Domnox|auberdine"] = { 0, 3, -7, 750 },
			["Sapmere|auberdine"] = { 0, 3, -7, 751 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 693 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 904 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1257 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 693 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 876 },
			["Monklife|garalon"] = { 0, 2, 0, 771 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1233 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1233 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 928 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 771 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 634 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 527 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 1048 },
			["Элементовик|flamegor"] = { 0, 1, -13, 812 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 873 },
			["Dukhdan|garalon"] = { 19, 0, 75, 873 },
			["Luckynova|garalon"] = { 19, 0, 97, 1045 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 873 },
			["Voljix|shekzeer"] = { 19, 0, 101, 873 },
			["Голмаш|flamegor"] = { 0, 19, -30, 873 },
		},
	},
}

