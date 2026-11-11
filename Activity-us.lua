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
	built = 1794437992,
	builtText = "2026-11-11 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 4, 2, 40, 23 },
			["Putinga|pagle"] = { 4, 2, 28, 22 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 4, 2, 40, 23 },
			["Putinga|pagle"] = { 4, 2, 28, 22 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 4, 2, 40, 23 },
			["Putinga|pagle"] = { 4, 2, 28, 22 },
			["Darkdeamon|pagle"] = { 0, 1, -1, 208 },
			["Donceno|nazgrim"] = { 1, 0, 8, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Holidayhamii|pagle"] = { 7, 0, 63, 657 },
			["Heriberto|pagle"] = { 4, 2, 40, 23 },
			["Møønzx|galakras"] = { 6, 0, 52, 579 },
			["Putinga|pagle"] = { 4, 2, 28, 22 },
			["Poizøønzx|galakras"] = { 5, 0, 23, 636 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 562 },
			["Budamm|pagle"] = { 1, 1, 22, 643 },
			["Cannirog|raden"] = { 1, 1, 7, 459 },
			["Darkdeamon|pagle"] = { 1, 1, 8, 208 },
			["Emielaina|pagle"] = { 1, 1, 21, 378 },
			["Donceno|nazgrim"] = { 1, 0, 8, 345 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Spreadpres|pagle"] = { 17, 12, 46, 1091 },
			["Dankorbs|pagle"] = { 8, 14, -74, 1083 },
			["Jhazito|pagle"] = { 4, 18, -28, 1183 },
			["Pglapuñalada|raden"] = { 4, 18, 35, 1196 },
			["Heriberto|pagle"] = { 14, 7, 160, 23 },
			["Kartika|raden"] = { 10, 8, 19, 997 },
			["Charleez|nazgrim"] = { 8, 9, 27, 1206 },
			["Darkdeamon|pagle"] = { 11, 6, 76, 208 },
			["Lukexl|nazgrim"] = { 8, 9, 22, 1205 },
			["Atiko|galakras"] = { 7, 8, -17, 965 },
			["Fngrplay|galakras"] = { 7, 8, -7, 964 },
			["Fyruss|pagle"] = { 6, 9, 44, 925 },
			["Ivana|galakras"] = { 7, 8, 13, 1084 },
			["Plum|raden"] = { 8, 7, 2, 999 },
			["Møønzx|galakras"] = { 6, 8, 2, 579 },
			["Aronuti|lei-shen"] = { 8, 5, 34, 1206 },
			["Bojackalxx|pagle"] = { 4, 9, -13, 1133 },
			["Gånnicus|raden"] = { 13, 0, 24, 890 },
			["Gkazz|lei-shen"] = { 8, 5, 22, 1206 },
			["Speakington|raden"] = { 12, 1, 274, 1089 },
			["Xntrixxz|arugal-au"] = { 13, 0, 33, 892 },
			["Holidayhamii|pagle"] = { 8, 3, 33, 657 },
			["Nebuboom|nazgrim"] = { 3, 8, -39, 1031 },
			["Nebupeach|nazgrim"] = { 5, 6, 1, 878 },
			["Tastetheshot|raden"] = { 4, 7, -52, 1003 },
			["Vajra|raden"] = { 3, 8, -59, 1042 },
			["Bluntsntits|pagle"] = { 6, 4, 22, 1026 },
			["Nurfthemonk|pagle"] = { 4, 6, -44, 1058 },
			["Sponsor|raden"] = { 5, 5, 6, 1011 },
			["Uhexperiment|pagle"] = { 6, 4, 14, 1025 },
			["Blinnker|pagle"] = { 5, 4, 15, 1090 },
			["Swatemtawkin|raden"] = { 2, 7, -60, 1023 },
			["Killstrike|immerseus"] = { 2, 6, -45, 1104 },
			["Washedexglad|raden"] = { 4, 4, -13, 1278 },
			["Budamm|pagle"] = { 1, 6, 22, 643 },
			["Imperïa|pagle"] = { 5, 2, 40, 1224 },
			["Jivara|pagle"] = { 2, 5, -1, 983 },
			["Questopresto|nazgrim"] = { 1, 6, -17, 766 },
			["Rinni|lei-shen"] = { 6, 1, 93, 1032 },
			["Vseraphim|immerseus"] = { 5, 2, 40, 1227 },
			["Champmage|raden"] = { 4, 2, 88, 1010 },
			["Nvmxxtxx|raden"] = { 5, 1, 23, 1003 },
			["Putinga|pagle"] = { 4, 2, 28, 22 },
			["Spq|pagle"] = { 0, 6, -53, 823 },
			["Dunkyb|raden"] = { 4, 1, 14, 1140 },
			["Jonwald|pagle"] = { 0, 5, 0, 1131 },
			["Ludere|pagle"] = { 4, 1, 39, 990 },
			["Lukesmash|raden"] = { 3, 2, 15, 1137 },
			["Marcão|pagle"] = { 3, 2, 5, 1433 },
			["Mcjeezyy|pagle"] = { 0, 5, 0, 1133 },
			["Poizøønzx|galakras"] = { 5, 0, 23, 636 },
			["Poolzyo|raden"] = { 2, 3, 14, 992 },
			["Porkchopx|nazgrim"] = { 3, 2, 15, 1143 },
			["Skingreen|pagle"] = { 4, 1, 35, 991 },
			["Carnilumen|pagle"] = { 1, 3, -43, 1183 },
			["Champlock|raden"] = { 1, 3, -16, 1098 },
			["Ecafkcufhi|raden"] = { 3, 1, 21, 1183 },
			["Edshearin|pagle"] = { 1, 3, -34, 1296 },
			["Fabermors|pagle"] = { 3, 1, 45, 1183 },
			["Guanyîn|raden"] = { 1, 3, -33, 1232 },
			["Impería|pagle"] = { 4, 0, 49, 1289 },
			["Larissa|nazgrim"] = { 1, 3, 19, 1003 },
			["Psychotik|lei-shen"] = { 4, 0, 16, 733 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 562 },
			["Trevoso|pagle"] = { 3, 1, 17, 1436 },
			["Vseraphims|immerseus"] = { 4, 0, 49, 1293 },
			["Anytips|pagle"] = { 0, 3, -33, 993 },
			["Blankisa|raden"] = { 2, 1, 17, 1332 },
			["Bouddha|raden"] = { 2, 1, 20, 1317 },
			["Daburghcuz|pagle"] = { 0, 3, -35, 1105 },
			["Daddypompum|raden"] = { 1, 2, 24, 992 },
			["Decaypox|raden"] = { 0, 3, 0, 1183 },
			["Donceno|nazgrim"] = { 1, 2, -5, 345 },
			["Mòónfirebeam|raden"] = { 1, 2, -14, 786 },
			["Slumplord|raden"] = { 1, 2, -10, 1029 },
			["Tamerak|raden"] = { 1, 2, 21, 1380 },
			["Cannirog|raden"] = { 1, 1, 7, 459 },
			["Eci|raden"] = { 2, 0, 27, 1032 },
			["Emielaina|pagle"] = { 1, 1, 21, 378 },
			["Firecano|raden"] = { 2, 0, 10, 1381 },
			["Garnaby|pagle"] = { 0, 2, -31, 1183 },
			["Jamaicarr|raden"] = { 1, 1, 5, 1227 },
			["Jimcramer|raden"] = { 1, 1, -6, 1183 },
			["Killithe|pagle"] = { 0, 2, 0, 1183 },
			["Killou|pagle"] = { 1, 1, 7, 1264 },
			["Sandbunny|pagle"] = { 2, 0, 24, 1080 },
			["Shadowstorm|immerseus"] = { 0, 2, -8, 1183 },
			["Spongebobfan|raden"] = { 1, 1, 13, 999 },
			["Drgewch|raden"] = { 1, 0, 11, 823 },
			["Magdalenia|pagle"] = { 0, 1, -5, 1408 },
			["Monktty|lei-shen"] = { 0, 1, -15, 1263 },
			["Qtx|raden"] = { 1, 0, 11, 868 },
			["Rëyy|raden"] = { 0, 1, -15, 1183 },
			["Søapy|raden"] = { 1, 0, 4, 778 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 778 },
		},
	},
}

