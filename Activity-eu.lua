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
	built = 1795590028,
	builtText = "2026-11-25 02:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Apologies|shekzeer"] = { 2, 0, 0, 287 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 287 },
			["Theånswer|shekzeer"] = { 1, 0, 12, 287 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 458 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 536 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 419 },
			["Rodnichek|shekzeer"] = { 7, 11, -65, 537 },
			["Betix|shekzeer"] = { 6, 10, -42, 472 },
			["Commitment|shekzeer"] = { 5, 10, -35, 533 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 531 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 427 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 399 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 529 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 464 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 529 },
			["Xpa|everlook"] = { 7, 5, 36, 488 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 576 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 556 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 577 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 556 },
			["Huanita|shekzeer"] = { 7, 1, 52, 490 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 491 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 394 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 702 },
			["Derxibro|shekzeer"] = { 6, 1, 31, 708 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 633 },
			["Idontflinch|garalon"] = { 6, 1, 39, 633 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 287 },
			["Savexx|shekzeer"] = { 2, 4, -32, 364 },
			["Srtx|shekzeer"] = { 2, 4, -15, 368 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 414 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 649 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 530 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 453 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 633 },
			["Tslx|shekzeer"] = { 3, 2, 19, 406 },
			["Apologies|shekzeer"] = { 2, 2, -43, 287 },
			["Zok|shekzeer"] = { 1, 3, -17, 418 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 705 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 636 },
			["Domnox|auberdine"] = { 0, 3, -7, 510 },
			["Sapmere|auberdine"] = { 0, 3, -7, 511 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 453 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 664 },
			["Hopedieslast|shekzeer"] = { 1, 1, 14, 633 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 453 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 636 },
			["Monklife|garalon"] = { 0, 2, 0, 531 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 688 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 531 },
			["Keyoo|shekzeer"] = { 0, 1, -15, 671 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 394 },
			["Rodnichekx|shekzeer"] = { 0, 1, -6, 641 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 287 },
			["Элементовик|flamegor"] = { 0, 1, -13, 572 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 10, 0, 633 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 633 },
			["Dukhdan|garalon"] = { 1, 0, 3, 633 },
			["Voljix|shekzeer"] = { 1, 0, 4, 633 },
			["Голмаш|flamegor"] = { 0, 1, -1, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Marlkx|shekzeer"] = { 15, 14, 20, 458 },
			["Rodnichek|shekzeer"] = { 13, 16, -50, 537 },
			["Srtdrippa|everlook"] = { 13, 7, 66, 536 },
			["Mypupy|shekzeer"] = { 7, 11, 139, 419 },
			["Betix|shekzeer"] = { 6, 10, -42, 472 },
			["Commitment|shekzeer"] = { 5, 10, -35, 533 },
			["Menesueas|shekzeer"] = { 5, 10, 48, 531 },
			["Froheostern|shekzeer"] = { 7, 7, -18, 427 },
			["Sugarbear|shekzeer"] = { 7, 7, 165, 399 },
			["Srtx|shekzeer"] = { 5, 8, -47, 368 },
			["Brazqr|shekzeer"] = { 6, 6, -11, 529 },
			["Jakamaestro|shekzeer"] = { 7, 5, 28, 464 },
			["ßlinkd|shekzeer"] = { 6, 6, -11, 529 },
			["Xpa|everlook"] = { 7, 5, 36, 488 },
			["Zok|shekzeer"] = { 5, 7, -44, 418 },
			["Hopedieslast|shekzeer"] = { 6, 5, -15, 633 },
			["Ayvara|shekzeer"] = { 7, 3, 28, 576 },
			["Gitrdone|shekzeer"] = { 5, 5, 15, 556 },
			["Mythrugun|shekzeer"] = { 7, 3, 28, 577 },
			["Rainbowrïder|shekzeer"] = { 5, 5, 15, 556 },
			["Derxibro|shekzeer"] = { 7, 1, 35, 708 },
			["Huanita|shekzeer"] = { 7, 1, 52, 490 },
			["Idontflinch|garalon"] = { 7, 1, 45, 633 },
			["Tackiella|shekzeer"] = { 7, 1, 55, 491 },
			["Angrycubanx|shekzeer"] = { 3, 4, -26, 394 },
			["Bakomba|shekzeer"] = { 4, 3, -11, 702 },
			["Durianlover|shekzeer"] = { 4, 3, 10, 633 },
			["Theånswer|shekzeer"] = { 6, 1, 72, 287 },
			["Savexx|shekzeer"] = { 2, 4, -32, 364 },
			["Albatrowss|shekzeer"] = { 3, 2, 12, 414 },
			["Capcarapkin|shekzeer"] = { 1, 4, -25, 649 },
			["Cavitonnee|everlook"] = { 5, 0, 33, 530 },
			["Fiftyzen|everlook"] = { 5, 0, 32, 453 },
			["Ginftw|shekzeer"] = { 4, 1, 66, 633 },
			["Keyoo|shekzeer"] = { 0, 5, -56, 671 },
			["Orestis|norushen"] = { 0, 5, -8, 813 },
			["Rodnichekx|shekzeer"] = { 0, 5, -20, 641 },
			["Rv|shekzeer"] = { 3, 2, 39, 879 },
			["Straviouse|hoptallus"] = { 3, 2, 56, 880 },
			["Tslx|shekzeer"] = { 3, 2, 19, 406 },
			["Apologies|shekzeer"] = { 2, 2, -43, 287 },
			["Вялыйхант|flamegor"] = { 2, 2, 3, 705 },
			["Цианидвектор|flamegor"] = { 1, 3, -15, 636 },
			["Domnox|auberdine"] = { 0, 3, -7, 510 },
			["Sapmere|auberdine"] = { 0, 3, -7, 511 },
			["Allanaa|mirage-raceway"] = { 0, 2, 0, 453 },
			["Blèsséd|shekzeer"] = { 0, 2, -3, 664 },
			["Cavernicola|garalon"] = { 0, 2, -2, 1017 },
			["Kalreth|shekzeer"] = { 0, 2, -19, 453 },
			["Makkezi|shekzeer"] = { 0, 2, -6, 636 },
			["Monklife|garalon"] = { 0, 2, 0, 531 },
			["Noneedground|shekzeer"] = { 2, 0, 34, 993 },
			["Snaredog|shekzeer"] = { 2, 0, 16, 993 },
			["Icantrap|shekzeer"] = { 0, 1, -7, 688 },
			["Juicyverÿ|shekzeer"] = { 0, 1, -14, 531 },
			["Qwanya|shekzeer"] = { 1, 0, 19, 394 },
			["Ryuuman|shekzeer"] = { 1, 0, 24, 287 },
			["Srtwhippa|everlook"] = { 1, 0, 6, 808 },
			["Элементовик|flamegor"] = { 0, 1, -13, 572 },
		},
		[2] = {
			["Believeme|norushen"] = { 0, 19, 0, 633 },
			["Dukhdan|garalon"] = { 19, 0, 75, 633 },
			["Luckynova|garalon"] = { 19, 0, 97, 805 },
			["Missgrip|sulfuron"] = { 0, 19, 0, 633 },
			["Voljix|shekzeer"] = { 19, 0, 101, 633 },
			["Голмаш|flamegor"] = { 0, 19, -30, 633 },
		},
	},
}

