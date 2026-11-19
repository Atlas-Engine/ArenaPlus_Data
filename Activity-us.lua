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
	built = 1795129193,
	builtText = "2026-11-19 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 0, 2, -14, 38 },
			["Heriberto|pagle"] = { 0, 2, -8, 39 },
			["Hueland|raden"] = { 2, 0, 12, 11 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 0, 2, -14, 38 },
			["Heriberto|pagle"] = { 0, 2, -8, 39 },
			["Hueland|raden"] = { 2, 0, 12, 11 },
			["Møønzx|galakras"] = { 2, 0, 8, 168 },
			["Kelaía|pagle"] = { 0, 1, -4, 94 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 94 },
			["Speakington|raden"] = { 1, 0, 4, 94 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 1, 6, -19, 39 },
			["Crepes|pagle"] = { 4, 0, 8, 343 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 289 },
			["Speakington|raden"] = { 3, 0, 8, 94 },
			["Crapes|raden"] = { 0, 2, -6, 248 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 38 },
			["Hueland|raden"] = { 2, 0, 12, 11 },
			["Kelaía|pagle"] = { 0, 2, -9, 94 },
			["Møønzx|galakras"] = { 2, 0, 8, 168 },
			["Untaked|pagle"] = { 1, 1, -9, 274 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 94 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 1, 6, -19, 39 },
			["Møønzx|galakras"] = { 7, 0, 28, 168 },
			["Crepes|pagle"] = { 4, 0, 8, 343 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 372 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 289 },
			["Speakington|raden"] = { 3, 0, 8, 94 },
			["Untaked|pagle"] = { 1, 2, -13, 274 },
			["Crapes|raden"] = { 0, 2, -6, 248 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 38 },
			["Destrotensei|pagle"] = { 0, 2, -2, 364 },
			["Hueland|raden"] = { 2, 0, 12, 11 },
			["Kelaía|pagle"] = { 0, 2, -9, 94 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 634 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 94 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 841 },
			["Stealurgirl|raden"] = { 25, 20, -22, 817 },
			["Kelmight|pagle"] = { 15, 10, 60, 1040 },
			["Poixon|pagle"] = { 16, 9, 58, 1040 },
			["Rektalrager|galakras"] = { 8, 13, -43, 1142 },
			["Spreadpres|pagle"] = { 11, 10, -37, 1113 },
			["Stàn|immerseus"] = { 11, 10, 11, 1113 },
			["Kamikylol|pagle"] = { 8, 12, -1, 911 },
			["Speakington|raden"] = { 15, 4, 126, 94 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 961 },
			["Atreyuz|galakras"] = { 9, 6, 9, 1047 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 812 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 1096 },
			["Glinna|raden"] = { 8, 7, -24, 1153 },
			["Nazmirr|pagle"] = { 10, 5, 118, 1159 },
			["Stattic|arugal-au"] = { 11, 4, 70, 812 },
			["Horniaf|pagle"] = { 6, 7, 6, 1184 },
			["Trapfiendx|raden"] = { 7, 6, 86, 938 },
			["Nilio|raden"] = { 6, 6, -7, 855 },
			["Zurrago|pagle"] = { 7, 5, -2, 994 },
			["Imperïa|pagle"] = { 7, 4, 17, 1267 },
			["Smokinweedle|raden"] = { 7, 4, 35, 1118 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 1276 },
			["Youcutebb|raden"] = { 7, 4, 155, 1126 },
			["Prettigood|raden"] = { 3, 7, -34, 1086 },
			["Tastetheshot|raden"] = { 3, 7, -4, 1088 },
			["Heriberto|pagle"] = { 1, 8, -26, 39 },
			["Apechamp|raden"] = { 1, 7, -51, 1036 },
			["Atiko|galakras"] = { 4, 4, 13, 994 },
			["Chotter|pagle"] = { 0, 8, -9, 1020 },
			["Dojadruid|raden"] = { 5, 3, 34, 1172 },
			["Laraçroft|raden"] = { 5, 3, 29, 1172 },
			["Polutropos|galakras"] = { 3, 5, -23, 994 },
			["Praísed|raden"] = { 3, 5, -14, 1138 },
			["Sponsorz|raden"] = { 1, 7, 15, 1035 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 1143 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 1141 },
			["Dojareborn|pagle"] = { 4, 3, 20, 1135 },
			["Dunkyb|raden"] = { 4, 3, 18, 1141 },
			["Ginastel|raden"] = { 4, 3, 22, 1132 },
			["Møønzx|galakras"] = { 7, 0, 28, 168 },
			["Crepes|pagle"] = { 6, 0, 16, 343 },
			["Hairyarms|raden"] = { 2, 4, 4, 1336 },
			["Juul|raden"] = { 2, 4, -10, 832 },
			["Maddlexie|pagle"] = { 2, 4, -22, 831 },
			["Moneymay|pagle"] = { 3, 3, 17, 787 },
			["Jonwald|pagle"] = { 4, 1, 65, 1118 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 1119 },
			["Retmainxd|raden"] = { 2, 3, 2, 1240 },
			["Scorched|pagle"] = { 3, 2, 5, 912 },
			["Electabuzz|raden"] = { 2, 2, 24, 1342 },
			["Genuinely|raden"] = { 0, 4, -10, 1291 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 372 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 1166 },
			["Fctry|raden"] = { 2, 1, 31, 1040 },
			["Huntardspec|raden"] = { 1, 2, 10, 1295 },
			["Kushgodx|raden"] = { 0, 3, -29, 1218 },
			["Monuei|raden"] = { 3, 0, 18, 1127 },
			["Nyloras|pagle"] = { 3, 0, 17, 1298 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 289 },
			["Untaked|pagle"] = { 1, 2, -13, 274 },
			["Virtuoso|raden"] = { 3, 0, 34, 1166 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 1097 },
			["Crapes|raden"] = { 0, 2, -6, 248 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 1266 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 38 },
			["Destrotensei|pagle"] = { 0, 2, -2, 364 },
			["Drlovee|benediction"] = { 2, 0, 37, 1192 },
			["Hueland|raden"] = { 2, 0, 12, 11 },
			["Jhazito|pagle"] = { 0, 2, -4, 1200 },
			["Kelaía|pagle"] = { 0, 2, -9, 94 },
			["Notgaylordz|raden"] = { 0, 2, 0, 1269 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 1199 },
			["Putinga|pagle"] = { 0, 2, -13, 1218 },
			["Rëyy|raden"] = { 2, 0, 24, 1246 },
			["Saintjuan|raden"] = { 1, 1, 10, 1264 },
			["Tamerak|raden"] = { 1, 1, 11, 1257 },
			["Thebucket|raden"] = { 0, 2, 0, 1285 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 634 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 1255 },
			["Drgewch|raden"] = { 1, 0, 14, 1114 },
			["Pablosanchez|raden"] = { 0, 1, -12, 1202 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 94 },
			["Qtx|raden"] = { 1, 0, 14, 1114 },
		},
	},
}

