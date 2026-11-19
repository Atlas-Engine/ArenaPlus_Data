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
	built = 1795118395,
	builtText = "2026-11-19 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 1, 4, -11, 94 },
			["Crepes|pagle"] = { 4, 0, 8, 163 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 109 },
			["Crapes|raden"] = { 0, 2, -6, 68 },
			["Speakington|raden"] = { 2, 0, 4, 94 },
			["Untaked|pagle"] = { 1, 1, -9, 94 },
			["Kelaía|pagle"] = { 0, 1, -5, 94 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 1, 4, -11, 94 },
			["Møønzx|galakras"] = { 5, 0, 20, 245 },
			["Crepes|pagle"] = { 4, 0, 8, 163 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 192 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 109 },
			["Untaked|pagle"] = { 1, 2, -13, 94 },
			["Crapes|raden"] = { 0, 2, -6, 68 },
			["Destrotensei|pagle"] = { 0, 2, -2, 184 },
			["Speakington|raden"] = { 2, 0, 4, 94 },
			["Kelaía|pagle"] = { 0, 1, -5, 94 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Chiokeme|arugal-au"] = { 11, 4, 78, 632 },
			["Stattic|arugal-au"] = { 11, 4, 70, 632 },
			["Musician|raden"] = { 9, 5, 2, 662 },
			["Stealurgirl|raden"] = { 9, 5, 2, 637 },
			["Nilio|raden"] = { 6, 6, -7, 675 },
			["Crepes|pagle"] = { 6, 0, 16, 163 },
			["Juul|raden"] = { 2, 4, -10, 652 },
			["Maddlexie|pagle"] = { 2, 4, -22, 651 },
			["Moneymay|pagle"] = { 3, 3, 17, 607 },
			["Heriberto|pagle"] = { 1, 4, -11, 94 },
			["Møønzx|galakras"] = { 5, 0, 20, 245 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 192 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 109 },
			["Untaked|pagle"] = { 1, 2, -13, 94 },
			["Crapes|raden"] = { 0, 2, -6, 68 },
			["Destrotensei|pagle"] = { 0, 2, -2, 184 },
			["Speakington|raden"] = { 2, 0, 4, 94 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 454 },
			["Kelaía|pagle"] = { 0, 1, -5, 94 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 662 },
			["Stealurgirl|raden"] = { 25, 20, -22, 637 },
			["Kelmight|pagle"] = { 15, 10, 60, 860 },
			["Poixon|pagle"] = { 16, 9, 58, 860 },
			["Rektalrager|galakras"] = { 8, 13, -43, 962 },
			["Spreadpres|pagle"] = { 11, 10, -37, 933 },
			["Stàn|immerseus"] = { 11, 10, 11, 933 },
			["Kamikylol|pagle"] = { 8, 12, -1, 731 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 781 },
			["Speakington|raden"] = { 14, 4, 122, 94 },
			["Atreyuz|galakras"] = { 9, 6, 9, 867 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 632 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 916 },
			["Glinna|raden"] = { 8, 7, -24, 974 },
			["Nazmirr|pagle"] = { 10, 5, 118, 979 },
			["Stattic|arugal-au"] = { 11, 4, 70, 632 },
			["Horniaf|pagle"] = { 6, 7, 6, 1004 },
			["Trapfiendx|raden"] = { 7, 6, 86, 758 },
			["Nilio|raden"] = { 6, 6, -7, 675 },
			["Zurrago|pagle"] = { 7, 5, -2, 814 },
			["Imperïa|pagle"] = { 7, 4, 17, 1087 },
			["Smokinweedle|raden"] = { 7, 4, 35, 938 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 1097 },
			["Youcutebb|raden"] = { 7, 4, 155, 946 },
			["Prettigood|raden"] = { 3, 7, -34, 906 },
			["Tastetheshot|raden"] = { 3, 7, -4, 908 },
			["Apechamp|raden"] = { 1, 7, -51, 856 },
			["Atiko|galakras"] = { 4, 4, 13, 814 },
			["Chotter|pagle"] = { 0, 8, -9, 840 },
			["Dojadruid|raden"] = { 5, 3, 34, 992 },
			["Laraçroft|raden"] = { 5, 3, 29, 992 },
			["Polutropos|galakras"] = { 3, 5, -23, 814 },
			["Praísed|raden"] = { 3, 5, -14, 958 },
			["Sponsorz|raden"] = { 1, 7, 15, 855 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 963 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 961 },
			["Dojareborn|pagle"] = { 4, 3, 20, 955 },
			["Dunkyb|raden"] = { 4, 3, 18, 961 },
			["Ginastel|raden"] = { 4, 3, 22, 952 },
			["Heriberto|pagle"] = { 1, 6, -18, 94 },
			["Crepes|pagle"] = { 6, 0, 16, 163 },
			["Hairyarms|raden"] = { 2, 4, 4, 1156 },
			["Juul|raden"] = { 2, 4, -10, 652 },
			["Maddlexie|pagle"] = { 2, 4, -22, 651 },
			["Moneymay|pagle"] = { 3, 3, 17, 607 },
			["Skeletonzx|galakras"] = { 6, 0, 25, 109 },
			["Jonwald|pagle"] = { 4, 1, 65, 938 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 939 },
			["Møønzx|galakras"] = { 5, 0, 20, 245 },
			["Retmainxd|raden"] = { 2, 3, 2, 1060 },
			["Scorched|pagle"] = { 3, 2, 5, 732 },
			["Electabuzz|raden"] = { 2, 2, 24, 1162 },
			["Genuinely|raden"] = { 0, 4, -10, 1111 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 192 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 986 },
			["Chorizero|immerseus"] = { 3, 0, 9, 1406 },
			["Fctry|raden"] = { 2, 1, 31, 860 },
			["Huntardspec|raden"] = { 1, 2, 10, 1115 },
			["Kushgodx|raden"] = { 0, 3, -29, 1038 },
			["Monuei|raden"] = { 3, 0, 18, 947 },
			["Nyloras|pagle"] = { 3, 0, 17, 1118 },
			["Untaked|pagle"] = { 1, 2, -13, 94 },
			["Virtuoso|raden"] = { 3, 0, 34, 986 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 917 },
			["Crapes|raden"] = { 0, 2, -6, 68 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 1086 },
			["Destrotensei|pagle"] = { 0, 2, -2, 184 },
			["Drlovee|benediction"] = { 2, 0, 37, 1012 },
			["Jhazito|pagle"] = { 0, 2, -4, 1020 },
			["Notgaylordz|raden"] = { 0, 2, 0, 1089 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 1019 },
			["Putinga|pagle"] = { 0, 2, -13, 1038 },
			["Rëyy|raden"] = { 2, 0, 24, 1066 },
			["Saintjuan|raden"] = { 1, 1, 10, 1084 },
			["Tamerak|raden"] = { 1, 1, 11, 1077 },
			["Thebucket|raden"] = { 0, 2, 0, 1105 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 454 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 1075 },
			["Drgewch|raden"] = { 1, 0, 14, 934 },
			["Kelaía|pagle"] = { 0, 1, -5, 94 },
			["Pablosanchez|raden"] = { 0, 1, -12, 1022 },
			["Qtx|raden"] = { 1, 0, 14, 934 },
		},
	},
}

