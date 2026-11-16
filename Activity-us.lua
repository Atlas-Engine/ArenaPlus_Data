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
	built = 1794851998,
	builtText = "2026-11-16 01:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tamerak|raden"] = { 2, 1, 0, 37 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Hifukface|raden"] = { 2, 1, 7, 77 },
			["Mondozen|raden"] = { 1, 2, 16, 80 },
			["Omnixide|raden"] = { 1, 2, 16, 81 },
			["Tamerak|raden"] = { 2, 1, 0, 37 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Hifukface|raden"] = { 2, 1, 7, 77 },
			["Mondozen|raden"] = { 1, 2, 16, 80 },
			["Omnixide|raden"] = { 1, 2, 16, 81 },
			["Tamerak|raden"] = { 2, 1, 0, 37 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Qwes|raden"] = { 19, 3, 88, 530 },
			["Holidayhamii|pagle"] = { 8, 6, 33, 656 },
			["Maddlexie|pagle"] = { 6, 7, 21, 657 },
			["Spreadpres|pagle"] = { 6, 7, 8, 657 },
			["Edshearin|pagle"] = { 5, 7, -12, 501 },
			["Guanyîn|raden"] = { 5, 7, -12, 501 },
			["Stattic|arugal-au"] = { 4, 7, -11, 656 },
			["Smokinweedle|raden"] = { 4, 6, -37, 699 },
			["Critwo|raden"] = { 5, 4, 6, 656 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 491 },
			["Faex|arugal-au"] = { 4, 3, 5, 573 },
			["Sunkencost|raden"] = { 4, 3, 77, 476 },
			["Bigf|arugal-au"] = { 1, 5, 23, 490 },
			["Blankisa|raden"] = { 2, 2, 2, 611 },
			["Fingerplay|galakras"] = { 0, 4, -41, 656 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 695 },
			["Lolggz|galakras"] = { 0, 4, -41, 656 },
			["Youcutebb|raden"] = { 2, 2, 41, 700 },
			["Ecafkcufhi|raden"] = { 1, 2, -4, 656 },
			["Emielaina|pagle"] = { 0, 3, 0, 698 },
			["Hifukface|raden"] = { 2, 1, 7, 77 },
			["Mondozen|raden"] = { 1, 2, 16, 80 },
			["Omnixide|raden"] = { 1, 2, 16, 81 },
			["Poizøønzx|galakras"] = { 3, 0, 9, 387 },
			["Tamerak|raden"] = { 2, 1, 0, 37 },
			["Blankis|raden"] = { 0, 2, -7, 668 },
			["Lvl|raden"] = { 0, 2, -18, 567 },
			["Møonxz|raden"] = { 1, 1, 7, 627 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 371 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tharealnerds|pagle"] = { 16, 16, 35, 1131 },
			["Moneymay|pagle"] = { 14, 15, -3, 1142 },
			["Tamerak|raden"] = { 19, 4, 161, 37 },
			["Fyruss|pagle"] = { 10, 12, 19, 1114 },
			["Qwes|raden"] = { 19, 3, 88, 530 },
			["Spreadpres|pagle"] = { 11, 11, 28, 657 },
			["Dankorbs|pagle"] = { 8, 11, -8, 733 },
			["Stattic|arugal-au"] = { 8, 11, -34, 656 },
			["Uhexperiment|pagle"] = { 12, 6, 11, 963 },
			["Heriberto|pagle"] = { 7, 10, -34, 816 },
			["Jivara|pagle"] = { 7, 8, 38, 1122 },
			["Pauliheal|raden"] = { 5, 10, 44, 1105 },
			["Soulsearch|raden"] = { 5, 10, 44, 1105 },
			["Holidayhamii|pagle"] = { 8, 6, 33, 656 },
			["Kelaía|pagle"] = { 9, 5, 20, 836 },
			["Youcutebb|raden"] = { 7, 7, 156, 700 },
			["Maddlexie|pagle"] = { 6, 7, 21, 657 },
			["Edshearin|pagle"] = { 5, 7, -12, 501 },
			["Guanyîn|raden"] = { 5, 7, -12, 501 },
			["Xanacs|nazgrim"] = { 6, 6, 117, 847 },
			["Smokinweedle|raden"] = { 5, 6, -29, 699 },
			["Hueland|raden"] = { 4, 6, -11, 1321 },
			["Critwo|raden"] = { 5, 4, 6, 656 },
			["Glinna|raden"] = { 9, 0, 76, 1210 },
			["Livekirkly|raden"] = { 5, 4, 48, 1016 },
			["Nazmirr|pagle"] = { 5, 4, -10, 765 },
			["Yglol|raden"] = { 5, 4, 6, 723 },
			["Chotter|pagle"] = { 5, 3, 68, 1018 },
			["Mòónfirebeam|raden"] = { 1, 7, -38, 491 },
			["Donceno|nazgrim"] = { 4, 3, 8, 1042 },
			["Faex|arugal-au"] = { 4, 3, 5, 573 },
			["Magdalenia|pagle"] = { 3, 4, -1, 842 },
			["Sunkencost|raden"] = { 4, 3, 77, 476 },
			["Balota|raden"] = { 5, 1, 23, 836 },
			["Bigf|arugal-au"] = { 1, 5, 23, 490 },
			["Bisü|pagle"] = { 3, 3, 5, 1133 },
			["Marcão|pagle"] = { 1, 5, -54, 1381 },
			["Mistyxo|raden"] = { 5, 1, 29, 924 },
			["Polutropos|galakras"] = { 3, 3, 5, 841 },
			["Saintjuan|raden"] = { 6, 0, 55, 836 },
			["Stoptalkme|raden"] = { 6, 0, 13, 739 },
			["Trevoso|pagle"] = { 1, 5, -54, 1380 },
			["Executeheal|pagle"] = { 1, 4, 7, 906 },
			["Fróst|raden"] = { 1, 4, 8, 904 },
			["Ikillondc|raden"] = { 5, 0, 21, 980 },
			["Isåbell|pagle"] = { 5, 0, 51, 870 },
			["Rëyy|raden"] = { 3, 2, 32, 836 },
			["Zheani|raden"] = { 2, 3, -28, 808 },
			["Badabign|pagle"] = { 1, 3, -6, 721 },
			["Blankisa|raden"] = { 2, 2, 2, 611 },
			["Ecafkcufhi|raden"] = { 1, 3, -10, 656 },
			["Fingerplay|galakras"] = { 0, 4, -41, 656 },
			["Harleyquinxo|lei-shen"] = { 3, 1, 34, 695 },
			["Lolggz|galakras"] = { 0, 4, -41, 656 },
			["Møonxz|raden"] = { 3, 1, 29, 627 },
			["Wowamazingcc|raden"] = { 3, 1, 37, 952 },
			["Xatica|pagle"] = { 4, 0, 42, 1331 },
			["Xatyka|pagle"] = { 4, 0, 26, 1246 },
			["Zerfecto|galakras"] = { 3, 1, 21, 743 },
			["Bagahbonesx|pagle"] = { 2, 1, 37, 1196 },
			["Chumpele|raden"] = { 1, 2, 9, 881 },
			["Emielaina|pagle"] = { 0, 3, 0, 698 },
			["Garnaby|pagle"] = { 0, 3, -8, 1112 },
			["Hifukface|raden"] = { 2, 1, 7, 77 },
			["Lvl|raden"] = { 1, 2, -11, 567 },
			["Mondozen|raden"] = { 1, 2, 16, 80 },
			["Møønzx|galakras"] = { 2, 1, -1, 1423 },
			["Omnixide|raden"] = { 1, 2, 16, 81 },
			["Poizøønzx|galakras"] = { 3, 0, 9, 387 },
			["Shadowstormx|immerseus"] = { 0, 3, -14, 1182 },
			["Trapzillas|pagle"] = { 1, 2, 20, 882 },
			["Blankis|raden"] = { 0, 2, -7, 668 },
			["Chorizero|immerseus"] = { 0, 2, -20, 1144 },
			["Gloryboi|pagle"] = { 0, 2, -32, 892 },
			["Goofygoofer|raden"] = { 2, 0, 24, 1249 },
			["Ivoxygen|pagle"] = { 0, 2, 0, 1035 },
			["Nf|raden"] = { 0, 2, -22, 881 },
			["Pablosanchez|raden"] = { 1, 1, -6, 1389 },
			["Persa|nazgrim"] = { 0, 2, -10, 1236 },
			["Stàn|immerseus"] = { 0, 2, -24, 1143 },
			["Killou|pagle"] = { 0, 1, -10, 836 },
			["Lunchmeat|nazgrim"] = { 1, 0, 5, 1016 },
			["Miposhká|raden"] = { 1, 0, 0, 833 },
			["Penelope|raden"] = { 0, 1, 0, 1315 },
			["Pisch|arugal-au"] = { 0, 1, -11, 1016 },
			["Skeletonzx|galakras"] = { 1, 0, 5, 371 },
			["Sneaksaround|raden"] = { 0, 1, 0, 1030 },
			["Undeadgød|immerseus"] = { 0, 1, -2, 858 },
			["Yvlxd|pagle"] = { 1, 0, 22, 1376 },
		},
	},
}

