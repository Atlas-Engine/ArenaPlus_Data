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
	built = 1795107597,
	builtText = "2026-11-19 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Destrotensei|pagle"] = { 0, 2, -2, 4 },
			["Untaked|pagle"] = { 0, 1, -4, 42 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 65 },
			["Destrotensei|pagle"] = { 0, 2, -2, 4 },
			["Untaked|pagle"] = { 0, 1, -4, 42 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 65 },
			["Destrotensei|pagle"] = { 0, 2, -2, 4 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 274 },
			["Untaked|pagle"] = { 0, 1, -4, 42 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Musician|raden"] = { 14, 15, -63, 482 },
			["Stealurgirl|raden"] = { 14, 15, -63, 457 },
			["Poixon|pagle"] = { 16, 9, 58, 680 },
			["Kamikylol|pagle"] = { 8, 12, -1, 551 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 452 },
			["Stattic|arugal-au"] = { 11, 4, 70, 452 },
			["Trapfiendx|raden"] = { 7, 6, 86, 579 },
			["Kelmight|pagle"] = { 6, 6, 17, 680 },
			["Nilio|raden"] = { 6, 6, -7, 495 },
			["Speakington|raden"] = { 10, 2, 94, 696 },
			["Statticdr|arugal-au"] = { 6, 6, 7, 601 },
			["Zurrago|pagle"] = { 7, 5, -2, 634 },
			["Atreyuz|galakras"] = { 6, 3, 30, 687 },
			["Chotter|pagle"] = { 0, 8, -9, 660 },
			["Polutropos|galakras"] = { 3, 5, -23, 634 },
			["Atiko|galakras"] = { 4, 3, 19, 634 },
			["Juul|raden"] = { 2, 4, -10, 472 },
			["Maddlexie|pagle"] = { 2, 4, -22, 471 },
			["Moneymay|pagle"] = { 3, 3, 17, 427 },
			["Apechamp|raden"] = { 1, 4, -30, 676 },
			["Møønzx|galakras"] = { 5, 0, 20, 65 },
			["Scorched|pagle"] = { 3, 2, 5, 552 },
			["Sponsorz|raden"] = { 1, 4, 15, 675 },
			["Fctry|raden"] = { 2, 1, 31, 680 },
			["Crepes|pagle"] = { 2, 0, 8, 393 },
			["Destrotensei|pagle"] = { 0, 2, -2, 4 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 274 },
			["Untaked|pagle"] = { 0, 1, -4, 42 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 482 },
			["Stealurgirl|raden"] = { 25, 20, -22, 457 },
			["Kelmight|pagle"] = { 15, 10, 60, 680 },
			["Poixon|pagle"] = { 16, 9, 58, 680 },
			["Møønzx|galakras"] = { 14, 9, 42, 65 },
			["Rektalrager|galakras"] = { 8, 13, -43, 782 },
			["Spreadpres|pagle"] = { 11, 10, -37, 753 },
			["Stàn|immerseus"] = { 11, 10, 11, 753 },
			["Kamikylol|pagle"] = { 8, 12, -1, 551 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 601 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 1354 },
			["Speakington|raden"] = { 12, 4, 118, 696 },
			["Atreyuz|galakras"] = { 9, 6, 9, 687 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 452 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 736 },
			["Glinna|raden"] = { 8, 7, -24, 794 },
			["Heidrichs|pagle"] = { 8, 7, 104, 1416 },
			["Nazmirr|pagle"] = { 10, 5, 118, 800 },
			["Stattic|arugal-au"] = { 11, 4, 70, 452 },
			["Horniaf|pagle"] = { 6, 7, 6, 824 },
			["Trapfiendx|raden"] = { 7, 6, 86, 579 },
			["Nilio|raden"] = { 6, 6, -7, 495 },
			["Zurrago|pagle"] = { 7, 5, -2, 634 },
			["Imperïa|pagle"] = { 7, 4, 17, 907 },
			["Smokinweedle|raden"] = { 7, 4, 35, 758 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 917 },
			["Youcutebb|raden"] = { 7, 4, 155, 766 },
			["Prettigood|raden"] = { 3, 7, -34, 726 },
			["Tastetheshot|raden"] = { 3, 7, -4, 728 },
			["Apechamp|raden"] = { 1, 7, -51, 676 },
			["Atiko|galakras"] = { 4, 4, 13, 634 },
			["Chotter|pagle"] = { 0, 8, -9, 660 },
			["Dojadruid|raden"] = { 5, 3, 34, 812 },
			["Laraçroft|raden"] = { 5, 3, 29, 812 },
			["Polutropos|galakras"] = { 3, 5, -23, 634 },
			["Praísed|raden"] = { 3, 5, -14, 778 },
			["Sponsorz|raden"] = { 1, 7, 15, 675 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 783 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 781 },
			["Dojareborn|pagle"] = { 4, 3, 20, 775 },
			["Dunkyb|raden"] = { 4, 3, 18, 782 },
			["Ginastel|raden"] = { 4, 3, 22, 772 },
			["Hairyarms|raden"] = { 2, 4, 4, 976 },
			["Juul|raden"] = { 2, 4, -10, 472 },
			["Maddlexie|pagle"] = { 2, 4, -22, 471 },
			["Moneymay|pagle"] = { 3, 3, 17, 427 },
			["Jonwald|pagle"] = { 4, 1, 65, 758 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 759 },
			["Retmainxd|raden"] = { 2, 3, 2, 880 },
			["Scorched|pagle"] = { 3, 2, 5, 552 },
			["Electabuzz|raden"] = { 2, 2, 24, 982 },
			["Genuinely|raden"] = { 0, 4, -10, 931 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 806 },
			["Chorizero|immerseus"] = { 3, 0, 9, 1226 },
			["Fctry|raden"] = { 2, 1, 31, 680 },
			["Huntardspec|raden"] = { 1, 2, 10, 935 },
			["Kushgodx|raden"] = { 0, 3, -29, 858 },
			["Monuei|raden"] = { 3, 0, 18, 767 },
			["Nyloras|pagle"] = { 3, 0, 17, 938 },
			["Saintjuan|raden"] = { 2, 1, 13, 904 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 1213 },
			["Virtuoso|raden"] = { 3, 0, 34, 806 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 737 },
			["Crepes|pagle"] = { 2, 0, 8, 393 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 906 },
			["Destrotensei|pagle"] = { 0, 2, -2, 4 },
			["Drlovee|benediction"] = { 2, 0, 37, 832 },
			["Heriberto|pagle"] = { 0, 2, -7, 814 },
			["Jhazito|pagle"] = { 0, 2, -4, 840 },
			["Notgaylordz|raden"] = { 0, 2, 0, 909 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 839 },
			["Putinga|pagle"] = { 0, 2, -13, 858 },
			["Rëyy|raden"] = { 2, 0, 24, 886 },
			["Tamerak|raden"] = { 1, 1, 11, 897 },
			["Thebucket|raden"] = { 0, 2, 0, 925 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 274 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 895 },
			["Drgewch|raden"] = { 1, 0, 14, 754 },
			["Pablosanchez|raden"] = { 0, 1, -12, 842 },
			["Qtx|raden"] = { 1, 0, 14, 754 },
			["Untaked|pagle"] = { 0, 1, -4, 42 },
		},
	},
}

