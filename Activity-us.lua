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
	built = 1794855592,
	builtText = "2026-11-16 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Hifukface|raden"] = { 2, 1, 7, 137 },
			["Mondozen|raden"] = { 1, 2, 16, 140 },
			["Omnixide|raden"] = { 1, 2, 16, 141 },
			["Tamerak|raden"] = { 2, 1, 0, 97 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Hifukface|raden"] = { 2, 1, 7, 137 },
			["Mondozen|raden"] = { 1, 2, 16, 140 },
			["Omnixide|raden"] = { 1, 2, 16, 141 },
			["Tamerak|raden"] = { 2, 1, 0, 97 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Qwes|raden"] = { 19, 3, 88, 590 },
			["Holidayhamii|pagle"] = { 8, 6, 33, 716 },
			["Maddlexie|pagle"] = { 6, 7, 21, 717 },
			["Spreadpres|pagle"] = { 6, 7, 8, 717 },
			["Edshearin|pagle"] = { 5, 7, -12, 561 },
			["Guanyîn|raden"] = { 5, 7, -12, 561 },
			["Stattic|arugal-au"] = { 4, 7, -11, 716 },
			["Critwo|raden"] = { 5, 4, 6, 716 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 551 },
			["Faex|arugal-au"] = { 4, 3, 5, 633 },
			["Sunkencost|raden"] = { 4, 3, 77, 536 },
			["Bigf|arugal-au"] = { 1, 5, 23, 550 },
			["Fingerplay|galakras"] = { 0, 4, -41, 716 },
			["Lolggz|galakras"] = { 0, 4, -41, 716 },
			["Ecafkcufhi|raden"] = { 1, 2, -4, 716 },
			["Hifukface|raden"] = { 2, 1, 7, 137 },
			["Mondozen|raden"] = { 1, 2, 16, 140 },
			["Omnixide|raden"] = { 1, 2, 16, 141 },
			["Poizøønzx|galakras"] = { 3, 0, 9, 447 },
			["Tamerak|raden"] = { 2, 1, 0, 97 },
			["Blankisa|raden"] = { 1, 1, 3, 671 },
			["Lvl|raden"] = { 0, 2, -18, 627 },
			["Møonxz|raden"] = { 1, 1, 7, 687 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 431 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tharealnerds|pagle"] = { 16, 16, 35, 1190 },
			["Moneymay|pagle"] = { 14, 15, -3, 1202 },
			["Tamerak|raden"] = { 19, 4, 161, 97 },
			["Fyruss|pagle"] = { 10, 12, 19, 1174 },
			["Qwes|raden"] = { 19, 3, 88, 590 },
			["Spreadpres|pagle"] = { 11, 11, 28, 717 },
			["Dankorbs|pagle"] = { 8, 11, -8, 793 },
			["Stattic|arugal-au"] = { 8, 11, -34, 716 },
			["Uhexperiment|pagle"] = { 12, 6, 11, 1023 },
			["Heriberto|pagle"] = { 7, 10, -34, 876 },
			["Jivara|pagle"] = { 7, 8, 38, 1182 },
			["Pauliheal|raden"] = { 5, 10, 44, 1165 },
			["Soulsearch|raden"] = { 5, 10, 44, 1165 },
			["Holidayhamii|pagle"] = { 8, 6, 33, 716 },
			["Kelaía|pagle"] = { 9, 5, 20, 896 },
			["Youcutebb|raden"] = { 7, 7, 156, 760 },
			["Maddlexie|pagle"] = { 6, 7, 21, 717 },
			["Edshearin|pagle"] = { 5, 7, -12, 561 },
			["Guanyîn|raden"] = { 5, 7, -12, 561 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 907 },
			["Smokinweedle|raden"] = { 5, 6, -29, 759 },
			["Hueland|raden"] = { 4, 6, -11, 1380 },
			["Critwo|raden"] = { 5, 4, 6, 716 },
			["Glinna|raden"] = { 9, 0, 76, 1270 },
			["Livekirkly|raden"] = { 5, 4, 48, 1076 },
			["Nazmirr|pagle"] = { 5, 4, -10, 825 },
			["Yglol|raden"] = { 5, 4, 6, 783 },
			["Chotter|pagle"] = { 5, 3, 68, 1077 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 551 },
			["Donceno|nazgrim"] = { 4, 3, 8, 1102 },
			["Faex|arugal-au"] = { 4, 3, 5, 633 },
			["Magdalenia|pagle"] = { 3, 4, -1, 901 },
			["Sunkencost|raden"] = { 4, 3, 77, 536 },
			["Balota|raden"] = { 5, 1, 23, 896 },
			["Bigf|arugal-au"] = { 1, 5, 23, 550 },
			["Bisü|pagle"] = { 3, 3, 5, 1192 },
			["Mistyxo|raden"] = { 5, 1, 29, 984 },
			["Polutropos|galakras"] = { 3, 3, 5, 901 },
			["Saintjuan|raden"] = { 6, 0, 55, 896 },
			["Stoptalkme|raden"] = { 6, 0, 13, 799 },
			["Executeheal|pagle"] = { 1, 4, 7, 966 },
			["Fróst|raden"] = { 1, 4, 8, 963 },
			["Ikillondc|raden"] = { 5, 0, 21, 1040 },
			["Isåbell|pagle"] = { 5, 0, 51, 930 },
			["Rëyy|raden"] = { 3, 2, 32, 896 },
			["Zheani|raden"] = { 2, 3, -28, 868 },
			["Badabign|pagle"] = { 1, 3, -6, 781 },
			["Blankisa|raden"] = { 2, 2, 2, 671 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 716 },
			["Fingerplay|galakras"] = { 0, 4, -41, 716 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 755 },
			["Lolggz|galakras"] = { 0, 4, -41, 716 },
			["Møonxz|raden"] = { 3, 1, 29, 687 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 1012 },
			["Xatica|pagle"] = { 4, 0, 42, 1390 },
			["Xatyka|pagle"] = { 4, 0, 26, 1306 },
			["Zerfecto|galakras"] = { 3, 1, 21, 803 },
			["Bagahbonesx|pagle"] = { 2, 1, 37, 1256 },
			["Chumpele|raden"] = { 1, 2, 9, 941 },
			["Emielaina|pagle"] = { 0, 3, 0, 758 },
			["Garnaby|pagle"] = { 0, 3, -8, 1172 },
			["Hifukface|raden"] = { 2, 1, 7, 137 },
			["Lvl|raden"] = { 1, 2, -11, 627 },
			["Mondozen|raden"] = { 1, 2, 16, 140 },
			["Omnixide|raden"] = { 1, 2, 16, 141 },
			["Poizøønzx|galakras"] = { 3, 0, 9, 447 },
			["Shadowstormx|immerseus"] = { 0, 3, -14, 1241 },
			["Trapzillas|pagle"] = { 1, 2, 20, 941 },
			["Blankis|raden"] = { 0, 2, -7, 728 },
			["Chorizero|immerseus"] = { 0, 2, -20, 1204 },
			["Gloryboi|pagle"] = { 0, 2, -32, 952 },
			["Goofygoofer|raden"] = { 2, 0, 24, 1309 },
			["Ivoxygen|pagle"] = { 0, 2, 0, 1095 },
			["Nf|raden"] = { 0, 2, -22, 941 },
			["Persa|nazgrim"] = { 0, 2, -10, 1296 },
			["Stàn|immerseus"] = { 0, 2, -24, 1203 },
			["Killou|pagle"] = { 0, 1, -10, 896 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1076 },
			["Miposhká|raden"] = { 1, 0, 0, 893 },
			["Penelope|raden"] = { 0, 1, 0, 1375 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1076 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 431 },
			["Sneaksaround|raden"] = { 0, 1, 0, 1090 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 918 },
			["Yvlxd|pagle"] = { 1, 0, 22, 1436 },
		},
	},
}

