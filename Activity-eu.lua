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
	built = 1795600825,
	builtText = "2026-11-25 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 9, 9, 11, 638 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 599 },
			["Rodnichek|shekzeer"] = { 7, 10, -60, 716 },
			["Betix|shekzeer"] = { 6, 9, -38, 652 },
			["Commitment|shekzeer"] = { 5, 9, -28, 713 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 607 },
			["Menesueas|shekzeer"] = { 5, 9, 51, 711 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 579 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 709 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 643 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 709 },
			["Xpa|everlook"] = { 7, 5, 36, 668 },
			["Huanita|shekzeer"] = { 7, 1, 52, 670 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 671 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 574 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 467 },
			["Savexx|shekzeer"] = { 2, 4, -32, 544 },
			["Srtdrippa|everlook"] = { 4, 2, 7, 716 },
			["Srtx|shekzeer"] = { 2, 4, -15, 548 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 593 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 710 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 633 },
			["Tslx|shekzeer"] = { 3, 2, 19, 586 },
			["Apologies|shekzeer"] = { 2, 2, -43, 467 },
			["Zok|shekzeer"] = { 1, 3, -17, 598 },
			["Domnox|auberdine"] = { 0, 3, -7, 690 },
			["Sapmere|auberdine"] = { 0, 3, -7, 691 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 633 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 633 },
			["Monklife|garalon"] = { 0, 2, 0, 710 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 711 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 574 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 467 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 638 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 716 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 716 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 599 },
			["Betix|shekzeer"] = { 6, 10, -42, 652 },
			["Commitment|shekzeer"] = { 5, 10, -35, 713 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 711 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 607 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 579 },
			["Srtx|shekzeer"] = { 5, 8, -47, 548 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 709 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 643 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 709 },
			["Xpa|everlook"] = { 7, 5, 36, 668 },
			["Zok|shekzeer"] = { 5, 7, -44, 598 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 813 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 756 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 736 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 757 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 736 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 888 },
			["Huanita|shekzeer"] = { 7, 1, 52, 670 },
			["Idontflinch|garalon"] = { 7, 1, 45, 813 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 671 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 574 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 882 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 813 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 467 },
			["Savexx|shekzeer"] = { 2, 4, -32, 544 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 593 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 829 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 710 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 633 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 813 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 851 },
			["Orestis|norushen"] = { 0, 5, -8, 993 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 820 },
			["Rv|shekzeer"] = { 3, 2, 39, 1059 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1060 },
			["Tslx|shekzeer"] = { 3, 2, 19, 586 },
			["Apologies|shekzeer"] = { 2, 2, -43, 467 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 885 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 816 },
			["Domnox|auberdine"] = { 0, 3, -7, 690 },
			["Sapmere|auberdine"] = { 0, 3, -7, 691 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 633 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 844 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1197 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 633 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 816 },
			["Monklife|garalon"] = { 0, 2, 0, 710 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1173 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1173 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 868 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 711 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 574 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 467 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 988 },
			["Элементовик|flamegor"] = { 0, 1, -13, 752 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 813 },
			["Dukhdan|garalon"] = { 19, 0, 75, 813 },
			["Luckynova|garalon"] = { 19, 0, 97, 985 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 813 },
			["Voljix|shekzeer"] = { 19, 0, 101, 813 },
			["Голмаш|flamegor"] = { 0, 19, -30, 813 },
		},
	},
}

