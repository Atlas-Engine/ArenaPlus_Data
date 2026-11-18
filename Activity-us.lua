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

ns.ACTIVITY_BY_REGION["us"] = {
	built = 1795031995,
	builtText = "2026-11-18 03:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 9, 9, 22, 97 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 94 },
			["Heidrichs|pagle"] = { 8, 7, 104, 156 },
			["Saintjuan|raden"] = { 1, 0, 3, 97 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 156 },
			["Møønzx|galakras"] = { 9, 9, 22, 97 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 94 },
			["Poizøønzx|galakras"] = { 12, 0, 58, 274 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 328 },
			["Møonxz|raden"] = { 0, 4, -22, 297 },
			["Antartik|lei-shen"] = { 0, 1, -8, 298 },
			["Saintjuan|raden"] = { 1, 0, 3, 97 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 156 },
			["Møønzx|galakras"] = { 9, 9, 22, 97 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 94 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 274 },
			["Chiokeme|arugal-au"] = { 3, 3, 9, 703 },
			["Nebupeach|nazgrim"] = { 3, 3, -12, 702 },
			["Møonxz|raden"] = { 0, 5, -29, 297 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 328 },
			["Xunamated|raden"] = { 2, 2, 43, 678 },
			["Antartik|lei-shen"] = { 1, 1, 2, 298 },
			["Verdex|raden"] = { 1, 1, -10, 634 },
			["Bouddha|raden"] = { 0, 1, 0, 364 },
			["Saintjuan|raden"] = { 1, 0, 3, 97 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Isabellee|raden"] = { 15, 19, -20, 814 },
			["Crtz|pagle"] = { 19, 11, 166, 824 },
			["Heidrichs|pagle"] = { 20, 7, 336, 156 },
			["Rettmonk|raden"] = { 16, 8, 170, 814 },
			["Deedaniels|raden"] = { 11, 11, 41, 814 },
			["Blinnker|pagle"] = { 11, 9, -54, 860 },
			["Nurfme|raden"] = { 15, 5, -16, 814 },
			["Sugarbear|raden"] = { 15, 5, -4, 905 },
			["Møønzx|galakras"] = { 9, 9, 22, 97 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 94 },
			["Slumpfoo|raden"] = { 8, 10, -28, 764 },
			["Dojareborn|pagle"] = { 9, 7, 84, 941 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 274 },
			["Rëyy|raden"] = { 8, 8, 25, 841 },
			["Vipyrs|pagle"] = { 7, 8, 87, 814 },
			["Jonwald|pagle"] = { 4, 10, 15, 970 },
			["Lunchmeat|nazgrim"] = { 12, 2, 114, 814 },
			["Mcjeezyy|pagle"] = { 4, 10, 15, 970 },
			["Zertraproze|immerseus"] = { 12, 2, 123, 814 },
			["Blankisa|raden"] = { 7, 6, 48, 861 },
			["Budamm|pagle"] = { 8, 5, 124, 814 },
			["Questopresto|nazgrim"] = { 5, 8, -18, 853 },
			["Apechamp|raden"] = { 4, 8, 5, 888 },
			["Champlock|raden"] = { 8, 4, 29, 767 },
			["Theweave|raden"] = { 8, 4, 69, 767 },
			["Fotmwarrs|raden"] = { 7, 4, 51, 969 },
			["Roach|raden"] = { 4, 7, -23, 964 },
			["Spongeboby|pagle"] = { 4, 7, -18, 963 },
			["Boofed|raden"] = { 7, 3, 32, 851 },
			["Drlovee|benediction"] = { 7, 3, 108, 849 },
			["Horniaf|pagle"] = { 3, 7, -40, 871 },
			["Killstrike|immerseus"] = { 3, 7, -59, 872 },
			["Putinga|pagle"] = { 5, 5, 14, 1028 },
			["Spreadpres|pagle"] = { 4, 6, 22, 854 },
			["Carnilumen|pagle"] = { 5, 4, 31, 814 },
			["Chiokeme|arugal-au"] = { 5, 4, 33, 703 },
			["Clomar|nazgrim"] = { 5, 4, 40, 1153 },
			["Dabddaddy|raden"] = { 6, 3, 12, 1046 },
			["Ecafkcufhi|raden"] = { 3, 6, -28, 894 },
			["Lvl|raden"] = { 6, 3, 8, 839 },
			["Nebupeach|nazgrim"] = { 5, 4, -2, 702 },
			["Pauliheal|raden"] = { 2, 7, -7, 1256 },
			["Soulsearch|raden"] = { 2, 7, -7, 1256 },
			["Tharealnerds|pagle"] = { 3, 6, -21, 1109 },
			["Cavallier|pagle"] = { 1, 7, -27, 1174 },
			["Fingerplay|raden"] = { 1, 7, -55, 729 },
			["Polutropos|galakras"] = { 4, 4, -14, 814 },
			["Spala|pagle"] = { 3, 5, -21, 814 },
			["Balota|raden"] = { 7, 0, 55, 994 },
			["Bigdkslams|raden"] = { 4, 3, 17, 765 },
			["Atiko|galakras"] = { 3, 3, 9, 888 },
			["Dankenstein|lei-shen"] = { 3, 3, -8, 890 },
			["Donceno|nazgrim"] = { 1, 5, -15, 1118 },
			["Juul|raden"] = { 4, 2, 66, 738 },
			["Noescape|raden"] = { 4, 2, 79, 757 },
			["Pablosanchez|raden"] = { 5, 1, 7, 733 },
			["Xatica|pagle"] = { 2, 4, 1, 920 },
			["Drgspit|pagle"] = { 4, 1, 40, 1264 },
			["Edshearin|pagle"] = { 4, 1, 6, 743 },
			["Fullcream|galakras"] = { 2, 3, 18, 720 },
			["Ginastel|raden"] = { 2, 3, 7, 941 },
			["Guanyîn|raden"] = { 4, 1, 4, 744 },
			["Møonxz|raden"] = { 0, 5, -29, 297 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 328 },
			["Wowamazingcc|raden"] = { 5, 0, 27, 1121 },
			["Xanacs|nazgrim"] = { 4, 1, 74, 1217 },
			["Gigasimpx|pagle"] = { 2, 2, -3, 834 },
			["Heriberto|pagle"] = { 2, 2, 16, 994 },
			["Laraçroft|raden"] = { 2, 2, -2, 1014 },
			["Riptdy|raden"] = { 2, 2, -6, 834 },
			["Xatyka|pagle"] = { 2, 2, 8, 873 },
			["Xunamated|raden"] = { 2, 2, 43, 678 },
			["Gymsharkbadi|arugal-au"] = { 1, 2, 2, 1003 },
			["Kelaía|pagle"] = { 0, 3, -29, 1036 },
			["Persa|nazgrim"] = { 1, 2, -1, 1137 },
			["Reckington|raden"] = { 1, 2, -38, 1031 },
			["Reckology|raden"] = { 1, 2, -24, 1003 },
			["Rísk|lei-shen"] = { 2, 1, 23, 748 },
			["Thewalker|lei-shen"] = { 2, 1, 43, 736 },
			["Xntrixxz|arugal-au"] = { 1, 2, -38, 1030 },
			["Antartik|lei-shen"] = { 1, 1, 2, 298 },
			["Ascension|raden"] = { 0, 2, -14, 961 },
			["Discnvragain|pagle"] = { 0, 2, 0, 1014 },
			["Feece|pagle"] = { 0, 2, -11, 818 },
			["Killou|pagle"] = { 1, 1, 8, 1174 },
			["Verdex|raden"] = { 1, 1, -10, 634 },
			["Vulture|raden"] = { 2, 0, 8, 1143 },
			["Bouddha|raden"] = { 0, 1, 0, 364 },
			["Holidayhamii|pagle"] = { 0, 1, -10, 814 },
			["Livingsteak|galakras"] = { 0, 1, -3, 878 },
			["Lonestarx|raden"] = { 1, 0, 2, 1174 },
			["Saintjuan|raden"] = { 1, 0, 3, 97 },
		},
	},
}

