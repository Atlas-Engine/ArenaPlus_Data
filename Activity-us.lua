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
	built = 1794862793,
	builtText = "2026-11-16 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 1, 4, -1, 63 },
			["Destrotensei|pagle"] = { 1, 4, 18, 64 },
			["Goofygoofer|raden"] = { 4, 0, 9, 85 },
			["Glinna|raden"] = { 3, 0, 6, 97 },
			["Gooseus|pagle"] = { 1, 0, 8, 116 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 116 },
			["Tamerak|raden"] = { 1, 0, 2, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 1, 4, -1, 63 },
			["Destrotensei|pagle"] = { 1, 4, 18, 64 },
			["Goofygoofer|raden"] = { 4, 0, 9, 85 },
			["Tamerak|raden"] = { 3, 1, 2, 118 },
			["Glinna|raden"] = { 3, 0, 6, 97 },
			["Hifukface|raden"] = { 2, 1, 7, 257 },
			["Mondozen|raden"] = { 1, 2, 16, 260 },
			["Omnixide|raden"] = { 1, 2, 16, 261 },
			["Gooseus|pagle"] = { 1, 0, 8, 116 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 116 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Qwes|raden"] = { 10, 3, 51, 710 },
			["Edshearin|pagle"] = { 5, 7, -12, 681 },
			["Guanyîn|raden"] = { 5, 7, -12, 681 },
			["Sunkencost|raden"] = { 4, 3, 77, 656 },
			["Bigf|arugal-au"] = { 1, 5, 23, 670 },
			["Mòónfirebeam|raden"] = { 1, 5, -21, 671 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 63 },
			["Destrotensei|pagle"] = { 1, 4, 18, 64 },
			["Goofygoofer|raden"] = { 4, 0, 9, 85 },
			["Poizøønzx|galakras"] = { 4, 0, 12, 116 },
			["Tamerak|raden"] = { 3, 1, 2, 118 },
			["Glinna|raden"] = { 3, 0, 6, 97 },
			["Hifukface|raden"] = { 2, 1, 7, 257 },
			["Mondozen|raden"] = { 1, 2, 16, 260 },
			["Omnixide|raden"] = { 1, 2, 16, 261 },
			["Gooseus|pagle"] = { 1, 0, 8, 116 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 551 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Moneymay|pagle"] = { 14, 15, -3, 1322 },
			["Tharealnerds|pagle"] = { 14, 15, 20, 1310 },
			["Fyruss|pagle"] = { 10, 12, 19, 1294 },
			["Qwes|raden"] = { 19, 3, 88, 710 },
			["Spreadpres|pagle"] = { 11, 11, 28, 837 },
			["Tamerak|raden"] = { 18, 2, 151, 118 },
			["Dankorbs|pagle"] = { 8, 11, -8, 913 },
			["Stattic|arugal-au"] = { 8, 11, -34, 836 },
			["Uhexperiment|pagle"] = { 12, 6, 11, 1143 },
			["Heriberto|pagle"] = { 7, 10, -34, 996 },
			["Jivara|pagle"] = { 7, 8, 38, 1302 },
			["Pauliheal|raden"] = { 5, 10, 44, 1285 },
			["Soulsearch|raden"] = { 5, 10, 44, 1285 },
			["Holidayhamii|pagle"] = { 8, 6, 33, 836 },
			["Kelaía|pagle"] = { 9, 5, 20, 1016 },
			["Youcutebb|raden"] = { 7, 7, 156, 880 },
			["Maddlexie|pagle"] = { 6, 7, 21, 837 },
			["Edshearin|pagle"] = { 5, 7, -12, 681 },
			["Guanyîn|raden"] = { 5, 7, -12, 681 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 1027 },
			["Smokinweedle|raden"] = { 5, 6, -29, 879 },
			["Critwo|raden"] = { 5, 4, 6, 836 },
			["Livekirkly|raden"] = { 5, 4, 48, 1196 },
			["Nazmirr|pagle"] = { 5, 4, -10, 945 },
			["Yglol|raden"] = { 5, 4, 6, 903 },
			["Chotter|pagle"] = { 5, 3, 68, 1197 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 671 },
			["Donceno|nazgrim"] = { 4, 3, 8, 1222 },
			["Faex|arugal-au"] = { 4, 3, 5, 753 },
			["Magdalenia|pagle"] = { 3, 4, -1, 1021 },
			["Sunkencost|raden"] = { 4, 3, 77, 656 },
			["Balota|raden"] = { 5, 1, 23, 1016 },
			["Bigf|arugal-au"] = { 1, 5, 23, 670 },
			["Bisü|pagle"] = { 3, 3, 5, 1313 },
			["Glinna|raden"] = { 6, 0, 33, 97 },
			["Goofygoofer|raden"] = { 6, 0, 33, 85 },
			["Mistyxo|raden"] = { 5, 1, 29, 1104 },
			["Polutropos|galakras"] = { 3, 3, 5, 1021 },
			["Saintjuan|raden"] = { 6, 0, 55, 1016 },
			["Stoptalkme|raden"] = { 6, 0, 13, 919 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 63 },
			["Destrotensei|pagle"] = { 1, 4, 18, 64 },
			["Executeheal|pagle"] = { 1, 4, 7, 1086 },
			["Fróst|raden"] = { 1, 4, 8, 1083 },
			["Ikillondc|raden"] = { 5, 0, 21, 1160 },
			["Isåbell|pagle"] = { 5, 0, 51, 1050 },
			["Rëyy|raden"] = { 3, 2, 32, 1016 },
			["Zheani|raden"] = { 2, 3, -28, 988 },
			["Badabign|pagle"] = { 1, 3, -6, 901 },
			["Blankisa|raden"] = { 2, 2, 2, 791 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 836 },
			["Fingerplay|galakras"] = { 0, 4, -41, 836 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 875 },
			["Lolggz|galakras"] = { 0, 4, -41, 836 },
			["Møonxz|raden"] = { 3, 1, 29, 807 },
			["Poizøønzx|galakras"] = { 4, 0, 12, 116 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 1132 },
			["Xatyka|pagle"] = { 4, 0, 26, 1426 },
			["Zerfecto|galakras"] = { 3, 1, 21, 923 },
			["Bagahbonesx|pagle"] = { 2, 1, 37, 1376 },
			["Chumpele|raden"] = { 1, 2, 9, 1061 },
			["Emielaina|pagle"] = { 0, 3, 0, 878 },
			["Garnaby|pagle"] = { 0, 3, -8, 1292 },
			["Hifukface|raden"] = { 2, 1, 7, 257 },
			["Lvl|raden"] = { 1, 2, -11, 747 },
			["Mondozen|raden"] = { 1, 2, 16, 260 },
			["Omnixide|raden"] = { 1, 2, 16, 261 },
			["Shadowstormx|immerseus"] = { 0, 3, -14, 1361 },
			["Trapzillas|pagle"] = { 1, 2, 20, 1062 },
			["Blankis|raden"] = { 0, 2, -7, 848 },
			["Chorizero|immerseus"] = { 0, 2, -20, 1324 },
			["Gloryboi|pagle"] = { 0, 2, -32, 1072 },
			["Ivoxygen|pagle"] = { 0, 2, 0, 1215 },
			["Nf|raden"] = { 0, 2, -22, 1061 },
			["Persa|nazgrim"] = { 0, 2, -10, 1416 },
			["Stàn|immerseus"] = { 0, 2, -24, 1323 },
			["Gooseus|pagle"] = { 1, 0, 8, 116 },
			["Killou|pagle"] = { 0, 1, -10, 1016 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1196 },
			["Miposhká|raden"] = { 1, 0, 0, 1013 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1196 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 551 },
			["Sneaksaround|raden"] = { 0, 1, 0, 1210 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 1038 },
		},
	},
}

