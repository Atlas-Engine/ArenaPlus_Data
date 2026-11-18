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
	built = 1795042806,
	builtText = "2026-11-18 06:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Chorizero|immerseus"] = { 3, 0, 9, 146 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 133 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 9, 9, 22, 277 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 274 },
			["Heidrichs|pagle"] = { 8, 7, 104, 337 },
			["Chorizero|immerseus"] = { 3, 0, 9, 146 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 133 },
			["Saintjuan|raden"] = { 1, 0, 3, 277 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 337 },
			["Møønzx|galakras"] = { 9, 9, 22, 277 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 274 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 454 },
			["Møonxz|raden"] = { 0, 5, -29, 478 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 509 },
			["Chorizero|immerseus"] = { 3, 0, 9, 146 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 133 },
			["Antartik|lei-shen"] = { 0, 1, -8, 478 },
			["Bouddha|raden"] = { 0, 1, 0, 544 },
			["Saintjuan|raden"] = { 1, 0, 3, 277 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Isabellee|raden"] = { 15, 19, -20, 995 },
			["Heidrichs|pagle"] = { 20, 7, 336, 337 },
			["Crtz|pagle"] = { 16, 8, 169, 1004 },
			["Rettmonk|raden"] = { 16, 8, 170, 994 },
			["Deedaniels|raden"] = { 11, 11, 41, 994 },
			["Blinnker|pagle"] = { 11, 9, -54, 1041 },
			["Nurfme|raden"] = { 15, 5, -16, 994 },
			["Sugarbear|raden"] = { 15, 5, -4, 1085 },
			["Møønzx|galakras"] = { 9, 9, 22, 277 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 274 },
			["Slumpfoo|raden"] = { 8, 10, -28, 944 },
			["Dojareborn|pagle"] = { 9, 7, 84, 1121 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 454 },
			["Rëyy|raden"] = { 8, 8, 25, 1021 },
			["Vipyrs|pagle"] = { 7, 8, 87, 994 },
			["Jonwald|pagle"] = { 4, 10, 15, 1150 },
			["Lunchmeat|nazgrim"] = { 12, 2, 114, 994 },
			["Mcjeezyy|pagle"] = { 4, 10, 15, 1150 },
			["Zertraproze|immerseus"] = { 12, 2, 123, 994 },
			["Blankisa|raden"] = { 7, 6, 48, 1041 },
			["Budamm|pagle"] = { 8, 5, 124, 994 },
			["Questopresto|nazgrim"] = { 5, 8, -18, 1033 },
			["Apechamp|raden"] = { 4, 8, 5, 1068 },
			["Champlock|raden"] = { 8, 4, 29, 947 },
			["Theweave|raden"] = { 8, 4, 69, 947 },
			["Fotmwarrs|raden"] = { 7, 4, 51, 1149 },
			["Roach|raden"] = { 4, 7, -23, 1145 },
			["Spongeboby|pagle"] = { 4, 7, -18, 1143 },
			["Boofed|raden"] = { 7, 3, 32, 1032 },
			["Drlovee|benediction"] = { 7, 3, 108, 1029 },
			["Horniaf|pagle"] = { 3, 7, -40, 1051 },
			["Killstrike|immerseus"] = { 3, 7, -59, 1052 },
			["Spreadpres|pagle"] = { 4, 6, 22, 1034 },
			["Carnilumen|pagle"] = { 5, 4, 31, 994 },
			["Chiokeme|arugal-au"] = { 5, 4, 33, 883 },
			["Dabddaddy|raden"] = { 6, 3, 12, 1226 },
			["Ecafkcufhi|raden"] = { 3, 6, -28, 1074 },
			["Lvl|raden"] = { 6, 3, 8, 1019 },
			["Nebupeach|nazgrim"] = { 5, 4, -2, 882 },
			["Pauliheal|raden"] = { 2, 7, -7, 1436 },
			["Soulsearch|raden"] = { 2, 7, -7, 1436 },
			["Tharealnerds|pagle"] = { 3, 6, -21, 1289 },
			["Cavallier|pagle"] = { 1, 7, -27, 1354 },
			["Fingerplay|raden"] = { 1, 7, -55, 909 },
			["Polutropos|galakras"] = { 4, 4, -14, 994 },
			["Spala|pagle"] = { 3, 5, -21, 994 },
			["Balota|raden"] = { 7, 0, 55, 1174 },
			["Bigdkslams|raden"] = { 4, 3, 17, 945 },
			["Atiko|galakras"] = { 3, 3, 9, 1068 },
			["Clomar|nazgrim"] = { 3, 3, 22, 1333 },
			["Dankenstein|lei-shen"] = { 3, 3, -8, 1070 },
			["Donceno|nazgrim"] = { 1, 5, -15, 1298 },
			["Juul|raden"] = { 4, 2, 66, 919 },
			["Noescape|raden"] = { 4, 2, 79, 937 },
			["Xatica|pagle"] = { 2, 4, 1, 1100 },
			["Edshearin|pagle"] = { 4, 1, 6, 924 },
			["Fullcream|galakras"] = { 2, 3, 18, 901 },
			["Ginastel|raden"] = { 2, 3, 7, 1121 },
			["Guanyîn|raden"] = { 4, 1, 4, 924 },
			["Møonxz|raden"] = { 0, 5, -29, 478 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 509 },
			["Wowamazingcc|raden"] = { 5, 0, 27, 1301 },
			["Xanacs|nazgrim"] = { 4, 1, 74, 1397 },
			["Gigasimpx|pagle"] = { 2, 2, -3, 1014 },
			["Heriberto|pagle"] = { 2, 2, 16, 1174 },
			["Laraçroft|raden"] = { 2, 2, -2, 1194 },
			["Putinga|pagle"] = { 2, 2, -3, 1208 },
			["Riptdy|raden"] = { 2, 2, -6, 1014 },
			["Xatyka|pagle"] = { 2, 2, 8, 1053 },
			["Xunamated|raden"] = { 2, 2, 43, 858 },
			["Chorizero|immerseus"] = { 3, 0, 9, 146 },
			["Gymsharkbadi|arugal-au"] = { 1, 2, 2, 1184 },
			["Kelaía|pagle"] = { 0, 3, -29, 1216 },
			["Persa|nazgrim"] = { 1, 2, -1, 1317 },
			["Reckington|raden"] = { 1, 2, -38, 1211 },
			["Reckology|raden"] = { 1, 2, -24, 1184 },
			["Rísk|lei-shen"] = { 2, 1, 23, 928 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 133 },
			["Thewalker|lei-shen"] = { 2, 1, 43, 916 },
			["Xntrixxz|arugal-au"] = { 1, 2, -38, 1210 },
			["Antartik|lei-shen"] = { 1, 1, 2, 478 },
			["Ascension|raden"] = { 0, 2, -14, 1141 },
			["Discnvragain|pagle"] = { 0, 2, 0, 1194 },
			["Feece|pagle"] = { 0, 2, -11, 998 },
			["Killou|pagle"] = { 1, 1, 8, 1354 },
			["Verdex|raden"] = { 1, 1, -10, 814 },
			["Vulture|raden"] = { 2, 0, 8, 1323 },
			["Bouddha|raden"] = { 0, 1, 0, 544 },
			["Holidayhamii|pagle"] = { 0, 1, -10, 994 },
			["Livingsteak|galakras"] = { 0, 1, -3, 1058 },
			["Lonestarx|raden"] = { 1, 0, 2, 1354 },
			["Pablosanchez|raden"] = { 1, 0, 5, 914 },
			["Saintjuan|raden"] = { 1, 0, 3, 277 },
		},
	},
}

