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
	built = 1795593621,
	builtText = "2026-11-25 03:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Apologies|shekzeer"] = { 2, 0, 0, 347 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 347 },
			["Theånswer|shekzeer"] = { 1, 0, 12, 347 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 518 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 596 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 479 },
			["Rodnichek|shekzeer"] = { 7, 11, -65, 596 },
			["Betix|shekzeer"] = { 6, 10, -42, 532 },
			["Commitment|shekzeer"] = { 5, 10, -35, 593 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 591 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 487 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 459 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 589 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 523 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 589 },
			["Xpa|everlook"] = { 7, 5, 36, 548 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 636 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 616 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 616 },
			["Mythrugun|shekzeer"] = { 6, 3, 18, 637 },
			["Huanita|shekzeer"] = { 7, 1, 52, 550 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 551 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 454 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 693 },
			["Idontflinch|garalon"] = { 6, 1, 39, 693 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 347 },
			["Savexx|shekzeer"] = { 2, 4, -32, 424 },
			["Srtx|shekzeer"] = { 2, 4, -15, 428 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 473 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 709 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 590 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 513 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 693 },
			["Tslx|shekzeer"] = { 3, 2, 19, 466 },
			["Apologies|shekzeer"] = { 2, 2, -43, 347 },
			["Zok|shekzeer"] = { 1, 3, -17, 478 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 696 },
			["Domnox|auberdine"] = { 0, 3, -7, 570 },
			["Sapmere|auberdine"] = { 0, 3, -7, 571 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 513 },
			["Hopedieslast|shekzeer"] = { 1, 1, 14, 693 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 513 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 696 },
			["Monklife|garalon"] = { 0, 2, 0, 590 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 591 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 454 },
			["Rodnichekx|shekzeer"] = { 0, 1, -6, 700 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 347 },
			["Элементовик|flamegor"] = { 0, 1, -13, 632 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 10, 0, 693 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 693 },
			["Dukhdan|garalon"] = { 1, 0, 3, 693 },
			["Voljix|shekzeer"] = { 1, 0, 4, 693 },
			["Голмаш|flamegor"] = { 0, 1, -1, 693 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 518 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 596 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 596 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 479 },
			["Betix|shekzeer"] = { 6, 10, -42, 532 },
			["Commitment|shekzeer"] = { 5, 10, -35, 593 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 591 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 487 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 459 },
			["Srtx|shekzeer"] = { 5, 8, -47, 428 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 589 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 523 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 589 },
			["Xpa|everlook"] = { 7, 5, 36, 548 },
			["Zok|shekzeer"] = { 5, 7, -44, 478 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 693 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 636 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 616 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 637 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 616 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 767 },
			["Huanita|shekzeer"] = { 7, 1, 52, 550 },
			["Idontflinch|garalon"] = { 7, 1, 45, 693 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 551 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 454 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 762 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 693 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 347 },
			["Savexx|shekzeer"] = { 2, 4, -32, 424 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 473 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 709 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 590 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 513 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 693 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 731 },
			["Orestis|norushen"] = { 0, 5, -8, 873 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 700 },
			["Rv|shekzeer"] = { 3, 2, 39, 939 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 939 },
			["Tslx|shekzeer"] = { 3, 2, 19, 466 },
			["Apologies|shekzeer"] = { 2, 2, -43, 347 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 765 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 696 },
			["Domnox|auberdine"] = { 0, 3, -7, 570 },
			["Sapmere|auberdine"] = { 0, 3, -7, 571 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 513 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 724 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1076 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 513 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 696 },
			["Monklife|garalon"] = { 0, 2, 0, 590 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 1053 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 1053 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 748 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 591 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 454 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 347 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 868 },
			["Элементовик|flamegor"] = { 0, 1, -13, 632 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 693 },
			["Dukhdan|garalon"] = { 19, 0, 75, 693 },
			["Luckynova|garalon"] = { 19, 0, 97, 865 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 693 },
			["Voljix|shekzeer"] = { 19, 0, 101, 693 },
			["Голмаш|flamegor"] = { 0, 19, -30, 693 },
		},
	},
}

