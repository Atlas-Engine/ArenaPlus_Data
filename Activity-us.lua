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
	built = 1795035592,
	builtText = "2026-11-18 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Chorizero|immerseus"] = { 3, 0, 9, 26 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 13 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 9, 9, 22, 157 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 154 },
			["Chorizero|immerseus"] = { 3, 0, 9, 26 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 13 },
			["Saintjuan|raden"] = { 1, 0, 3, 157 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 216 },
			["Møønzx|galakras"] = { 9, 9, 22, 157 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 154 },
			["Poizøønzx|galakras"] = { 12, 0, 58, 334 },
			["Møonxz|raden"] = { 0, 4, -22, 357 },
			["Chorizero|immerseus"] = { 3, 0, 9, 26 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 13 },
			["Antartik|lei-shen"] = { 0, 1, -8, 358 },
			["Saintjuan|raden"] = { 1, 0, 3, 157 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 216 },
			["Møønzx|galakras"] = { 9, 9, 22, 157 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 154 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 334 },
			["Møonxz|raden"] = { 0, 5, -29, 357 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 388 },
			["Chorizero|immerseus"] = { 3, 0, 9, 26 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 13 },
			["Verdex|raden"] = { 1, 1, -10, 694 },
			["Antartik|lei-shen"] = { 0, 1, -8, 358 },
			["Bouddha|raden"] = { 0, 1, 0, 424 },
			["Saintjuan|raden"] = { 1, 0, 3, 157 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Isabellee|raden"] = { 15, 19, -20, 874 },
			["Crtz|pagle"] = { 19, 11, 166, 884 },
			["Heidrichs|pagle"] = { 20, 7, 336, 216 },
			["Rettmonk|raden"] = { 16, 8, 170, 874 },
			["Deedaniels|raden"] = { 11, 11, 41, 874 },
			["Blinnker|pagle"] = { 11, 9, -54, 920 },
			["Nurfme|raden"] = { 15, 5, -16, 874 },
			["Sugarbear|raden"] = { 15, 5, -4, 965 },
			["Møønzx|galakras"] = { 9, 9, 22, 157 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 154 },
			["Slumpfoo|raden"] = { 8, 10, -28, 824 },
			["Dojareborn|pagle"] = { 9, 7, 84, 1001 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 334 },
			["Rëyy|raden"] = { 8, 8, 25, 901 },
			["Vipyrs|pagle"] = { 7, 8, 87, 874 },
			["Jonwald|pagle"] = { 4, 10, 15, 1030 },
			["Lunchmeat|nazgrim"] = { 12, 2, 114, 874 },
			["Mcjeezyy|pagle"] = { 4, 10, 15, 1030 },
			["Zertraproze|immerseus"] = { 12, 2, 123, 874 },
			["Blankisa|raden"] = { 7, 6, 48, 921 },
			["Budamm|pagle"] = { 8, 5, 124, 874 },
			["Questopresto|nazgrim"] = { 5, 8, -18, 913 },
			["Apechamp|raden"] = { 4, 8, 5, 948 },
			["Champlock|raden"] = { 8, 4, 29, 827 },
			["Theweave|raden"] = { 8, 4, 69, 827 },
			["Fotmwarrs|raden"] = { 7, 4, 51, 1029 },
			["Roach|raden"] = { 4, 7, -23, 1024 },
			["Spongeboby|pagle"] = { 4, 7, -18, 1022 },
			["Boofed|raden"] = { 7, 3, 32, 911 },
			["Drlovee|benediction"] = { 7, 3, 108, 909 },
			["Horniaf|pagle"] = { 3, 7, -40, 931 },
			["Killstrike|immerseus"] = { 3, 7, -59, 932 },
			["Putinga|pagle"] = { 5, 5, 14, 1087 },
			["Spreadpres|pagle"] = { 4, 6, 22, 914 },
			["Carnilumen|pagle"] = { 5, 4, 31, 874 },
			["Chiokeme|arugal-au"] = { 5, 4, 33, 763 },
			["Clomar|nazgrim"] = { 5, 4, 40, 1212 },
			["Dabddaddy|raden"] = { 6, 3, 12, 1105 },
			["Ecafkcufhi|raden"] = { 3, 6, -28, 954 },
			["Lvl|raden"] = { 6, 3, 8, 899 },
			["Nebupeach|nazgrim"] = { 5, 4, -2, 762 },
			["Pauliheal|raden"] = { 2, 7, -7, 1316 },
			["Soulsearch|raden"] = { 2, 7, -7, 1316 },
			["Tharealnerds|pagle"] = { 3, 6, -21, 1169 },
			["Cavallier|pagle"] = { 1, 7, -27, 1234 },
			["Fingerplay|raden"] = { 1, 7, -55, 789 },
			["Polutropos|galakras"] = { 4, 4, -14, 874 },
			["Spala|pagle"] = { 3, 5, -21, 874 },
			["Balota|raden"] = { 7, 0, 55, 1054 },
			["Bigdkslams|raden"] = { 4, 3, 17, 825 },
			["Atiko|galakras"] = { 3, 3, 9, 948 },
			["Dankenstein|lei-shen"] = { 3, 3, -8, 950 },
			["Donceno|nazgrim"] = { 1, 5, -15, 1177 },
			["Juul|raden"] = { 4, 2, 66, 798 },
			["Noescape|raden"] = { 4, 2, 79, 817 },
			["Pablosanchez|raden"] = { 5, 1, 7, 793 },
			["Xatica|pagle"] = { 2, 4, 1, 980 },
			["Drgspit|pagle"] = { 4, 1, 40, 1324 },
			["Edshearin|pagle"] = { 4, 1, 6, 803 },
			["Fullcream|galakras"] = { 2, 3, 18, 780 },
			["Ginastel|raden"] = { 2, 3, 7, 1001 },
			["Guanyîn|raden"] = { 4, 1, 4, 804 },
			["Møonxz|raden"] = { 0, 5, -29, 357 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 388 },
			["Wowamazingcc|raden"] = { 5, 0, 27, 1181 },
			["Xanacs|nazgrim"] = { 4, 1, 74, 1277 },
			["Gigasimpx|pagle"] = { 2, 2, -3, 894 },
			["Heriberto|pagle"] = { 2, 2, 16, 1054 },
			["Laraçroft|raden"] = { 2, 2, -2, 1074 },
			["Riptdy|raden"] = { 2, 2, -6, 894 },
			["Xatyka|pagle"] = { 2, 2, 8, 933 },
			["Xunamated|raden"] = { 2, 2, 43, 738 },
			["Chorizero|immerseus"] = { 3, 0, 9, 26 },
			["Gymsharkbadi|arugal-au"] = { 1, 2, 2, 1063 },
			["Kelaía|pagle"] = { 0, 3, -29, 1096 },
			["Persa|nazgrim"] = { 1, 2, -1, 1197 },
			["Reckington|raden"] = { 1, 2, -38, 1091 },
			["Reckology|raden"] = { 1, 2, -24, 1063 },
			["Rísk|lei-shen"] = { 2, 1, 23, 808 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 13 },
			["Thewalker|lei-shen"] = { 2, 1, 43, 796 },
			["Xntrixxz|arugal-au"] = { 1, 2, -38, 1090 },
			["Antartik|lei-shen"] = { 1, 1, 2, 358 },
			["Ascension|raden"] = { 0, 2, -14, 1021 },
			["Discnvragain|pagle"] = { 0, 2, 0, 1074 },
			["Feece|pagle"] = { 0, 2, -11, 878 },
			["Killou|pagle"] = { 1, 1, 8, 1234 },
			["Verdex|raden"] = { 1, 1, -10, 694 },
			["Vulture|raden"] = { 2, 0, 8, 1203 },
			["Bouddha|raden"] = { 0, 1, 0, 424 },
			["Holidayhamii|pagle"] = { 0, 1, -10, 874 },
			["Livingsteak|galakras"] = { 0, 1, -3, 938 },
			["Lonestarx|raden"] = { 1, 0, 2, 1234 },
			["Saintjuan|raden"] = { 1, 0, 3, 157 },
		},
	},
}

