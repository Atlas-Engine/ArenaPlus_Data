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
	built = 1795431625,
	builtText = "2026-11-23 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Noneedground|shekzeer"] = { 12, 3, 860, 674 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 693 },
			["Trolly|shekzeer"] = { 5, 2, 65, 513 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 553 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 707 },
			["Ithildrin|mirage-raceway"] = { 4, 1, 49, 513 },
			["Kospi|auberdine"] = { 1, 4, -20, 703 },
			["Remedy|shekzeer"] = { 5, 0, 28, 707 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 703 },
			["Snaredog|shekzeer"] = { 2, 2, 43, 715 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 580 },
			["Zok|shekzeer"] = { 0, 3, -15, 720 },
			["Click|shekzeer"] = { 0, 2, -26, 693 },
			["Fiftyzen|everlook"] = { 1, 0, 6, 693 },
			["Selenagomezy|shekzeer"] = { 0, 1, -16, 693 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Click|shekzeer"] = { 12, 12, -17, 693 },
			["Selenagomezy|shekzeer"] = { 12, 12, -17, 693 },
			["Тутэнкаш|flamegor"] = { 8, 16, 49, 774 },
			["Crabzxtrapzx|shekzeer"] = { 10, 12, 194, 1089 },
			["Malte|shekzeer"] = { 10, 12, 206, 1088 },
			["Challedge|garalon"] = { 10, 10, 12, 725 },
			["Elimia|garalon"] = { 10, 10, 12, 725 },
			["Monklife|garalon"] = { 8, 11, 149, 743 },
			["Huanita|shekzeer"] = { 8, 10, -3, 766 },
			["Tackiella|shekzeer"] = { 8, 10, 4, 764 },
			["Jakamaestro|shekzeer"] = { 10, 6, 61, 771 },
			["Mbäppé|auberdine"] = { 13, 3, 233, 749 },
			["Xpa|everlook"] = { 8, 8, 22, 810 },
			["Noneedground|shekzeer"] = { 12, 3, 860, 674 },
			["Snaredog|shekzeer"] = { 12, 3, 262, 715 },
			["Gitrdone|shekzeer"] = { 5, 9, -49, 811 },
			["Orestis|norushen"] = { 6, 8, 54, 747 },
			["Rainbowrïder|shekzeer"] = { 5, 9, -46, 811 },
			["Egirlshealer|shekzeer"] = { 5, 8, 74, 796 },
			["Idontflinch|garalon"] = { 10, 3, 90, 873 },
			["Lastà|everlook"] = { 13, 0, 120, 1031 },
			["Reginalds|shekzeer"] = { 5, 8, 3, 770 },
			["Srtwhippa|everlook"] = { 6, 6, 51, 721 },
			["Yezze|garalon"] = { 5, 7, -48, 760 },
			["Egirlmanager|shekzeer"] = { 3, 8, 42, 873 },
			["Ithildrin|mirage-raceway"] = { 7, 4, 81, 513 },
			["Tilirao|mirage-raceway"] = { 0, 11, -65, 1053 },
			["Tpriestlx|shekzeer"] = { 9, 2, 33, 818 },
			["Repuls|mirage-raceway"] = { 5, 5, 49, 742 },
			["Вялыйхант|flamegor"] = { 6, 4, -5, 1099 },
			["Oyz|garalon"] = { 3, 6, 55, 842 },
			["Voljiz|shekzeer"] = { 6, 3, 91, 873 },
			["Aironsxx|shekzeer"] = { 3, 4, 4, 1107 },
			["Autoshotandy|shekzeer"] = { 1, 6, -40, 693 },
			["Bàdcát|auberdine"] = { 5, 2, 44, 931 },
			["Bobbysta|auberdine"] = { 5, 2, 33, 962 },
			["Chandlerbing|shekzeer"] = { 3, 4, 4, 1107 },
			["Drumåndbåss|shekzeer"] = { 4, 3, 5, 809 },
			["Gordonslaya|shekzeer"] = { 1, 6, -40, 835 },
			["Sneatz|garalon"] = { 1, 6, 21, 961 },
			["Trolly|shekzeer"] = { 5, 2, 65, 513 },
			["Тнэш|flamegor"] = { 4, 3, 5, 808 },
			["Kalreth|shekzeer"] = { 1, 5, -18, 553 },
			["Kostez|shekzeer"] = { 2, 4, -30, 733 },
			["Thaladra|shekzeer"] = { 2, 4, 21, 759 },
			["Adesanya|shekzeer"] = { 5, 0, 27, 707 },
			["Kospi|auberdine"] = { 1, 4, -20, 703 },
			["Remedy|shekzeer"] = { 5, 0, 28, 707 },
			["ßráhmálølz|shekzeer"] = { 4, 1, 70, 746 },
			["Tchaktchac|auberdine"] = { 1, 4, -20, 703 },
			["Ультрашторм|flamegor"] = { 0, 5, -13, 847 },
			["Brazqrx|shekzeer"] = { 4, 0, 37, 776 },
			["Derxibro|shekzeer"] = { 4, 0, 14, 1154 },
			["Jakamstar|shekzeer"] = { 2, 2, 6, 900 },
			["Raezin|everlook"] = { 0, 4, -23, 1212 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -4, 768 },
			["Sumtinrother|shekzeer"] = { 2, 2, -4, 771 },
			["Zabir|everlook"] = { 3, 1, 22, 1195 },
			["Bernadeta|shekzeer"] = { 1, 2, -5, 580 },
			["Biggestegoeu|shekzeer"] = { 2, 1, -10, 920 },
			["Cavitonnee|everlook"] = { 3, 0, 18, 854 },
			["Dkv|garalon"] = { 0, 3, -7, 1233 },
			["Domnox|auberdine"] = { 1, 2, -8, 750 },
			["Fiftyzen|everlook"] = { 3, 0, 17, 693 },
			["Froheostern|shekzeer"] = { 3, 0, 6, 996 },
			["Sapmere|auberdine"] = { 1, 2, -8, 750 },
			["Yhwatch|shekzeer"] = { 2, 1, -10, 912 },
			["Zok|shekzeer"] = { 0, 3, -15, 720 },
			["Juicyverÿ|shekzeer"] = { 2, 0, 24, 873 },
			["Эрмантраутх|flamegor"] = { 2, 0, 24, 916 },
			["Cavernicola|garalon"] = { 0, 1, -11, 893 },
			["Jrabbit|shekzeer"] = { 0, 1, 0, 1025 },
			["ßuckfiddy|shekzeer"] = { 0, 1, -5, 873 },
		},
		[2] = {
			["Ceendare|auberdine"] = { 0, 1, 0, 1104 },
			["Sangore|auberdine"] = { 0, 1, 0, 1105 },
		},
	},
}

