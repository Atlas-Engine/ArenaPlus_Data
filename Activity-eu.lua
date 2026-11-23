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
	built = 1795428023,
	builtText = "2026-11-23 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Challedge|garalon"] = { 9, 9, 11, 665 },
			["Elimia|garalon"] = { 9, 9, 11, 665 },
			["Huanita|shekzeer"] = { 8, 10, -3, 705 },
			["Monklife|garalon"] = { 7, 11, 132, 682 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 704 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 614 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 655 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 710 },
			["Yezze|garalon"] = { 5, 7, -48, 700 },
			["Jakamaestro|shekzeer"] = { 7, 4, 31, 711 },
			["Orestis|norushen"] = { 6, 5, 69, 687 },
			["Тутэнкаш|flamegor"] = { 5, 6, 24, 714 },
			["Repuls|mirage-raceway"] = { 5, 4, 56, 682 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 633 },
			["Trolly|shekzeer"] = { 5, 2, 65, 453 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 493 },
			["Kostez|shekzeer"] = { 2, 4, -30, 673 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 699 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 647 },
			["Ithildrin|mirage-raceway"] = { 4, 1, 49, 453 },
			["Kospi|auberdine"] = { 1, 4, -20, 643 },
			["Remedy|shekzeer"] = { 5, 0, 28, 647 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 686 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 643 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 716 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 708 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 711 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 520 },
			["Domnox|auberdine"] = { 1, 2, -8, 689 },
			["Mbäppé|auberdine"] = { 0, 3, 0, 689 },
			["Sapmere|auberdine"] = { 1, 2, -8, 690 },
			["Srtwhippa|everlook"] = { 0, 3, -15, 661 },
			["Zok|shekzeer"] = { 0, 3, -15, 660 },
			["Click|shekzeer"] = { 0, 2, -26, 633 },
			["Fiftyzen|everlook"] = { 1, 0, 6, 633 },
			["Selenagomezy|shekzeer"] = { 0, 1, -16, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 633 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 633 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 714 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 1028 },
			["Malte|shekzeer"] = { 10, 12, 206, 1028 },
			["Challedge|garalon"] = { 10, 10, 12, 665 },
			["Elimia|garalon"] = { 10, 10, 12, 665 },
			["Monklife|garalon"] = { 8, 11, 149, 682 },
			["Huanita|shekzeer"] = { 8, 10, -3, 705 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 704 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 711 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 689 },
			["Xpa|everlook"] = { 8, 8, 22, 750 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 614 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 655 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 751 },
			["Orestis|norushen"] = { 6, 8, 54, 687 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 751 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 736 },
			["Idontflinch|garalon"] = { 10, 3, 90, 813 },
			["Lastà|everlook"] = { 13, 0, 120, 971 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 710 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 661 },
			["Yezze|garalon"] = { 5, 7, -48, 700 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 813 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 453 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 993 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 758 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 682 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 1039 },
			["Oyz|garalon"] = { 3, 6, 55, 782 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 813 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1047 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 633 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 871 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 902 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1047 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 749 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 775 },
			["Sneatz|garalon"] = { 1, 6, 21, 901 },
			["Trolly|shekzeer"] = { 5, 2, 65, 453 },
			["Тнэш|flamegor"] = { 4, 3, 5, 748 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 493 },
			["Kostez|shekzeer"] = { 2, 4, -30, 673 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 699 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 647 },
			["Kospi|auberdine"] = { 1, 4, -20, 643 },
			["Remedy|shekzeer"] = { 5, 0, 28, 647 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 686 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 643 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 787 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 716 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1094 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 840 },
			["Raezin|everlook"] = { 0, 4, -23, 1152 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 708 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 711 },
			["Zabir|everlook"] = { 3, 1, 22, 1135 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 520 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 860 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 794 },
			["Dkv|garalon"] = { 0, 3, -7, 1173 },
			["Domnox|auberdine"] = { 1, 2, -8, 689 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 633 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 936 },
			["Sapmere|auberdine"] = { 1, 2, -8, 690 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 852 },
			["Zok|shekzeer"] = { 0, 3, -15, 660 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 813 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 856 },
			["Cavernicola|garalon"] = { 0, 1, -11, 833 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 964 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 813 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1044 },
			["Sangore|auberdine"] = { 0, 1, 0, 1045 },
		},
	},
}

