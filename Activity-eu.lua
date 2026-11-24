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
	built = 1795518031,
	builtText = "2026-11-24 06:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ayvara|shekzeer"] = { 6, 10, -29, 706 },
			["Biggestegoeu|shekzeer"] = { 13, 3, 26, 656 },
			["Kobra|shekzeer"] = { 9, 7, 30, 694 },
			["Mythrugun|shekzeer"] = { 6, 10, -29, 705 },
			["Yhwatch|shekzeer"] = { 13, 3, 35, 656 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 678 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 678 },
			["Srtx|shekzeer"] = { 6, 5, 5, 694 },
			["Durianlover|shekzeer"] = { 5, 3, 41, 694 },
			["Katkota|shekzeer"] = { 2, 3, 17, 694 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 694 },
			["Leisure|shekzeer"] = { 0, 1, -1, 665 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 694 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 514 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 749 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 656 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 656 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 706 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 705 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 754 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 840 },
			["Kobra|shekzeer"] = { 9, 7, 30, 694 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 846 },
			["Srtx|shekzeer"] = { 11, 5, 65, 694 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 678 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 678 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 694 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 872 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 867 },
			["Idontflinch|garalon"] = { 7, 6, -10, 874 },
			["Yezze|shekzeer"] = { 9, 3, 64, 947 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 822 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 874 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 775 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 776 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 739 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 745 },
			["Zok|shekzeer"] = { 7, 3, 62, 789 },
			["Yezze|garalon"] = { 4, 5, -4, 1054 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1054 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 850 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 982 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 982 },
			["Dkv|garalon"] = { 0, 6, -35, 988 },
			["Click|shekzeer"] = { 1, 4, -20, 874 },
			["Commitment|shekzeer"] = { 2, 3, 14, 784 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 874 },
			["Katkota|shekzeer"] = { 2, 3, 17, 694 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 874 },
			["Syncix|everlook"] = { 3, 2, -1, 883 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 694 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1101 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 755 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 865 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 1198 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 866 },
			["Kennykk|garalon"] = { 0, 3, -9, 1104 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 1184 },
			["Tenex|norushen"] = { 0, 3, -18, 887 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 785 },
			["Xpu|everlook"] = { 3, 0, 19, 785 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 959 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 1264 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 1263 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 1234 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 850 },
			["Элементовик|flamegor"] = { 2, 0, 11, 852 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 743 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 1273 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 1234 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 848 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 1224 },
			["Leisure|shekzeer"] = { 0, 1, -1, 665 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 694 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 514 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 1234 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 1252 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 874 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1037 },
			["Rbgme|norushen"] = { 25, 0, 155, 874 },
			["Screwedup|norushen"] = { 25, 0, 149, 874 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 874 },
			["Рыкай|flamegor"] = { 0, 25, -136, 874 },
			["Dukhdan|garalon"] = { 2, 1, 8, 874 },
			["Lazinka|norushen"] = { 2, 1, 15, 874 },
			["Voljix|shekzeer"] = { 2, 1, 14, 874 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 874 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1026 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1009 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1017 },
		},
	},
}

