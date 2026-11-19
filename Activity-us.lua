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
	built = 1795103992,
	builtText = "2026-11-19 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 5 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 5 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 5, 0, 20, 5 },
			["Crepes|pagle"] = { 2, 0, 8, 333 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 214 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Musician|raden"] = { 14, 15, -63, 421 },
			["Stealurgirl|raden"] = { 14, 15, -63, 397 },
			["Kelmight|pagle"] = { 15, 10, 60, 620 },
			["Poixon|pagle"] = { 16, 9, 58, 620 },
			["Kamikylol|pagle"] = { 8, 12, -1, 491 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 392 },
			["Stattic|arugal-au"] = { 11, 4, 70, 392 },
			["Trapfiendx|raden"] = { 7, 6, 86, 518 },
			["Nilio|raden"] = { 6, 6, -7, 435 },
			["Speakington|raden"] = { 10, 2, 94, 636 },
			["Statticdr|arugal-au"] = { 6, 6, 7, 541 },
			["Zurrago|pagle"] = { 7, 5, -2, 574 },
			["Spreadpres|pagle"] = { 6, 5, -17, 693 },
			["Stàn|immerseus"] = { 6, 5, 3, 693 },
			["Atreyuz|galakras"] = { 6, 3, 30, 627 },
			["Dankenbrew|lei-shen"] = { 6, 3, 21, 676 },
			["Apechamp|raden"] = { 1, 7, -51, 616 },
			["Chotter|pagle"] = { 0, 8, -9, 600 },
			["Polutropos|galakras"] = { 3, 5, -23, 574 },
			["Sponsorz|raden"] = { 1, 7, 15, 615 },
			["Atiko|galakras"] = { 4, 3, 19, 574 },
			["Dojareborn|pagle"] = { 4, 3, 20, 715 },
			["Ginastel|raden"] = { 4, 3, 22, 712 },
			["Praísed|raden"] = { 3, 4, -9, 718 },
			["Smokinweedle|raden"] = { 4, 3, 11, 698 },
			["Youcutebb|raden"] = { 4, 3, 87, 706 },
			["Juul|raden"] = { 2, 4, -10, 412 },
			["Maddlexie|pagle"] = { 2, 4, -22, 411 },
			["Moneymay|pagle"] = { 3, 3, 17, 367 },
			["Jonwald|pagle"] = { 4, 1, 65, 698 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 699 },
			["Møønzx|galakras"] = { 5, 0, 20, 5 },
			["Scorched|pagle"] = { 3, 2, 5, 492 },
			["Fctry|raden"] = { 2, 1, 31, 620 },
			["Monuei|raden"] = { 3, 0, 18, 707 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 677 },
			["Crepes|pagle"] = { 2, 0, 8, 333 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 214 },
			["Drgewch|raden"] = { 1, 0, 14, 694 },
			["Prettigood|raden"] = { 1, 0, 10, 666 },
			["Qtx|raden"] = { 1, 0, 14, 694 },
			["Tastetheshot|raden"] = { 1, 0, 14, 668 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 421 },
			["Stealurgirl|raden"] = { 25, 20, -22, 397 },
			["Kelmight|pagle"] = { 15, 10, 60, 620 },
			["Poixon|pagle"] = { 16, 9, 58, 620 },
			["Møønzx|galakras"] = { 14, 9, 42, 5 },
			["Rektalrager|galakras"] = { 8, 13, -43, 722 },
			["Spreadpres|pagle"] = { 11, 10, -37, 693 },
			["Stàn|immerseus"] = { 11, 10, 11, 693 },
			["Kamikylol|pagle"] = { 8, 12, -1, 491 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 541 },
			["Psychotik|lei-shen"] = { 18, 0, 70, 1294 },
			["Speakington|raden"] = { 12, 4, 118, 636 },
			["Atreyuz|galakras"] = { 9, 6, 9, 627 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 392 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 676 },
			["Glinna|raden"] = { 8, 7, -24, 733 },
			["Heidrichs|pagle"] = { 8, 7, 104, 1356 },
			["Nazmirr|pagle"] = { 10, 5, 118, 739 },
			["Stattic|arugal-au"] = { 11, 4, 70, 392 },
			["Horniaf|pagle"] = { 6, 7, 6, 764 },
			["Trapfiendx|raden"] = { 7, 6, 86, 518 },
			["Nilio|raden"] = { 6, 6, -7, 435 },
			["Zurrago|pagle"] = { 7, 5, -2, 574 },
			["Imperïa|pagle"] = { 7, 4, 17, 847 },
			["Smokinweedle|raden"] = { 7, 4, 35, 698 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 856 },
			["Youcutebb|raden"] = { 7, 4, 155, 706 },
			["Prettigood|raden"] = { 3, 7, -34, 666 },
			["Tastetheshot|raden"] = { 3, 7, -4, 668 },
			["Apechamp|raden"] = { 1, 7, -51, 616 },
			["Atiko|galakras"] = { 4, 4, 13, 574 },
			["Chotter|pagle"] = { 0, 8, -9, 600 },
			["Dojadruid|raden"] = { 5, 3, 34, 752 },
			["Laraçroft|raden"] = { 5, 3, 29, 752 },
			["Polutropos|galakras"] = { 3, 5, -23, 574 },
			["Praísed|raden"] = { 3, 5, -14, 718 },
			["Sponsorz|raden"] = { 1, 7, 15, 615 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 723 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 721 },
			["Dojareborn|pagle"] = { 4, 3, 20, 715 },
			["Dunkyb|raden"] = { 4, 3, 18, 721 },
			["Ginastel|raden"] = { 4, 3, 22, 712 },
			["Hairyarms|raden"] = { 2, 4, 4, 916 },
			["Juul|raden"] = { 2, 4, -10, 412 },
			["Maddlexie|pagle"] = { 2, 4, -22, 411 },
			["Moneymay|pagle"] = { 3, 3, 17, 367 },
			["Jonwald|pagle"] = { 4, 1, 65, 698 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 699 },
			["Retmainxd|raden"] = { 2, 3, 2, 820 },
			["Scorched|pagle"] = { 3, 2, 5, 492 },
			["Electabuzz|raden"] = { 2, 2, 24, 922 },
			["Genuinely|raden"] = { 0, 4, -10, 871 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 746 },
			["Chorizero|immerseus"] = { 3, 0, 9, 1166 },
			["Fctry|raden"] = { 2, 1, 31, 620 },
			["Huntardspec|raden"] = { 1, 2, 10, 875 },
			["Kushgodx|raden"] = { 0, 3, -29, 798 },
			["Monuei|raden"] = { 3, 0, 18, 707 },
			["Nyloras|pagle"] = { 3, 0, 17, 878 },
			["Saintjuan|raden"] = { 2, 1, 13, 844 },
			["Skeletonzx|galakras"] = { 3, 0, 12, 1153 },
			["Virtuoso|raden"] = { 3, 0, 34, 746 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 677 },
			["Crepes|pagle"] = { 2, 0, 8, 333 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 846 },
			["Drlovee|benediction"] = { 2, 0, 37, 772 },
			["Heriberto|pagle"] = { 0, 2, -7, 754 },
			["Jhazito|pagle"] = { 0, 2, -4, 780 },
			["Notgaylordz|raden"] = { 0, 2, 0, 849 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 779 },
			["Putinga|pagle"] = { 0, 2, -13, 798 },
			["Rëyy|raden"] = { 2, 0, 24, 826 },
			["Tamerak|raden"] = { 1, 1, 11, 837 },
			["Thebucket|raden"] = { 0, 2, 0, 865 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 214 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 835 },
			["Drgewch|raden"] = { 1, 0, 14, 694 },
			["Pablosanchez|raden"] = { 0, 1, -12, 782 },
			["Qtx|raden"] = { 1, 0, 14, 694 },
		},
	},
}

