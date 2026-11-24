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
	built = 1795510830,
	builtText = "2026-11-24 04:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Biggestegoeu|shekzeer"] = { 17, 4, 32, 536 },
			["Yhwatch|shekzeer"] = { 17, 4, 42, 536 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 634 },
			["Ayvara|shekzeer"] = { 6, 10, -29, 586 },
			["Kobra|shekzeer"] = { 9, 7, 30, 574 },
			["Mythrugun|shekzeer"] = { 6, 10, -29, 585 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 558 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 558 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 655 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 656 },
			["Savexx|shekzeer"] = { 6, 5, -12, 629 },
			["Srtx|shekzeer"] = { 6, 5, 5, 574 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 619 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 625 },
			["Durianlover|shekzeer"] = { 5, 3, 41, 574 },
			["Zok|shekzeer"] = { 5, 3, 40, 669 },
			["Bernadeta|shekzeer"] = { 2, 4, -26, 702 },
			["Blèsséd|shekzeer"] = { 0, 5, -11, 720 },
			["Commitment|shekzeer"] = { 2, 3, 14, 664 },
			["Katkota|shekzeer"] = { 2, 3, 17, 574 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 574 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 635 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 665 },
			["Xpu|everlook"] = { 3, 0, 19, 665 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 623 },
			["Leisure|shekzeer"] = { 0, 1, -1, 545 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 574 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 394 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 629 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 536 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 536 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 586 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 585 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 634 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 720 },
			["Kobra|shekzeer"] = { 9, 7, 30, 574 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 726 },
			["Srtx|shekzeer"] = { 11, 5, 65, 574 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 558 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 558 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 574 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 752 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 747 },
			["Idontflinch|garalon"] = { 7, 6, -10, 754 },
			["Yezze|shekzeer"] = { 9, 3, 64, 827 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 702 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 754 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 655 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 656 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 619 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 625 },
			["Zok|shekzeer"] = { 7, 3, 62, 669 },
			["Yezze|garalon"] = { 4, 5, -4, 934 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 934 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 730 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 862 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 862 },
			["Dkv|garalon"] = { 0, 6, -35, 868 },
			["Click|shekzeer"] = { 1, 4, -20, 754 },
			["Commitment|shekzeer"] = { 2, 3, 14, 664 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 754 },
			["Katkota|shekzeer"] = { 2, 3, 17, 574 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 754 },
			["Syncix|everlook"] = { 3, 2, -1, 763 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 574 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 981 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 635 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 745 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 1078 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 746 },
			["Kennykk|garalon"] = { 0, 3, -9, 983 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 1064 },
			["Tenex|norushen"] = { 0, 3, -18, 767 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 665 },
			["Xpu|everlook"] = { 3, 0, 19, 665 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 839 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 1144 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 1143 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 1114 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 730 },
			["Элементовик|flamegor"] = { 2, 0, 11, 732 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 623 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 1153 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 1114 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 728 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 1104 },
			["Leisure|shekzeer"] = { 0, 1, -1, 545 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 574 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 394 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 1114 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 1132 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 754 },
			["Exhale|hoptallus"] = { 25, 0, 160, 917 },
			["Rbgme|norushen"] = { 25, 0, 155, 754 },
			["Screwedup|norushen"] = { 25, 0, 149, 754 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 754 },
			["Рыкай|flamegor"] = { 0, 25, -136, 754 },
			["Dukhdan|garalon"] = { 2, 1, 8, 754 },
			["Lazinka|norushen"] = { 2, 1, 15, 754 },
			["Voljix|shekzeer"] = { 2, 1, 14, 754 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 754 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 906 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 889 },
			["Wïns|shekzeer"] = { 1, 0, 96, 897 },
		},
	},
}

