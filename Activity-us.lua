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
	built = 1794870006,
	builtText = "2026-11-16 06:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bagahbonesx|pagle"] = { 0, 2, 0, 34 },
			["Goofygoofer|raden"] = { 2, 0, 9, 16 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 17 },
			["Tamerak|raden"] = { 2, 0, 8, 11 },
			["Clomar|nazgrim"] = { 1, 0, 19, 2 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 56 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bagahbonesx|pagle"] = { 0, 2, 0, 34 },
			["Goofygoofer|raden"] = { 2, 0, 9, 16 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 17 },
			["Tamerak|raden"] = { 2, 0, 8, 11 },
			["Clomar|nazgrim"] = { 1, 0, 19, 2 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 56 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Goofygoofer|raden"] = { 6, 0, 18, 16 },
			["Tamerak|raden"] = { 5, 1, 10, 11 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 183 },
			["Destrotensei|pagle"] = { 1, 4, 18, 185 },
			["Glinna|raden"] = { 3, 0, 6, 217 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 34 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 17 },
			["Poizøønzx|galakras"] = { 2, 0, 6, 56 },
			["Clomar|nazgrim"] = { 1, 0, 19, 2 },
			["Gooseus|pagle"] = { 1, 0, 8, 236 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Goofygoofer|raden"] = { 6, 0, 18, 16 },
			["Tamerak|raden"] = { 5, 1, 10, 11 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 183 },
			["Destrotensei|pagle"] = { 1, 4, 18, 185 },
			["Poizøønzx|galakras"] = { 5, 0, 15, 56 },
			["Glinna|raden"] = { 3, 0, 6, 217 },
			["Hifukface|raden"] = { 2, 1, 7, 377 },
			["Mondozen|raden"] = { 1, 2, 16, 381 },
			["Omnixide|raden"] = { 1, 2, 16, 381 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 34 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 17 },
			["Clomar|nazgrim"] = { 1, 0, 19, 2 },
			["Gooseus|pagle"] = { 1, 0, 8, 236 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 671 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Qwes|raden"] = { 19, 3, 88, 830 },
			["Spreadpres|pagle"] = { 11, 11, 28, 957 },
			["Tamerak|raden"] = { 18, 2, 130, 11 },
			["Dankorbs|pagle"] = { 8, 11, -8, 1033 },
			["Stattic|arugal-au"] = { 8, 11, -34, 956 },
			["Heriberto|pagle"] = { 7, 10, -34, 1116 },
			["Holidayhamii|pagle"] = { 8, 8, 14, 17 },
			["Fyruss|pagle"] = { 7, 8, 20, 1414 },
			["Jivara|pagle"] = { 7, 8, 38, 1422 },
			["Youcutebb|raden"] = { 7, 7, 156, 1000 },
			["Maddlexie|pagle"] = { 6, 7, 21, 957 },
			["Edshearin|pagle"] = { 5, 7, -12, 801 },
			["Guanyîn|raden"] = { 5, 7, -12, 801 },
			["Pauliheal|raden"] = { 4, 8, 30, 1405 },
			["Soulsearch|raden"] = { 4, 8, 30, 1406 },
			["Tharealnerds|pagle"] = { 8, 4, 36, 1431 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 1147 },
			["Smokinweedle|raden"] = { 5, 6, -29, 1000 },
			["Critwo|raden"] = { 5, 4, 6, 956 },
			["Yglol|raden"] = { 5, 4, 6, 1023 },
			["Chotter|pagle"] = { 5, 3, 68, 1318 },
			["Livekirkly|raden"] = { 5, 3, 50, 1316 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 791 },
			["Nazmirr|pagle"] = { 5, 3, -3, 1065 },
			["Donceno|nazgrim"] = { 4, 3, 8, 1343 },
			["Faex|arugal-au"] = { 4, 3, 5, 873 },
			["Magdalenia|pagle"] = { 3, 4, -1, 1142 },
			["Sunkencost|raden"] = { 4, 3, 77, 776 },
			["Balota|raden"] = { 5, 1, 23, 1136 },
			["Bigf|arugal-au"] = { 1, 5, 23, 790 },
			["Bisü|pagle"] = { 3, 3, 5, 1433 },
			["Goofygoofer|raden"] = { 6, 0, 18, 16 },
			["Mistyxo|raden"] = { 5, 1, 29, 1224 },
			["Polutropos|galakras"] = { 3, 3, 5, 1141 },
			["Saintjuan|raden"] = { 6, 0, 55, 1136 },
			["Stoptalkme|raden"] = { 6, 0, 13, 1040 },
			["Uhexperiment|pagle"] = { 2, 4, -28, 1263 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 183 },
			["Destrotensei|pagle"] = { 1, 4, 18, 185 },
			["Executeheal|pagle"] = { 1, 4, 7, 1206 },
			["Fróst|raden"] = { 1, 4, 8, 1204 },
			["Ikillondc|raden"] = { 5, 0, 21, 1281 },
			["Isåbell|pagle"] = { 5, 0, 51, 1170 },
			["Kelaía|pagle"] = { 2, 3, -12, 1136 },
			["Poizøønzx|galakras"] = { 5, 0, 15, 56 },
			["Rëyy|raden"] = { 3, 2, 32, 1136 },
			["Zheani|raden"] = { 2, 3, -28, 1108 },
			["Badabign|pagle"] = { 1, 3, -6, 1021 },
			["Blankisa|raden"] = { 2, 2, 2, 912 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 956 },
			["Fingerplay|galakras"] = { 0, 4, -41, 956 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 995 },
			["Lolggz|galakras"] = { 0, 4, -41, 956 },
			["Møonxz|raden"] = { 3, 1, 29, 927 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 1252 },
			["Zerfecto|galakras"] = { 3, 1, 21, 1043 },
			["Chumpele|raden"] = { 1, 2, 9, 1181 },
			["Emielaina|pagle"] = { 0, 3, 0, 998 },
			["Glinna|raden"] = { 3, 0, 6, 217 },
			["Hifukface|raden"] = { 2, 1, 7, 377 },
			["Lvl|raden"] = { 1, 2, -11, 867 },
			["Mondozen|raden"] = { 1, 2, 16, 381 },
			["Omnixide|raden"] = { 1, 2, 16, 381 },
			["Trapzillas|pagle"] = { 1, 2, 20, 1182 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 34 },
			["Blankis|raden"] = { 0, 2, -7, 968 },
			["Gloryboi|pagle"] = { 0, 2, -32, 1192 },
			["Ivoxygen|pagle"] = { 0, 2, 0, 1336 },
			["Nf|raden"] = { 0, 2, -22, 1181 },
			["Clomar|nazgrim"] = { 1, 0, 19, 2 },
			["Garnaby|pagle"] = { 0, 1, -1, 1412 },
			["Gooseus|pagle"] = { 1, 0, 8, 236 },
			["Killou|pagle"] = { 0, 1, -10, 1136 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1316 },
			["Miposhká|raden"] = { 1, 0, 0, 1133 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1316 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 671 },
			["Sneaksaround|raden"] = { 0, 1, 0, 1330 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 1158 },
		},
	},
}

