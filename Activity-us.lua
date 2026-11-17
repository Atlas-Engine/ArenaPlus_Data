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
	built = 1794873607,
	builtText = "2026-11-16 07:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Drgewch|raden"] = { 1, 0, 9, 9 },
			["Jugganar|raden"] = { 1, 0, 7, 21 },
			["Qtx|raden"] = { 1, 0, 9, 9 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bagahbonesx|pagle"] = { 0, 2, 0, 94 },
			["Goofygoofer|raden"] = { 2, 0, 9, 76 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 77 },
			["Tamerak|raden"] = { 2, 0, 8, 71 },
			["Clomar|nazgrim"] = { 1, 0, 19, 62 },
			["Drgewch|raden"] = { 1, 0, 9, 9 },
			["Jugganar|raden"] = { 1, 0, 7, 21 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 116 },
			["Qtx|raden"] = { 1, 0, 9, 9 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Goofygoofer|raden"] = { 6, 0, 18, 76 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 243 },
			["Destrotensei|pagle"] = { 1, 4, 18, 245 },
			["Glinna|raden"] = { 3, 0, 6, 277 },
			["Tamerak|raden"] = { 3, 0, 10, 71 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 94 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 77 },
			["Poizøønzx|galakras"] = { 2, 0, 6, 116 },
			["Clomar|nazgrim"] = { 1, 0, 19, 62 },
			["Drgewch|raden"] = { 1, 0, 9, 9 },
			["Gooseus|pagle"] = { 1, 0, 8, 296 },
			["Jugganar|raden"] = { 1, 0, 7, 21 },
			["Qtx|raden"] = { 1, 0, 9, 9 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Goofygoofer|raden"] = { 6, 0, 18, 76 },
			["Tamerak|raden"] = { 5, 1, 10, 71 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 243 },
			["Destrotensei|pagle"] = { 1, 4, 18, 245 },
			["Glinna|raden"] = { 3, 0, 6, 277 },
			["Hifukface|raden"] = { 2, 1, 7, 437 },
			["Mondozen|raden"] = { 1, 2, 16, 441 },
			["Omnixide|raden"] = { 1, 2, 16, 441 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 94 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 77 },
			["Poizøønzx|galakras"] = { 2, 0, 6, 116 },
			["Clomar|nazgrim"] = { 1, 0, 19, 62 },
			["Drgewch|raden"] = { 1, 0, 9, 9 },
			["Gooseus|pagle"] = { 1, 0, 8, 296 },
			["Jugganar|raden"] = { 1, 0, 7, 21 },
			["Qtx|raden"] = { 1, 0, 9, 9 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Qwes|raden"] = { 19, 3, 88, 890 },
			["Spreadpres|pagle"] = { 11, 11, 28, 1017 },
			["Dankorbs|pagle"] = { 8, 11, -8, 1094 },
			["Stattic|arugal-au"] = { 8, 11, -34, 1016 },
			["Heriberto|pagle"] = { 7, 10, -34, 1176 },
			["Holidayhamii|pagle"] = { 8, 8, 14, 77 },
			["Youcutebb|raden"] = { 7, 7, 156, 1060 },
			["Maddlexie|pagle"] = { 6, 7, 21, 1017 },
			["Edshearin|pagle"] = { 5, 7, -12, 861 },
			["Guanyîn|raden"] = { 5, 7, -12, 861 },
			["Tamerak|raden"] = { 10, 2, 51, 71 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 1207 },
			["Smokinweedle|raden"] = { 5, 6, -29, 1060 },
			["Critwo|raden"] = { 5, 4, 6, 1016 },
			["Yglol|raden"] = { 5, 4, 6, 1083 },
			["Chotter|pagle"] = { 5, 3, 68, 1378 },
			["Livekirkly|raden"] = { 5, 3, 50, 1376 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 851 },
			["Nazmirr|pagle"] = { 5, 3, -3, 1125 },
			["Donceno|nazgrim"] = { 4, 3, 8, 1403 },
			["Faex|arugal-au"] = { 4, 3, 5, 933 },
			["Magdalenia|pagle"] = { 3, 4, -1, 1202 },
			["Sunkencost|raden"] = { 4, 3, 77, 836 },
			["Balota|raden"] = { 5, 1, 23, 1196 },
			["Bigf|arugal-au"] = { 1, 5, 23, 850 },
			["Goofygoofer|raden"] = { 6, 0, 18, 76 },
			["Mistyxo|raden"] = { 5, 1, 29, 1284 },
			["Polutropos|galakras"] = { 3, 3, 5, 1201 },
			["Saintjuan|raden"] = { 6, 0, 55, 1196 },
			["Stoptalkme|raden"] = { 6, 0, 13, 1100 },
			["Uhexperiment|pagle"] = { 2, 4, -28, 1323 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 243 },
			["Destrotensei|pagle"] = { 1, 4, 18, 245 },
			["Executeheal|pagle"] = { 1, 4, 7, 1266 },
			["Fróst|raden"] = { 1, 4, 8, 1264 },
			["Isåbell|pagle"] = { 5, 0, 51, 1230 },
			["Kelaía|pagle"] = { 2, 3, -12, 1196 },
			["Poizøønzx|galakras"] = { 5, 0, 15, 116 },
			["Rëyy|raden"] = { 3, 2, 32, 1196 },
			["Zheani|raden"] = { 2, 3, -28, 1168 },
			["Badabign|pagle"] = { 1, 3, -6, 1081 },
			["Blankisa|raden"] = { 2, 2, 2, 972 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 1016 },
			["Fingerplay|galakras"] = { 0, 4, -41, 1016 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 1055 },
			["Lolggz|galakras"] = { 0, 4, -41, 1016 },
			["Møonxz|raden"] = { 3, 1, 29, 987 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 1312 },
			["Zerfecto|galakras"] = { 3, 1, 21, 1103 },
			["Chumpele|raden"] = { 1, 2, 9, 1241 },
			["Emielaina|pagle"] = { 0, 3, 0, 1058 },
			["Glinna|raden"] = { 3, 0, 6, 277 },
			["Hifukface|raden"] = { 2, 1, 7, 437 },
			["Ikillondc|raden"] = { 3, 0, 15, 1341 },
			["Lvl|raden"] = { 1, 2, -11, 927 },
			["Mondozen|raden"] = { 1, 2, 16, 441 },
			["Omnixide|raden"] = { 1, 2, 16, 441 },
			["Trapzillas|pagle"] = { 1, 2, 20, 1242 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 94 },
			["Blankis|raden"] = { 0, 2, -7, 1028 },
			["Gloryboi|pagle"] = { 0, 2, -32, 1252 },
			["Ivoxygen|pagle"] = { 0, 2, 0, 1396 },
			["Nf|raden"] = { 0, 2, -22, 1241 },
			["Clomar|nazgrim"] = { 1, 0, 19, 62 },
			["Drgewch|raden"] = { 1, 0, 9, 9 },
			["Gooseus|pagle"] = { 1, 0, 8, 296 },
			["Jugganar|raden"] = { 1, 0, 7, 21 },
			["Killou|pagle"] = { 0, 1, -10, 1196 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1376 },
			["Miposhká|raden"] = { 1, 0, 0, 1193 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1376 },
			["Qtx|raden"] = { 1, 0, 9, 9 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 731 },
			["Sneaksaround|raden"] = { 0, 1, 0, 1390 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 1218 },
		},
	},
}

