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
	built = 1794866405,
	builtText = "2026-11-16 05:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 1, 4, -1, 123 },
			["Destrotensei|pagle"] = { 1, 4, 18, 125 },
			["Goofygoofer|raden"] = { 4, 0, 9, 145 },
			["Glinna|raden"] = { 3, 0, 6, 157 },
			["Gooseus|pagle"] = { 1, 0, 8, 176 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 176 },
			["Tamerak|raden"] = { 1, 0, 2, 179 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 1, 4, -1, 123 },
			["Destrotensei|pagle"] = { 1, 4, 18, 125 },
			["Goofygoofer|raden"] = { 4, 0, 9, 145 },
			["Tamerak|raden"] = { 3, 1, 2, 179 },
			["Glinna|raden"] = { 3, 0, 6, 157 },
			["Hifukface|raden"] = { 2, 1, 7, 317 },
			["Mondozen|raden"] = { 1, 2, 16, 321 },
			["Omnixide|raden"] = { 1, 2, 16, 321 },
			["Gooseus|pagle"] = { 1, 0, 8, 176 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 176 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Sunkencost|raden"] = { 4, 3, 77, 716 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 123 },
			["Destrotensei|pagle"] = { 1, 4, 18, 125 },
			["Goofygoofer|raden"] = { 4, 0, 9, 145 },
			["Poizøønzx|galakras"] = { 4, 0, 12, 176 },
			["Tamerak|raden"] = { 3, 1, 2, 179 },
			["Glinna|raden"] = { 3, 0, 6, 157 },
			["Hifukface|raden"] = { 2, 1, 7, 317 },
			["Mondozen|raden"] = { 1, 2, 16, 321 },
			["Omnixide|raden"] = { 1, 2, 16, 321 },
			["Gooseus|pagle"] = { 1, 0, 8, 176 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 611 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Moneymay|pagle"] = { 14, 15, -3, 1382 },
			["Tharealnerds|pagle"] = { 14, 15, 20, 1371 },
			["Fyruss|pagle"] = { 10, 12, 19, 1354 },
			["Qwes|raden"] = { 19, 3, 88, 770 },
			["Spreadpres|pagle"] = { 11, 11, 28, 897 },
			["Dankorbs|pagle"] = { 8, 11, -8, 973 },
			["Stattic|arugal-au"] = { 8, 11, -34, 896 },
			["Tamerak|raden"] = { 17, 2, 133, 179 },
			["Heriberto|pagle"] = { 7, 10, -34, 1056 },
			["Jivara|pagle"] = { 7, 8, 38, 1362 },
			["Pauliheal|raden"] = { 5, 10, 44, 1345 },
			["Soulsearch|raden"] = { 5, 10, 44, 1345 },
			["Holidayhamii|pagle"] = { 8, 6, 33, 896 },
			["Youcutebb|raden"] = { 7, 7, 156, 940 },
			["Maddlexie|pagle"] = { 6, 7, 21, 897 },
			["Edshearin|pagle"] = { 5, 7, -12, 741 },
			["Guanyîn|raden"] = { 5, 7, -12, 741 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 1087 },
			["Smokinweedle|raden"] = { 5, 6, -29, 940 },
			["Critwo|raden"] = { 5, 4, 6, 896 },
			["Livekirkly|raden"] = { 5, 4, 48, 1256 },
			["Nazmirr|pagle"] = { 5, 4, -10, 1005 },
			["Yglol|raden"] = { 5, 4, 6, 963 },
			["Chotter|pagle"] = { 5, 3, 68, 1258 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 731 },
			["Donceno|nazgrim"] = { 4, 3, 8, 1283 },
			["Faex|arugal-au"] = { 4, 3, 5, 813 },
			["Magdalenia|pagle"] = { 3, 4, -1, 1082 },
			["Sunkencost|raden"] = { 4, 3, 77, 716 },
			["Balota|raden"] = { 5, 1, 23, 1076 },
			["Bigf|arugal-au"] = { 1, 5, 23, 730 },
			["Bisü|pagle"] = { 3, 3, 5, 1373 },
			["Mistyxo|raden"] = { 5, 1, 29, 1164 },
			["Polutropos|galakras"] = { 3, 3, 5, 1081 },
			["Saintjuan|raden"] = { 6, 0, 55, 1076 },
			["Stoptalkme|raden"] = { 6, 0, 13, 980 },
			["Uhexperiment|pagle"] = { 2, 4, -28, 1203 },
			["Darkdeamon|pagle"] = { 1, 4, -1, 123 },
			["Destrotensei|pagle"] = { 1, 4, 18, 125 },
			["Executeheal|pagle"] = { 1, 4, 7, 1146 },
			["Fróst|raden"] = { 1, 4, 8, 1144 },
			["Ikillondc|raden"] = { 5, 0, 21, 1221 },
			["Isåbell|pagle"] = { 5, 0, 51, 1110 },
			["Kelaía|pagle"] = { 2, 3, -12, 1076 },
			["Rëyy|raden"] = { 3, 2, 32, 1076 },
			["Zheani|raden"] = { 2, 3, -28, 1048 },
			["Badabign|pagle"] = { 1, 3, -6, 961 },
			["Blankisa|raden"] = { 2, 2, 2, 852 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 896 },
			["Fingerplay|galakras"] = { 0, 4, -41, 896 },
			["Goofygoofer|raden"] = { 4, 0, 9, 145 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 935 },
			["Lolggz|galakras"] = { 0, 4, -41, 896 },
			["Møonxz|raden"] = { 3, 1, 29, 867 },
			["Poizøønzx|galakras"] = { 4, 0, 12, 176 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 1192 },
			["Zerfecto|galakras"] = { 3, 1, 21, 983 },
			["Bagahbonesx|pagle"] = { 2, 1, 37, 1436 },
			["Chumpele|raden"] = { 1, 2, 9, 1121 },
			["Emielaina|pagle"] = { 0, 3, 0, 938 },
			["Glinna|raden"] = { 3, 0, 6, 157 },
			["Hifukface|raden"] = { 2, 1, 7, 317 },
			["Lvl|raden"] = { 1, 2, -11, 807 },
			["Mondozen|raden"] = { 1, 2, 16, 321 },
			["Omnixide|raden"] = { 1, 2, 16, 321 },
			["Shadowstormx|immerseus"] = { 0, 3, -14, 1422 },
			["Trapzillas|pagle"] = { 1, 2, 20, 1122 },
			["Blankis|raden"] = { 0, 2, -7, 908 },
			["Chorizero|immerseus"] = { 0, 2, -20, 1384 },
			["Garnaby|pagle"] = { 0, 2, -3, 1352 },
			["Gloryboi|pagle"] = { 0, 2, -32, 1132 },
			["Ivoxygen|pagle"] = { 0, 2, 0, 1276 },
			["Nf|raden"] = { 0, 2, -22, 1121 },
			["Stàn|immerseus"] = { 0, 2, -24, 1383 },
			["Gooseus|pagle"] = { 1, 0, 8, 176 },
			["Killou|pagle"] = { 0, 1, -10, 1076 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1256 },
			["Miposhká|raden"] = { 1, 0, 0, 1073 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1256 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 611 },
			["Sneaksaround|raden"] = { 0, 1, 0, 1270 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 1098 },
		},
	},
}

