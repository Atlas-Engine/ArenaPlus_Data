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
	built = 1795597228,
	builtText = "2026-11-25 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 9, 9, 11, 578 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 539 },
			["Rodnichek|shekzeer"] = { 7, 10, -60, 657 },
			["Betix|shekzeer"] = { 6, 9, -38, 592 },
			["Commitment|shekzeer"] = { 5, 9, -28, 653 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 547 },
			["Menesueas|shekzeer"] = { 5, 9, 51, 651 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 519 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 649 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 584 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 649 },
			["Xpa|everlook"] = { 7, 5, 36, 608 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 676 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 676 },
			["Huanita|shekzeer"] = { 7, 1, 52, 610 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 611 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 514 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 407 },
			["Savexx|shekzeer"] = { 2, 4, -32, 484 },
			["Srtdrippa|everlook"] = { 4, 2, 7, 656 },
			["Srtx|shekzeer"] = { 2, 4, -15, 488 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 534 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 650 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 573 },
			["Tslx|shekzeer"] = { 3, 2, 19, 526 },
			["Apologies|shekzeer"] = { 2, 2, -43, 407 },
			["Ayvara|shekzeer"] = { 2, 2, -8, 696 },
			["Mythrugun|shekzeer"] = { 2, 2, -8, 697 },
			["Zok|shekzeer"] = { 1, 3, -17, 538 },
			["Domnox|auberdine"] = { 0, 3, -7, 630 },
			["Sapmere|auberdine"] = { 0, 3, -7, 631 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 573 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 573 },
			["Monklife|garalon"] = { 0, 2, 0, 651 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 651 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 514 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 407 },
			["Элементовик|flamegor"] = { 0, 1, -13, 692 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 578 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 657 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 656 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 539 },
			["Betix|shekzeer"] = { 6, 10, -42, 592 },
			["Commitment|shekzeer"] = { 5, 10, -35, 653 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 651 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 547 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 519 },
			["Srtx|shekzeer"] = { 5, 8, -47, 488 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 649 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 584 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 649 },
			["Xpa|everlook"] = { 7, 5, 36, 608 },
			["Zok|shekzeer"] = { 5, 7, -44, 538 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 753 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 696 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 676 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 697 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 676 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 828 },
			["Huanita|shekzeer"] = { 7, 1, 52, 610 },
			["Idontflinch|garalon"] = { 7, 1, 45, 753 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 611 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 514 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 822 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 753 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 407 },
			["Savexx|shekzeer"] = { 2, 4, -32, 484 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 534 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 769 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 650 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 573 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 753 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 791 },
			["Orestis|norushen"] = { 0, 5, -8, 933 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 761 },
			["Rv|shekzeer"] = { 3, 2, 39, 999 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 1000 },
			["Tslx|shekzeer"] = { 3, 2, 19, 526 },
			["Apologies|shekzeer"] = { 2, 2, -43, 407 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 825 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 756 },
			["Domnox|auberdine"] = { 0, 3, -7, 630 },
			["Sapmere|auberdine"] = { 0, 3, -7, 631 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 573 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 784 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1137 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 573 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 756 },
			["Monklife|garalon"] = { 0, 2, 0, 651 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1113 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1113 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 808 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 651 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 514 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 407 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 928 },
			["Элементовик|flamegor"] = { 0, 1, -13, 692 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 753 },
			["Dukhdan|garalon"] = { 19, 0, 75, 753 },
			["Luckynova|garalon"] = { 19, 0, 97, 925 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 753 },
			["Voljix|shekzeer"] = { 19, 0, 101, 753 },
			["Голмаш|flamegor"] = { 0, 19, -30, 753 },
		},
	},
}

