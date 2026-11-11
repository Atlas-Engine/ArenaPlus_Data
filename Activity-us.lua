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
	built = 1794434394,
	builtText = "2026-11-11 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 0, 1, -1, 148 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 1, 1, 8, 148 },
			["Donceno|nazgrim"] = { 1, 0, 8, 285 },
			["Emielaina|pagle"] = { 0, 1, 0, 318 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 6, 4, 20, 519 },
			["Holidayhamii|pagle"] = { 7, 0, 63, 597 },
			["Poizøønzx|galakras"] = { 5, 0, 23, 576 },
			["Psychotik|lei-shen"] = { 4, 0, 16, 673 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 502 },
			["Budamm|pagle"] = { 1, 1, 22, 583 },
			["Cannirog|raden"] = { 1, 1, 7, 399 },
			["Darkdeamon|pagle"] = { 1, 1, 8, 148 },
			["Emielaina|pagle"] = { 1, 1, 21, 318 },
			["Questopresto|nazgrim"] = { 1, 1, 14, 706 },
			["Donceno|nazgrim"] = { 1, 0, 8, 285 },
			["Søapy|raden"] = { 1, 0, 4, 718 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 718 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Spreadpres|pagle"] = { 17, 12, 46, 1031 },
			["Dankorbs|pagle"] = { 8, 14, -74, 1023 },
			["Jhazito|pagle"] = { 4, 18, -28, 1123 },
			["Pglapuñalada|raden"] = { 4, 18, 35, 1137 },
			["Kartika|raden"] = { 10, 8, 19, 937 },
			["Charleez|nazgrim"] = { 8, 9, 27, 1146 },
			["Darkdeamon|pagle"] = { 11, 6, 76, 148 },
			["Lukexl|nazgrim"] = { 8, 9, 22, 1145 },
			["Atiko|galakras"] = { 7, 8, -17, 905 },
			["Fngrplay|galakras"] = { 7, 8, -7, 904 },
			["Fyruss|pagle"] = { 6, 9, 44, 865 },
			["Heriberto|pagle"] = { 10, 5, 120, 1123 },
			["Ivana|galakras"] = { 7, 8, 13, 1024 },
			["Plum|raden"] = { 8, 7, 2, 939 },
			["Møønzx|galakras"] = { 6, 8, 2, 519 },
			["Aronuti|lei-shen"] = { 8, 5, 34, 1146 },
			["Bojackalxx|pagle"] = { 4, 9, -13, 1073 },
			["Gånnicus|raden"] = { 13, 0, 24, 830 },
			["Gkazz|lei-shen"] = { 8, 5, 22, 1146 },
			["Speakington|raden"] = { 12, 1, 274, 1029 },
			["Xntrixxz|arugal-au"] = { 13, 0, 33, 832 },
			["Holidayhamii|pagle"] = { 8, 3, 33, 597 },
			["Nebuboom|nazgrim"] = { 3, 8, -39, 971 },
			["Nebupeach|nazgrim"] = { 5, 6, 1, 818 },
			["Poizøønzx|galakras"] = { 10, 1, 35, 576 },
			["Tastetheshot|raden"] = { 4, 7, -52, 943 },
			["Vajra|raden"] = { 3, 8, -59, 982 },
			["Bluntsntits|pagle"] = { 6, 4, 22, 966 },
			["Nurfthemonk|pagle"] = { 4, 6, -44, 998 },
			["Sponsor|raden"] = { 5, 5, 6, 951 },
			["Uhexperiment|pagle"] = { 6, 4, 14, 965 },
			["Blinnker|pagle"] = { 5, 4, 15, 1031 },
			["Swatemtawkin|raden"] = { 2, 7, -60, 963 },
			["Killstrike|immerseus"] = { 2, 6, -45, 1044 },
			["Washedexglad|raden"] = { 4, 4, -13, 1218 },
			["Budamm|pagle"] = { 1, 6, 22, 583 },
			["Imperïa|pagle"] = { 5, 2, 40, 1164 },
			["Jivara|pagle"] = { 2, 5, -1, 924 },
			["Questopresto|nazgrim"] = { 1, 6, -17, 706 },
			["Rinni|lei-shen"] = { 6, 1, 93, 972 },
			["Vseraphim|immerseus"] = { 5, 2, 40, 1167 },
			["Champmage|raden"] = { 4, 2, 88, 950 },
			["Nvmxxtxx|raden"] = { 5, 1, 23, 943 },
			["Spq|pagle"] = { 0, 6, -53, 763 },
			["Dunkyb|raden"] = { 4, 1, 14, 1080 },
			["Jonwald|pagle"] = { 0, 5, 0, 1071 },
			["Ludere|pagle"] = { 4, 1, 39, 930 },
			["Lukesmash|raden"] = { 3, 2, 15, 1077 },
			["Marcão|pagle"] = { 3, 2, 5, 1373 },
			["Mcjeezyy|pagle"] = { 0, 5, 0, 1073 },
			["Poolzyo|raden"] = { 2, 3, 14, 932 },
			["Porkchopx|nazgrim"] = { 3, 2, 15, 1084 },
			["Skingreen|pagle"] = { 4, 1, 35, 931 },
			["Trevoso|pagle"] = { 3, 2, 5, 1376 },
			["Carnilumen|pagle"] = { 1, 3, -43, 1123 },
			["Champlock|raden"] = { 1, 3, -16, 1038 },
			["Ecafkcufhi|raden"] = { 3, 1, 21, 1123 },
			["Edshearin|pagle"] = { 1, 3, -34, 1236 },
			["Fabermors|pagle"] = { 3, 1, 45, 1123 },
			["Guanyîn|raden"] = { 1, 3, -33, 1172 },
			["Impería|pagle"] = { 4, 0, 49, 1229 },
			["Larissa|nazgrim"] = { 1, 3, 19, 943 },
			["Psychotik|lei-shen"] = { 4, 0, 16, 673 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 502 },
			["Vseraphims|immerseus"] = { 4, 0, 49, 1233 },
			["Anytips|pagle"] = { 0, 3, -33, 933 },
			["Blankisa|raden"] = { 2, 1, 17, 1272 },
			["Bouddha|raden"] = { 2, 1, 20, 1257 },
			["Daburghcuz|pagle"] = { 0, 3, -35, 1045 },
			["Daddypompum|raden"] = { 1, 2, 24, 932 },
			["Decaypox|raden"] = { 0, 3, 0, 1123 },
			["Donceno|nazgrim"] = { 1, 2, -5, 285 },
			["Knucklès|pagle"] = { 1, 2, -25, 1414 },
			["Mòónfirebeam|raden"] = { 1, 2, -14, 726 },
			["Slumplord|raden"] = { 1, 2, -10, 969 },
			["Sparqxx|pagle"] = { 0, 3, 0, 1394 },
			["Tamerak|raden"] = { 1, 2, 21, 1320 },
			["Cannirog|raden"] = { 1, 1, 7, 399 },
			["Eci|raden"] = { 2, 0, 27, 972 },
			["Emielaina|pagle"] = { 1, 1, 21, 318 },
			["Firecano|raden"] = { 2, 0, 10, 1321 },
			["Garnaby|pagle"] = { 0, 2, -31, 1123 },
			["Jamaicarr|raden"] = { 1, 1, 5, 1167 },
			["Jimcramer|raden"] = { 1, 1, -6, 1123 },
			["Killithe|pagle"] = { 0, 2, 0, 1123 },
			["Killou|pagle"] = { 1, 1, 7, 1204 },
			["Sandbunny|pagle"] = { 2, 0, 24, 1020 },
			["Shadowstorm|immerseus"] = { 0, 2, -8, 1123 },
			["Spongebobfan|raden"] = { 1, 1, 13, 939 },
			["Drgewch|raden"] = { 1, 0, 11, 763 },
			["Magdalenia|pagle"] = { 0, 1, -5, 1348 },
			["Monktty|lei-shen"] = { 0, 1, -15, 1203 },
			["Qtx|raden"] = { 1, 0, 11, 808 },
			["Rëyy|raden"] = { 0, 1, -15, 1123 },
			["Søapy|raden"] = { 1, 0, 4, 718 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 718 },
		},
	},
}

