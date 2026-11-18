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
	built = 1795039208,
	builtText = "2026-11-18 05:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Chorizero|immerseus"] = { 3, 0, 9, 86 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 73 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 9, 9, 22, 217 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 214 },
			["Heidrichs|pagle"] = { 8, 7, 104, 277 },
			["Chorizero|immerseus"] = { 3, 0, 9, 86 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 73 },
			["Saintjuan|raden"] = { 1, 0, 3, 217 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 20, 7, 336, 277 },
			["Møønzx|galakras"] = { 9, 9, 22, 217 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 214 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 394 },
			["Møonxz|raden"] = { 0, 5, -29, 418 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 449 },
			["Chorizero|immerseus"] = { 3, 0, 9, 86 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 73 },
			["Antartik|lei-shen"] = { 0, 1, -8, 418 },
			["Bouddha|raden"] = { 0, 1, 0, 484 },
			["Saintjuan|raden"] = { 1, 0, 3, 217 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Isabellee|raden"] = { 15, 19, -20, 935 },
			["Crtz|pagle"] = { 19, 11, 166, 944 },
			["Heidrichs|pagle"] = { 20, 7, 336, 277 },
			["Rettmonk|raden"] = { 16, 8, 170, 934 },
			["Deedaniels|raden"] = { 11, 11, 41, 934 },
			["Blinnker|pagle"] = { 11, 9, -54, 981 },
			["Nurfme|raden"] = { 15, 5, -16, 934 },
			["Sugarbear|raden"] = { 15, 5, -4, 1026 },
			["Møønzx|galakras"] = { 9, 9, 22, 217 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 214 },
			["Slumpfoo|raden"] = { 8, 10, -28, 884 },
			["Dojareborn|pagle"] = { 9, 7, 84, 1062 },
			["Poizøønzx|galakras"] = { 16, 0, 67, 394 },
			["Rëyy|raden"] = { 8, 8, 25, 961 },
			["Vipyrs|pagle"] = { 7, 8, 87, 934 },
			["Jonwald|pagle"] = { 4, 10, 15, 1090 },
			["Lunchmeat|nazgrim"] = { 12, 2, 114, 934 },
			["Mcjeezyy|pagle"] = { 4, 10, 15, 1090 },
			["Zertraproze|immerseus"] = { 12, 2, 123, 934 },
			["Blankisa|raden"] = { 7, 6, 48, 981 },
			["Budamm|pagle"] = { 8, 5, 124, 934 },
			["Questopresto|nazgrim"] = { 5, 8, -18, 973 },
			["Apechamp|raden"] = { 4, 8, 5, 1008 },
			["Champlock|raden"] = { 8, 4, 29, 887 },
			["Theweave|raden"] = { 8, 4, 69, 887 },
			["Fotmwarrs|raden"] = { 7, 4, 51, 1089 },
			["Roach|raden"] = { 4, 7, -23, 1085 },
			["Spongeboby|pagle"] = { 4, 7, -18, 1083 },
			["Boofed|raden"] = { 7, 3, 32, 972 },
			["Drlovee|benediction"] = { 7, 3, 108, 969 },
			["Horniaf|pagle"] = { 3, 7, -40, 991 },
			["Killstrike|immerseus"] = { 3, 7, -59, 992 },
			["Putinga|pagle"] = { 5, 5, 14, 1148 },
			["Spreadpres|pagle"] = { 4, 6, 22, 974 },
			["Carnilumen|pagle"] = { 5, 4, 31, 934 },
			["Chiokeme|arugal-au"] = { 5, 4, 33, 823 },
			["Clomar|nazgrim"] = { 5, 4, 40, 1273 },
			["Dabddaddy|raden"] = { 6, 3, 12, 1166 },
			["Ecafkcufhi|raden"] = { 3, 6, -28, 1014 },
			["Lvl|raden"] = { 6, 3, 8, 959 },
			["Nebupeach|nazgrim"] = { 5, 4, -2, 822 },
			["Pauliheal|raden"] = { 2, 7, -7, 1376 },
			["Soulsearch|raden"] = { 2, 7, -7, 1376 },
			["Tharealnerds|pagle"] = { 3, 6, -21, 1229 },
			["Cavallier|pagle"] = { 1, 7, -27, 1294 },
			["Fingerplay|raden"] = { 1, 7, -55, 849 },
			["Polutropos|galakras"] = { 4, 4, -14, 934 },
			["Spala|pagle"] = { 3, 5, -21, 934 },
			["Balota|raden"] = { 7, 0, 55, 1114 },
			["Bigdkslams|raden"] = { 4, 3, 17, 885 },
			["Atiko|galakras"] = { 3, 3, 9, 1008 },
			["Dankenstein|lei-shen"] = { 3, 3, -8, 1010 },
			["Donceno|nazgrim"] = { 1, 5, -15, 1238 },
			["Juul|raden"] = { 4, 2, 66, 859 },
			["Noescape|raden"] = { 4, 2, 79, 877 },
			["Pablosanchez|raden"] = { 5, 1, 7, 854 },
			["Xatica|pagle"] = { 2, 4, 1, 1040 },
			["Drgspit|pagle"] = { 4, 1, 40, 1385 },
			["Edshearin|pagle"] = { 4, 1, 6, 864 },
			["Fullcream|galakras"] = { 2, 3, 18, 841 },
			["Ginastel|raden"] = { 2, 3, 7, 1061 },
			["Guanyîn|raden"] = { 4, 1, 4, 864 },
			["Møonxz|raden"] = { 0, 5, -29, 418 },
			["Shieldzx|lei-shen"] = { 0, 5, -15, 449 },
			["Wowamazingcc|raden"] = { 5, 0, 27, 1241 },
			["Xanacs|nazgrim"] = { 4, 1, 74, 1337 },
			["Gigasimpx|pagle"] = { 2, 2, -3, 954 },
			["Heriberto|pagle"] = { 2, 2, 16, 1114 },
			["Laraçroft|raden"] = { 2, 2, -2, 1134 },
			["Riptdy|raden"] = { 2, 2, -6, 954 },
			["Xatyka|pagle"] = { 2, 2, 8, 993 },
			["Xunamated|raden"] = { 2, 2, 43, 798 },
			["Chorizero|immerseus"] = { 3, 0, 9, 86 },
			["Gymsharkbadi|arugal-au"] = { 1, 2, 2, 1124 },
			["Kelaía|pagle"] = { 0, 3, -29, 1156 },
			["Persa|nazgrim"] = { 1, 2, -1, 1257 },
			["Reckington|raden"] = { 1, 2, -38, 1151 },
			["Reckology|raden"] = { 1, 2, -24, 1124 },
			["Rísk|lei-shen"] = { 2, 1, 23, 868 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 73 },
			["Thewalker|lei-shen"] = { 2, 1, 43, 856 },
			["Xntrixxz|arugal-au"] = { 1, 2, -38, 1150 },
			["Antartik|lei-shen"] = { 1, 1, 2, 418 },
			["Ascension|raden"] = { 0, 2, -14, 1081 },
			["Discnvragain|pagle"] = { 0, 2, 0, 1134 },
			["Feece|pagle"] = { 0, 2, -11, 938 },
			["Killou|pagle"] = { 1, 1, 8, 1294 },
			["Verdex|raden"] = { 1, 1, -10, 754 },
			["Vulture|raden"] = { 2, 0, 8, 1263 },
			["Bouddha|raden"] = { 0, 1, 0, 484 },
			["Holidayhamii|pagle"] = { 0, 1, -10, 934 },
			["Livingsteak|galakras"] = { 0, 1, -3, 998 },
			["Lonestarx|raden"] = { 1, 0, 2, 1294 },
			["Saintjuan|raden"] = { 1, 0, 3, 217 },
		},
	},
}

