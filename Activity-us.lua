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
	built = 1795125591,
	builtText = "2026-11-19 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kelaía|pagle"] = { 0, 1, -4, 34 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 34 },
			["Speakington|raden"] = { 1, 0, 4, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 2, 0, 8, 108 },
			["Kelaía|pagle"] = { 0, 1, -4, 34 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 34 },
			["Speakington|raden"] = { 1, 0, 4, 34 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 1, 4, -11, 214 },
			["Crepes|pagle"] = { 4, 0, 8, 283 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 312 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 229 },
			["Speakington|raden"] = { 3, 0, 8, 34 },
			["Untaked|pagle"] = { 1, 2, -13, 214 },
			["Crapes|raden"] = { 0, 2, -6, 188 },
			["Destrotensei|pagle"] = { 0, 2, -2, 304 },
			["Kelaía|pagle"] = { 0, 2, -9, 34 },
			["Møønzx|galakras"] = { 2, 0, 8, 108 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 34 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 7, 0, 28, 108 },
			["Crepes|pagle"] = { 6, 0, 16, 283 },
			["Heriberto|pagle"] = { 1, 4, -11, 214 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 312 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 229 },
			["Speakington|raden"] = { 3, 0, 8, 34 },
			["Untaked|pagle"] = { 1, 2, -13, 214 },
			["Crapes|raden"] = { 0, 2, -6, 188 },
			["Destrotensei|pagle"] = { 0, 2, -2, 304 },
			["Kelaía|pagle"] = { 0, 2, -9, 34 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 574 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 34 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 25, 20, -22, 781 },
			["Stealurgirl|raden"] = { 25, 20, -22, 757 },
			["Kelmight|pagle"] = { 15, 10, 60, 980 },
			["Poixon|pagle"] = { 16, 9, 58, 980 },
			["Rektalrager|galakras"] = { 8, 13, -43, 1082 },
			["Spreadpres|pagle"] = { 11, 10, -37, 1053 },
			["Stàn|immerseus"] = { 11, 10, 11, 1053 },
			["Kamikylol|pagle"] = { 8, 12, -1, 851 },
			["Speakington|raden"] = { 15, 4, 126, 34 },
			["Statticdr|arugal-au"] = { 6, 13, -14, 901 },
			["Atreyuz|galakras"] = { 9, 6, 9, 987 },
			["Chiokeme|arugal-au"] = { 11, 4, 78, 752 },
			["Dankenbrew|lei-shen"] = { 9, 6, -6, 1036 },
			["Glinna|raden"] = { 8, 7, -24, 1093 },
			["Nazmirr|pagle"] = { 10, 5, 118, 1099 },
			["Stattic|arugal-au"] = { 11, 4, 70, 752 },
			["Horniaf|pagle"] = { 6, 7, 6, 1124 },
			["Trapfiendx|raden"] = { 7, 6, 86, 878 },
			["Nilio|raden"] = { 6, 6, -7, 795 },
			["Zurrago|pagle"] = { 7, 5, -2, 934 },
			["Imperïa|pagle"] = { 7, 4, 17, 1207 },
			["Smokinweedle|raden"] = { 7, 4, 35, 1058 },
			["Vseraphim|immerseus"] = { 7, 4, 17, 1216 },
			["Youcutebb|raden"] = { 7, 4, 155, 1066 },
			["Prettigood|raden"] = { 3, 7, -34, 1026 },
			["Tastetheshot|raden"] = { 3, 7, -4, 1028 },
			["Apechamp|raden"] = { 1, 7, -51, 976 },
			["Atiko|galakras"] = { 4, 4, 13, 934 },
			["Chotter|pagle"] = { 0, 8, -9, 960 },
			["Dojadruid|raden"] = { 5, 3, 34, 1112 },
			["Laraçroft|raden"] = { 5, 3, 29, 1112 },
			["Polutropos|galakras"] = { 3, 5, -23, 934 },
			["Praísed|raden"] = { 3, 5, -14, 1078 },
			["Sponsorz|raden"] = { 1, 7, 15, 975 },
			["Tharealnerds|pagle"] = { 2, 6, -48, 1083 },
			["Tylenolmaxed|raden"] = { 3, 5, -14, 1080 },
			["Dojareborn|pagle"] = { 4, 3, 20, 1075 },
			["Dunkyb|raden"] = { 4, 3, 18, 1081 },
			["Ginastel|raden"] = { 4, 3, 22, 1072 },
			["Heriberto|pagle"] = { 1, 6, -18, 214 },
			["Møønzx|galakras"] = { 7, 0, 28, 108 },
			["Crepes|pagle"] = { 6, 0, 16, 283 },
			["Hairyarms|raden"] = { 2, 4, 4, 1276 },
			["Juul|raden"] = { 2, 4, -10, 772 },
			["Maddlexie|pagle"] = { 2, 4, -22, 771 },
			["Moneymay|pagle"] = { 3, 3, 17, 727 },
			["Jonwald|pagle"] = { 4, 1, 65, 1058 },
			["Mcjeezyy|pagle"] = { 4, 1, 65, 1059 },
			["Retmainxd|raden"] = { 2, 3, 2, 1180 },
			["Scorched|pagle"] = { 3, 2, 5, 852 },
			["Electabuzz|raden"] = { 2, 2, 24, 1282 },
			["Genuinely|raden"] = { 0, 4, -10, 1231 },
			["Oddenuff|immerseus"] = { 4, 0, 17, 312 },
			["Äñtòñçhígûrh|raden"] = { 3, 0, 34, 1106 },
			["Fctry|raden"] = { 2, 1, 31, 980 },
			["Huntardspec|raden"] = { 1, 2, 10, 1235 },
			["Kushgodx|raden"] = { 0, 3, -29, 1158 },
			["Monuei|raden"] = { 3, 0, 18, 1067 },
			["Nyloras|pagle"] = { 3, 0, 17, 1238 },
			["Skeletonzx|galakras"] = { 3, 0, 13, 229 },
			["Untaked|pagle"] = { 1, 2, -13, 214 },
			["Virtuoso|raden"] = { 3, 0, 34, 1106 },
			["Xntrixxz|arugal-au"] = { 3, 0, 5, 1037 },
			["Crapes|raden"] = { 0, 2, -6, 188 },
			["Dankendwarf|pagle"] = { 0, 2, -2, 1206 },
			["Destrotensei|pagle"] = { 0, 2, -2, 304 },
			["Drlovee|benediction"] = { 2, 0, 37, 1132 },
			["Jhazito|pagle"] = { 0, 2, -4, 1140 },
			["Kelaía|pagle"] = { 0, 2, -9, 34 },
			["Notgaylordz|raden"] = { 0, 2, 0, 1209 },
			["Pglapuñalada|raden"] = { 0, 2, -4, 1139 },
			["Putinga|pagle"] = { 0, 2, -13, 1158 },
			["Rëyy|raden"] = { 2, 0, 24, 1186 },
			["Saintjuan|raden"] = { 1, 1, 10, 1204 },
			["Tamerak|raden"] = { 1, 1, 11, 1197 },
			["Thebucket|raden"] = { 0, 2, 0, 1225 },
			["Zertraproze|immerseus"] = { 0, 2, -12, 574 },
			["Dankenstein|lei-shen"] = { 0, 1, -8, 1195 },
			["Drgewch|raden"] = { 1, 0, 14, 1054 },
			["Pablosanchez|raden"] = { 0, 1, -12, 1142 },
			["Poizøønzx|galakras"] = { 1, 0, 2, 34 },
			["Qtx|raden"] = { 1, 0, 14, 1054 },
		},
	},
}

