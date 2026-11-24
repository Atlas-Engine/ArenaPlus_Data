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
	built = 1795514432,
	builtText = "2026-11-24 05:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Andysgone|shekzeer"] = { 9, 7, 30, 694 },
			["Ayvara|shekzeer"] = { 6, 10, -29, 646 },
			["Biggestegoeu|shekzeer"] = { 13, 3, 26, 596 },
			["Kobra|shekzeer"] = { 9, 7, 30, 634 },
			["Mythrugun|shekzeer"] = { 6, 10, -29, 645 },
			["Yhwatch|shekzeer"] = { 13, 3, 35, 596 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 618 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 618 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 715 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 716 },
			["Savexx|shekzeer"] = { 6, 5, -12, 689 },
			["Srtx|shekzeer"] = { 6, 5, 5, 634 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 679 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 685 },
			["Durianlover|shekzeer"] = { 5, 3, 41, 634 },
			["Katkota|shekzeer"] = { 2, 3, 17, 634 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 634 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 695 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 683 },
			["Leisure|shekzeer"] = { 0, 1, -1, 605 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 634 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 454 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Savexx|shekzeer"] = { 20, 8, 79, 689 },
			["Biggestegoeu|shekzeer"] = { 20, 5, 25, 596 },
			["Yhwatch|shekzeer"] = { 20, 5, 37, 596 },
			["Ayvara|shekzeer"] = { 6, 12, -47, 646 },
			["Mythrugun|shekzeer"] = { 6, 12, -47, 645 },
			["Andysgone|shekzeer"] = { 9, 7, 30, 694 },
			["Blèsséd|shekzeer"] = { 6, 10, 81, 780 },
			["Kobra|shekzeer"] = { 9, 7, 30, 634 },
			["Makkezi|shekzeer"] = { 6, 10, 19, 786 },
			["Srtx|shekzeer"] = { 11, 5, 65, 634 },
			["Ngmi|shekzeer"] = { 5, 10, -10, 618 },
			["Plåýßøt|shekzeer"] = { 5, 10, -10, 618 },
			["Durianlover|shekzeer"] = { 10, 4, 66, 634 },
			["Marlkx|shekzeer"] = { 7, 7, 24, 812 },
			["Фазерихх|flamegor"] = { 7, 7, 21, 807 },
			["Idontflinch|garalon"] = { 7, 6, -10, 814 },
			["Yezze|shekzeer"] = { 9, 3, 64, 887 },
			["Bernadeta|shekzeer"] = { 4, 7, -29, 762 },
			["Derxibro|shekzeer"] = { 6, 5, -46, 814 },
			["Gitrdone|shekzeer"] = { 6, 5, 6, 715 },
			["Rainbowrïder|shekzeer"] = { 6, 5, 7, 716 },
			["Bàdcát|auberdine"] = { 5, 5, 19, 679 },
			["Bobbysta|auberdine"] = { 5, 5, 9, 685 },
			["Zok|shekzeer"] = { 7, 3, 62, 729 },
			["Yezze|garalon"] = { 4, 5, -4, 994 },
			["Холлигерл|flamegor"] = { 4, 5, -8, 994 },
			["Weaverok|shekzeer"] = { 3, 5, -38, 790 },
			["Voodomann|mirage-raceway"] = { 3, 4, 25, 922 },
			["Вялыйхантер|flamegor"] = { 3, 4, 7, 922 },
			["Dkv|garalon"] = { 0, 6, -35, 928 },
			["Click|shekzeer"] = { 1, 4, -20, 814 },
			["Commitment|shekzeer"] = { 2, 3, 14, 724 },
			["Dardanët|mirage-raceway"] = { 3, 2, -1, 814 },
			["Katkota|shekzeer"] = { 2, 3, 17, 634 },
			["Selenagomezy|shekzeer"] = { 1, 4, -20, 814 },
			["Syncix|everlook"] = { 3, 2, -1, 823 },
			["Arabicano|shekzeer"] = { 2, 2, 10, 634 },
			["Bakomba|shekzeer"] = { 3, 1, -9, 1041 },
			["Mypupy|shekzeer"] = { 2, 2, 30, 695 },
			["Rainbôwrider|shekzeer"] = { 2, 2, -11, 805 },
			["Snaredog|shekzeer"] = { 2, 2, 38, 1138 },
			["Sumtinrother|shekzeer"] = { 2, 2, -11, 806 },
			["Kennykk|garalon"] = { 0, 3, -9, 1044 },
			["Noneedground|shekzeer"] = { 1, 2, 22, 1124 },
			["Tenex|norushen"] = { 0, 3, -18, 827 },
			["Wheelkick|shekzeer"] = { 3, 0, 17, 725 },
			["Xpu|everlook"] = { 3, 0, 19, 725 },
			["Вялыйкидней|flamegor"] = { 0, 3, -30, 899 },
			["Jäckynkô|hoptallus"] = { 2, 0, 10, 1204 },
			["Refresherr|hoptallus"] = { 2, 0, 10, 1203 },
			["Вполпинка|flamegor"] = { 0, 2, -13, 1174 },
			["Сочныиочень|flamegor"] = { 2, 0, 11, 790 },
			["Элементовик|flamegor"] = { 2, 0, 11, 792 },
			["Язлаякиска|flamegor"] = { 0, 2, 0, 683 },
			["Crazyskiill|shekzeer"] = { 0, 1, -2, 1213 },
			["Crazyskill|shekzeer"] = { 0, 1, -5, 1174 },
			["Jakamoto|shekzeer"] = { 0, 1, -14, 788 },
			["Kennyykofot|garalon"] = { 0, 1, 0, 1164 },
			["Leisure|shekzeer"] = { 0, 1, -1, 605 },
			["Madaurmada|shekzeer"] = { 0, 1, -15, 634 },
			["Plåýböt|shekzeer"] = { 0, 1, 0, 454 },
			["Prîestotp|shekzeer"] = { 1, 0, 5, 1174 },
			["Хаулдженкинс|flamegor"] = { 0, 1, -9, 1192 },
		},
		[2] = {
			["Голмаш|flamegor"] = { 0, 27, -69, 814 },
			["Exhale|hoptallus"] = { 25, 0, 160, 977 },
			["Rbgme|norushen"] = { 25, 0, 155, 814 },
			["Screwedup|norushen"] = { 25, 0, 149, 814 },
			["Totemgodx|shekzeer"] = { 0, 25, -89, 814 },
			["Рыкай|flamegor"] = { 0, 25, -136, 814 },
			["Dukhdan|garalon"] = { 2, 1, 8, 814 },
			["Lazinka|norushen"] = { 2, 1, 15, 814 },
			["Voljix|shekzeer"] = { 2, 1, 14, 814 },
			["Missgrip|sulfuron"] = { 0, 2, 0, 814 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 966 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 949 },
			["Wïns|shekzeer"] = { 1, 0, 96, 957 },
		},
	},
}

