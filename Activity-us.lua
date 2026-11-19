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
	built = 1795121991,
	builtText = "2026-11-19 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 2, 0, 8, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 1, 4, -11, 154 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 169 },
			["Crapes|raden"] = { 0, 2, -6, 128 },
			["Møønzx|galakras"] = { 2, 0, 8, 48 },
			["Speakington|raden"] = { 2, 0, 4, 154 },
			["Untaked|pagle"] = { 1, 1, -9, 154 },
			["Kelaía|pagle"] = { 0, 1, -5, 154 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 7, 0, 28, 48 },
			["Heriberto|pagle"] = { 1, 4, -11, 154 },
			["Crepes|pagle"] = { 4, 0, 8, 223 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 252 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 169 },
			["Untaked|pagle"] = { 1, 2, -13, 154 },
			["Crapes|raden"] = { 0, 2, -6, 128 },
			["Destrotensei|pagle"] = { 0, 2, -2, 244 },
			["Speakington|raden"] = { 2, 0, 4, 154 },
			["Kelaía|pagle"] = { 0, 1, -5, 154 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Chiokeme|arugal-au"] = { 11, 4, 78, 692 },
			["Stattic|arugal-au"] = { 11, 4, 70, 692 },
			["Stealurgirl|raden"] = { 9, 5, 2, 697 },
			["Møønzx|galakras"] = { 7, 0, 28, 48 },
			["Crepes|pagle"] = { 6, 0, 16, 223 },
			["Juul|raden"] = { 2, 4, -10, 712 },
			["Maddlexie|pagle"] = { 2, 4, -22, 711 },
			["Moneymay|pagle"] = { 3, 3, 17, 667 },
			["Heriberto|pagle"] = { 1, 4, -11, 154 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 252 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 169 },
			["Untaked|pagle"] = { 1, 2, -13, 154 },
			["Crapes|raden"] = { 0, 2, -6, 128 },
			["Destrotensei|pagle"] = { 0, 2, -2, 244 },
			["Speakington|raden"] = { 2, 0, 4, 154 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 514 },
			["Kelaía|pagle"] = { 0, 1, -5, 154 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 721 },
			["Stealurgirl|raden"] = { 25, 20, -22, 697 },
			["Kelmight|pagle"] = { 15, 10, 60, 920 },
			["Poixon|pagle"] = { 16, 9, 58, 920 },
			["Rektalrager|galakras"] = { 8, 13, -43, 1022 },
			["Spreadpres|pagle"] = { 11, 10, -37, 993 },
			["Stàn|immerseus"] = { 11, 10, 11, 993 },
			["Kamikylol|pagle"] = { 8, 12, -1, 791 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 841 },
			["Speakington|raden"] = { 14, 4, 122, 154 },
			["Atreyuz|galakras"] = { 9, 6, 9, 927 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 692 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 976 },
			["Glinna|raden"] = { 8, 7, -24, 1033 },
			["Nazmirr|pagle"] = { 10, 5, 118, 1039 },
			["Stattic|arugal-au"] = { 11, 4, 70, 692 },
			["Horniaf|pagle"] = { 6, 7, 6, 1064 },
			["Trapfiendx|raden"] = { 7, 6, 86, 818 },
			["Nilio|raden"] = { 6, 6, -7, 735 },
			["Zurrago|pagle"] = { 7, 5, -2, 874 },
			["Imperïa|pagle"] = { 7, 4, 17, 1147 },
			["Smokinweedle|raden"] = { 7, 4, 35, 998 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 1156 },
			["Youcutebb|raden"] = { 7, 4, 155, 1006 },
			["Prettigood|raden"] = { 3, 7, -34, 966 },
			["Tastetheshot|raden"] = { 3, 7, -4, 968 },
			["Apechamp|raden"] = { 1, 7, -51, 916 },
			["Atiko|galakras"] = { 4, 4, 13, 874 },
			["Chotter|pagle"] = { 0, 8, -9, 900 },
			["Dojadruid|raden"] = { 5, 3, 34, 1052 },
			["Laraçroft|raden"] = { 5, 3, 29, 1052 },
			["Polutropos|galakras"] = { 3, 5, -23, 874 },
			["Praísed|raden"] = { 3, 5, -14, 1018 },
			["Sponsorz|raden"] = { 1, 7, 15, 915 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 1023 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 1020 },
			["Dojareborn|pagle"] = { 4, 3, 20, 1015 },
			["Dunkyb|raden"] = { 4, 3, 18, 1021 },
			["Ginastel|raden"] = { 4, 3, 22, 1012 },
			["Heriberto|pagle"] = { 1, 6, -18, 154 },
			["Møønzx|galakras"] = { 7, 0, 28, 48 },
			["Crepes|pagle"] = { 6, 0, 16, 223 },
			["Hairyarms|raden"] = { 2, 4, 4, 1216 },
			["Juul|raden"] = { 2, 4, -10, 712 },
			["Maddlexie|pagle"] = { 2, 4, -22, 711 },
			["Moneymay|pagle"] = { 3, 3, 17, 667 },
			["Jonwald|pagle"] = { 4, 1, 65, 998 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 999 },
			["Retmainxd|raden"] = { 2, 3, 2, 1120 },
			["Scorched|pagle"] = { 3, 2, 5, 792 },
			["Electabuzz|raden"] = { 2, 2, 24, 1222 },
			["Genuinely|raden"] = { 0, 4, -10, 1171 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 252 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 1046 },
			["Fctry|raden"] = { 2, 1, 31, 920 },
			["Huntardspec|raden"] = { 1, 2, 10, 1175 },
			["Kushgodx|raden"] = { 0, 3, -29, 1098 },
			["Monuei|raden"] = { 3, 0, 18, 1007 },
			["Nyloras|pagle"] = { 3, 0, 17, 1178 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 169 },
			["Untaked|pagle"] = { 1, 2, -13, 154 },
			["Virtuoso|raden"] = { 3, 0, 34, 1046 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 977 },
			["Crapes|raden"] = { 0, 2, -6, 128 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 1146 },
			["Destrotensei|pagle"] = { 0, 2, -2, 244 },
			["Drlovee|benediction"] = { 2, 0, 37, 1072 },
			["Jhazito|pagle"] = { 0, 2, -4, 1080 },
			["Notgaylordz|raden"] = { 0, 2, 0, 1149 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 1079 },
			["Putinga|pagle"] = { 0, 2, -13, 1098 },
			["Rëyy|raden"] = { 2, 0, 24, 1126 },
			["Saintjuan|raden"] = { 1, 1, 10, 1144 },
			["Tamerak|raden"] = { 1, 1, 11, 1137 },
			["Thebucket|raden"] = { 0, 2, 0, 1165 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 514 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 1135 },
			["Drgewch|raden"] = { 1, 0, 14, 994 },
			["Kelaía|pagle"] = { 0, 1, -5, 154 },
			["Pablosanchez|raden"] = { 0, 1, -12, 1082 },
			["Qtx|raden"] = { 1, 0, 14, 994 },
		},
	},
}

