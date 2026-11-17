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
	built = 1794877192,
	builtText = "2026-11-16 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Nf|raden"] = { 2, 1, 8, 21 },
			["Tamerak|raden"] = { 1, 1, -10, 55 },
			["Drgspit|pagle"] = { 1, 0, 7, 13 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tamerak|raden"] = { 3, 1, -2, 55 },
			["Nf|raden"] = { 2, 1, 8, 21 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 154 },
			["Goofygoofer|raden"] = { 2, 0, 9, 136 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 137 },
			["Clomar|nazgrim"] = { 1, 0, 19, 122 },
			["Drgewch|raden"] = { 1, 0, 9, 69 },
			["Drgspit|pagle"] = { 1, 0, 7, 13 },
			["Jugganar|raden"] = { 1, 0, 7, 81 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 176 },
			["Qtx|raden"] = { 1, 0, 9, 69 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Goofygoofer|raden"] = { 6, 0, 18, 136 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 302 },
			["Destrotensei|pagle"] = { 1, 4, 18, 304 },
			["Tamerak|raden"] = { 4, 1, 0, 55 },
			["Glinna|raden"] = { 3, 0, 6, 337 },
			["Nf|raden"] = { 2, 1, 8, 21 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 154 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 137 },
			["Poizøønzx|galakras"] = { 2, 0, 6, 176 },
			["Clomar|nazgrim"] = { 1, 0, 19, 122 },
			["Drgewch|raden"] = { 1, 0, 9, 69 },
			["Drgspit|pagle"] = { 1, 0, 7, 13 },
			["Gooseus|pagle"] = { 1, 0, 8, 356 },
			["Jugganar|raden"] = { 1, 0, 7, 81 },
			["Qtx|raden"] = { 1, 0, 9, 69 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tamerak|raden"] = { 6, 2, 0, 55 },
			["Goofygoofer|raden"] = { 6, 0, 18, 136 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 302 },
			["Destrotensei|pagle"] = { 1, 4, 18, 304 },
			["Glinna|raden"] = { 3, 0, 6, 337 },
			["Hifukface|raden"] = { 2, 1, 7, 497 },
			["Mondozen|raden"] = { 1, 2, 16, 500 },
			["Nf|raden"] = { 2, 1, 8, 21 },
			["Omnixide|raden"] = { 1, 2, 16, 501 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 154 },
			["Holidayhamii|pagle"] = { 0, 2, -19, 137 },
			["Poizøønzx|galakras"] = { 2, 0, 6, 176 },
			["Clomar|nazgrim"] = { 1, 0, 19, 122 },
			["Drgewch|raden"] = { 1, 0, 9, 69 },
			["Drgspit|pagle"] = { 1, 0, 7, 13 },
			["Gooseus|pagle"] = { 1, 0, 8, 356 },
			["Jugganar|raden"] = { 1, 0, 7, 81 },
			["Qtx|raden"] = { 1, 0, 9, 69 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Qwes|raden"] = { 19, 3, 88, 950 },
			["Spreadpres|pagle"] = { 11, 11, 28, 1077 },
			["Dankorbs|pagle"] = { 8, 11, -8, 1153 },
			["Stattic|arugal-au"] = { 8, 11, -34, 1076 },
			["Heriberto|pagle"] = { 7, 10, -34, 1236 },
			["Holidayhamii|pagle"] = { 8, 8, 14, 137 },
			["Tamerak|raden"] = { 11, 3, 41, 55 },
			["Youcutebb|raden"] = { 7, 7, 156, 1120 },
			["Maddlexie|pagle"] = { 6, 7, 21, 1077 },
			["Edshearin|pagle"] = { 5, 7, -12, 921 },
			["Guanyîn|raden"] = { 5, 7, -12, 921 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 1267 },
			["Smokinweedle|raden"] = { 5, 6, -29, 1119 },
			["Critwo|raden"] = { 5, 4, 6, 1076 },
			["Yglol|raden"] = { 5, 4, 6, 1143 },
			["Chotter|pagle"] = { 5, 3, 68, 1437 },
			["Livekirkly|raden"] = { 5, 3, 50, 1436 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 911 },
			["Nazmirr|pagle"] = { 5, 3, -3, 1185 },
			["Faex|arugal-au"] = { 4, 3, 5, 993 },
			["Magdalenia|pagle"] = { 3, 4, -1, 1261 },
			["Sunkencost|raden"] = { 4, 3, 77, 896 },
			["Balota|raden"] = { 5, 1, 23, 1256 },
			["Bigf|arugal-au"] = { 1, 5, 23, 910 },
			["Goofygoofer|raden"] = { 6, 0, 18, 136 },
			["Mistyxo|raden"] = { 5, 1, 29, 1344 },
			["Polutropos|galakras"] = { 3, 3, 5, 1261 },
			["Saintjuan|raden"] = { 6, 0, 55, 1256 },
			["Stoptalkme|raden"] = { 6, 0, 13, 1159 },
			["Uhexperiment|pagle"] = { 2, 4, -28, 1383 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 302 },
			["Destrotensei|pagle"] = { 1, 4, 18, 304 },
			["Executeheal|pagle"] = { 1, 4, 7, 1326 },
			["Fróst|raden"] = { 1, 4, 8, 1323 },
			["Isåbell|pagle"] = { 5, 0, 51, 1290 },
			["Kelaía|pagle"] = { 2, 3, -12, 1256 },
			["Nf|raden"] = { 2, 3, -14, 21 },
			["Poizøønzx|galakras"] = { 5, 0, 15, 176 },
			["Rëyy|raden"] = { 3, 2, 32, 1256 },
			["Zheani|raden"] = { 2, 3, -28, 1228 },
			["Badabign|pagle"] = { 1, 3, -6, 1141 },
			["Blankisa|raden"] = { 2, 2, 2, 1031 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 1076 },
			["Fingerplay|galakras"] = { 0, 4, -41, 1076 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 1115 },
			["Lolggz|galakras"] = { 0, 4, -41, 1076 },
			["Møonxz|raden"] = { 3, 1, 29, 1047 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 1372 },
			["Zerfecto|galakras"] = { 3, 1, 21, 1163 },
			["Chumpele|raden"] = { 1, 2, 9, 1301 },
			["Emielaina|pagle"] = { 0, 3, 0, 1118 },
			["Glinna|raden"] = { 3, 0, 6, 337 },
			["Hifukface|raden"] = { 2, 1, 7, 497 },
			["Ikillondc|raden"] = { 3, 0, 15, 1400 },
			["Lvl|raden"] = { 1, 2, -11, 987 },
			["Mondozen|raden"] = { 1, 2, 16, 500 },
			["Omnixide|raden"] = { 1, 2, 16, 501 },
			["Trapzillas|pagle"] = { 1, 2, 20, 1301 },
			["Bagahbonesx|pagle"] = { 0, 2, 0, 154 },
			["Blankis|raden"] = { 0, 2, -7, 1088 },
			["Gloryboi|pagle"] = { 0, 2, -32, 1312 },
			["Clomar|nazgrim"] = { 1, 0, 19, 122 },
			["Drgewch|raden"] = { 1, 0, 9, 69 },
			["Drgspit|pagle"] = { 1, 0, 7, 13 },
			["Gooseus|pagle"] = { 1, 0, 8, 356 },
			["Jugganar|raden"] = { 1, 0, 7, 81 },
			["Killou|pagle"] = { 0, 1, -10, 1256 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1436 },
			["Miposhká|raden"] = { 1, 0, 0, 1253 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1436 },
			["Qtx|raden"] = { 1, 0, 9, 69 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 791 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 1278 },
		},
	},
}

