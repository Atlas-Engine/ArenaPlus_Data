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
	built = 1795525224,
	builtText = "2026-11-24 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Plåýböt|shekzeer"] = { 0, 1, 0, 633 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 869 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 776 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 776 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 826 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 825 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 874 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 959 },
			["Kobra|shekzeer"] = { 9, 7, 30, 813 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 966 },
			["Srtx|shekzeer"] = { 11, 5, 65, 813 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 798 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 798 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 813 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 992 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 987 },
			["Idontflinch|garalon"] = { 7, 6, -10, 993 },
			["Yezze|shekzeer"] = { 9, 3, 64, 1067 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 942 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 993 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 895 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 896 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 859 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 865 },
			["Zok|shekzeer"] = { 7, 3, 62, 909 },
			["Yezze|garalon"] = { 4, 5, -4, 1173 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 1173 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 970 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 1102 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 1102 },
			["Dkv|garalon"] = { 0, 6, -35, 1108 },
			["Click|shekzeer"] = { 1, 4, -20, 993 },
			["Commitment|shekzeer"] = { 2, 3, 14, 904 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 993 },
			["Katkota|shekzeer"] = { 2, 3, 17, 813 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 993 },
			["Syncix|everlook"] = { 3, 2, -1, 1003 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 813 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1220 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 874 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 985 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 1318 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 986 },
			["Kennykk|garalon"] = { 0, 3, -9, 1223 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 1304 },
			["Tenex|norushen"] = { 0, 3, -18, 1007 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 905 },
			["Xpu|everlook"] = { 3, 0, 19, 905 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 1079 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 1384 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 1383 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 1353 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 970 },
			["Элементовик|flamegor"] = { 2, 0, 11, 972 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 863 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 1393 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 1353 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 968 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 1344 },
			["Leisure|shekzeer"] = { 0, 1, -1, 785 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 813 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 633 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 1353 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 1372 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 993 },
			["Exhale|hoptallus"] = { 25, 0, 160, 1157 },
			["Rbgme|norushen"] = { 25, 0, 155, 993 },
			["Screwedup|norushen"] = { 25, 0, 149, 993 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 993 },
			["Рыкай|flamegor"] = { 0, 25, -136, 993 },
			["Dukhdan|garalon"] = { 2, 1, 8, 993 },
			["Lazinka|norushen"] = { 2, 1, 15, 993 },
			["Voljix|shekzeer"] = { 2, 1, 14, 993 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 993 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 1146 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 1129 },
			["Wïns|shekzeer"] = { 1, 0, 96, 1137 },
		},
	},
}

