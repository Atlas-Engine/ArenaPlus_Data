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
	built = 1795046397,
	builtText = "2026-11-18 07:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 3, 0, 18, 22 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 3, 0, 18, 22 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 9, 9, 22, 337 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 334 },
			["Chorizero|immerseus"] = { 3, 0, 9, 206 },
			["Nazmirr|pagle"] = { 3, 0, 18, 22 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 193 },
			["Saintjuan|raden"] = { 1, 0, 3, 337 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 396 },
			["Møønzx|galakras"] = { 9, 9, 22, 337 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 334 },
			["Poizøønzx|galakras"] = { 12, 0, 58, 514 },
			["Møonxz|raden"] = { 0, 5, -29, 538 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 569 },
			["Chorizero|immerseus"] = { 3, 0, 9, 206 },
			["Nazmirr|pagle"] = { 3, 0, 18, 22 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 193 },
			["Antartik|lei-shen"] = { 0, 1, -8, 538 },
			["Bouddha|raden"] = { 0, 1, 0, 604 },
			["Saintjuan|raden"] = { 1, 0, 3, 337 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Isabellee|raden"] = { 15, 19, -20, 1054 },
			["Heidrichs|pagle"] = { 20, 7, 336, 396 },
			["Crtz|pagle"] = { 16, 8, 169, 1064 },
			["Rettmonk|raden"] = { 16, 8, 170, 1054 },
			["Deedaniels|raden"] = { 11, 11, 41, 1054 },
			["Blinnker|pagle"] = { 11, 9, -54, 1100 },
			["Nurfme|raden"] = { 15, 5, -16, 1054 },
			["Sugarbear|raden"] = { 15, 5, -4, 1145 },
			["Møønzx|galakras"] = { 9, 9, 22, 337 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 334 },
			["Slumpfoo|raden"] = { 8, 10, -28, 1004 },
			["Dojareborn|pagle"] = { 9, 7, 84, 1181 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 514 },
			["Rëyy|raden"] = { 8, 8, 25, 1081 },
			["Vipyrs|pagle"] = { 7, 8, 87, 1054 },
			["Jonwald|pagle"] = { 4, 10, 15, 1210 },
			["Lunchmeat|nazgrim"] = { 12, 2, 114, 1054 },
			["Mcjeezyy|pagle"] = { 4, 10, 15, 1210 },
			["Zertraproze|immerseus"] = { 12, 2, 123, 1054 },
			["Blankisa|raden"] = { 7, 6, 48, 1101 },
			["Budamm|pagle"] = { 8, 5, 124, 1054 },
			["Questopresto|nazgrim"] = { 5, 8, -18, 1093 },
			["Apechamp|raden"] = { 4, 8, 5, 1128 },
			["Champlock|raden"] = { 8, 4, 29, 1007 },
			["Theweave|raden"] = { 8, 4, 69, 1007 },
			["Fotmwarrs|raden"] = { 7, 4, 51, 1209 },
			["Roach|raden"] = { 4, 7, -23, 1204 },
			["Spongeboby|pagle"] = { 4, 7, -18, 1203 },
			["Boofed|raden"] = { 7, 3, 32, 1092 },
			["Drlovee|benediction"] = { 7, 3, 108, 1089 },
			["Horniaf|pagle"] = { 3, 7, -40, 1111 },
			["Killstrike|immerseus"] = { 3, 7, -59, 1112 },
			["Spreadpres|pagle"] = { 4, 6, 22, 1094 },
			["Carnilumen|pagle"] = { 5, 4, 31, 1054 },
			["Chiokeme|arugal-au"] = { 5, 4, 33, 943 },
			["Dabddaddy|raden"] = { 6, 3, 12, 1286 },
			["Ecafkcufhi|raden"] = { 3, 6, -28, 1134 },
			["Lvl|raden"] = { 6, 3, 8, 1079 },
			["Nebupeach|nazgrim"] = { 5, 4, -2, 942 },
			["Tharealnerds|pagle"] = { 3, 6, -21, 1349 },
			["Cavallier|pagle"] = { 1, 7, -27, 1414 },
			["Fingerplay|raden"] = { 1, 7, -55, 969 },
			["Polutropos|galakras"] = { 4, 4, -14, 1054 },
			["Spala|pagle"] = { 3, 5, -21, 1054 },
			["Balota|raden"] = { 7, 0, 55, 1234 },
			["Bigdkslams|raden"] = { 4, 3, 17, 1005 },
			["Atiko|galakras"] = { 3, 3, 9, 1128 },
			["Clomar|nazgrim"] = { 3, 3, 22, 1393 },
			["Dankenstein|lei-shen"] = { 3, 3, -8, 1130 },
			["Donceno|nazgrim"] = { 1, 5, -15, 1358 },
			["Juul|raden"] = { 4, 2, 66, 978 },
			["Noescape|raden"] = { 4, 2, 79, 997 },
			["Xatica|pagle"] = { 2, 4, 1, 1160 },
			["Edshearin|pagle"] = { 4, 1, 6, 983 },
			["Fullcream|galakras"] = { 2, 3, 18, 960 },
			["Ginastel|raden"] = { 2, 3, 7, 1181 },
			["Guanyîn|raden"] = { 4, 1, 4, 984 },
			["Møonxz|raden"] = { 0, 5, -29, 538 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 569 },
			["Wowamazingcc|raden"] = { 5, 0, 27, 1361 },
			["Gigasimpx|pagle"] = { 2, 2, -3, 1074 },
			["Heriberto|pagle"] = { 2, 2, 16, 1234 },
			["Laraçroft|raden"] = { 2, 2, -2, 1254 },
			["Putinga|pagle"] = { 2, 2, -3, 1268 },
			["Riptdy|raden"] = { 2, 2, -6, 1074 },
			["Xatyka|pagle"] = { 2, 2, 8, 1113 },
			["Xunamated|raden"] = { 2, 2, 43, 918 },
			["Chorizero|immerseus"] = { 3, 0, 9, 206 },
			["Gymsharkbadi|arugal-au"] = { 1, 2, 2, 1243 },
			["Kelaía|pagle"] = { 0, 3, -29, 1276 },
			["Nazmirr|pagle"] = { 3, 0, 18, 22 },
			["Persa|nazgrim"] = { 1, 2, -1, 1377 },
			["Reckington|raden"] = { 1, 2, -38, 1271 },
			["Reckology|raden"] = { 1, 2, -24, 1243 },
			["Rísk|lei-shen"] = { 2, 1, 23, 988 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 193 },
			["Thewalker|lei-shen"] = { 2, 1, 43, 976 },
			["Xntrixxz|arugal-au"] = { 1, 2, -38, 1270 },
			["Antartik|lei-shen"] = { 1, 1, 2, 538 },
			["Ascension|raden"] = { 0, 2, -14, 1201 },
			["Discnvragain|pagle"] = { 0, 2, 0, 1254 },
			["Feece|pagle"] = { 0, 2, -11, 1058 },
			["Killou|pagle"] = { 1, 1, 8, 1414 },
			["Verdex|raden"] = { 1, 1, -10, 874 },
			["Vulture|raden"] = { 2, 0, 8, 1383 },
			["Bouddha|raden"] = { 0, 1, 0, 604 },
			["Holidayhamii|pagle"] = { 0, 1, -10, 1054 },
			["Livingsteak|galakras"] = { 0, 1, -3, 1118 },
			["Lonestarx|raden"] = { 1, 0, 2, 1414 },
			["Pablosanchez|raden"] = { 1, 0, 5, 973 },
			["Saintjuan|raden"] = { 1, 0, 3, 337 },
		},
	},
}

