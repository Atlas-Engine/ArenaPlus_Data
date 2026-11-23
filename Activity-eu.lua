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
	built = 1795424424,
	builtText = "2026-11-23 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Challedge|garalon"] = { 9, 9, 11, 605 },
			["Elimia|garalon"] = { 9, 9, 11, 605 },
			["Huanita|shekzeer"] = { 8, 10, -3, 645 },
			["Monklife|garalon"] = { 7, 11, 132, 622 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 644 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 554 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 595 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 676 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 650 },
			["Yezze|garalon"] = { 5, 7, -48, 640 },
			["Gitrdone|shekzeer"] = { 3, 8, -65, 691 },
			["Jakamaestro|shekzeer"] = { 7, 4, 31, 651 },
			["Orestis|norushen"] = { 6, 5, 69, 627 },
			["Rainbowrïder|shekzeer"] = { 3, 8, -63, 691 },
			["Тутэнкаш|flamegor"] = { 5, 6, 24, 654 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 622 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 573 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 715 },
			["Tpriestlx|shekzeer"] = { 7, 0, 50, 698 },
			["Trolly|shekzeer"] = { 5, 2, 65, 393 },
			["Xpa|everlook"] = { 3, 4, 2, 690 },
			["Drumåndbåss|shekzeer"] = { 3, 3, -6, 689 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 433 },
			["Kostez|shekzeer"] = { 2, 4, -30, 613 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 639 },
			["Тнэш|flamegor"] = { 3, 3, -6, 688 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 587 },
			["Ithildrin|mirage-raceway"] = { 4, 1, 49, 393 },
			["Kospi|auberdine"] = { 1, 4, -20, 583 },
			["Remedy|shekzeer"] = { 5, 0, 28, 587 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 626 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 583 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 656 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 648 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 651 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 460 },
			["Domnox|auberdine"] = { 1, 2, -8, 630 },
			["Mbäppé|auberdine"] = { 0, 3, 0, 629 },
			["Sapmere|auberdine"] = { 1, 2, -8, 630 },
			["Srtwhippa|everlook"] = { 0, 3, -15, 601 },
			["Zok|shekzeer"] = { 0, 3, -15, 600 },
			["Click|shekzeer"] = { 0, 2, -26, 573 },
			["Fiftyzen|everlook"] = { 1, 0, 6, 573 },
			["Selenagomezy|shekzeer"] = { 0, 1, -16, 573 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 573 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 573 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 654 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 969 },
			["Malte|shekzeer"] = { 10, 12, 206, 968 },
			["Challedge|garalon"] = { 10, 10, 12, 605 },
			["Elimia|garalon"] = { 10, 10, 12, 605 },
			["Monklife|garalon"] = { 8, 11, 149, 622 },
			["Huanita|shekzeer"] = { 8, 10, -3, 645 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 644 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 651 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 629 },
			["Xpa|everlook"] = { 8, 8, 22, 690 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 554 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 595 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 691 },
			["Orestis|norushen"] = { 6, 8, 54, 627 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 691 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 676 },
			["Idontflinch|garalon"] = { 10, 3, 90, 753 },
			["Lastà|everlook"] = { 13, 0, 120, 911 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 650 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 601 },
			["Yezze|garalon"] = { 5, 7, -48, 640 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 753 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 393 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 933 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 698 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 622 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 979 },
			["Oyz|garalon"] = { 3, 6, 55, 722 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 753 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 987 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 573 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 811 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 842 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 987 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 689 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 715 },
			["Sneatz|garalon"] = { 1, 6, 21, 841 },
			["Trolly|shekzeer"] = { 5, 2, 65, 393 },
			["Тнэш|flamegor"] = { 4, 3, 5, 688 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 433 },
			["Kostez|shekzeer"] = { 2, 4, -30, 613 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 639 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 587 },
			["Kospi|auberdine"] = { 1, 4, -20, 583 },
			["Remedy|shekzeer"] = { 5, 0, 28, 587 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 626 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 583 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 727 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 656 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1034 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 780 },
			["Raezin|everlook"] = { 0, 4, -23, 1092 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 648 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 651 },
			["Zabir|everlook"] = { 3, 1, 22, 1075 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 460 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 800 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 734 },
			["Dkv|garalon"] = { 0, 3, -7, 1113 },
			["Domnox|auberdine"] = { 1, 2, -8, 630 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 573 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 876 },
			["Sapmere|auberdine"] = { 1, 2, -8, 630 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 792 },
			["Zok|shekzeer"] = { 0, 3, -15, 600 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 753 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 796 },
			["Cavernicola|garalon"] = { 0, 1, -11, 773 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 905 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 753 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 984 },
			["Sangore|auberdine"] = { 0, 1, 0, 985 },
		},
	},
}

