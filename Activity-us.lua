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
	built = 1794430795,
	builtText = "2026-11-11 04:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 0, 1, -1, 88 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cannirog|raden"] = { 1, 1, 7, 339 },
			["Darkdeamon|pagle"] = { 1, 1, 8, 88 },
			["Emielaina|pagle"] = { 1, 1, 21, 258 },
			["Donceno|nazgrim"] = { 1, 0, 8, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 6, 4, 20, 459 },
			["Budamm|pagle"] = { 1, 6, 22, 523 },
			["Holidayhamii|pagle"] = { 7, 0, 63, 537 },
			["Questopresto|nazgrim"] = { 1, 6, -17, 646 },
			["Poizøønzx|galakras"] = { 5, 0, 23, 516 },
			["Spq|pagle"] = { 0, 5, -38, 703 },
			["Psychotik|lei-shen"] = { 4, 0, 16, 613 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 442 },
			["Mòónfirebeam|raden"] = { 1, 2, -14, 666 },
			["Cannirog|raden"] = { 1, 1, 7, 339 },
			["Darkdeamon|pagle"] = { 1, 1, 8, 88 },
			["Emielaina|pagle"] = { 1, 1, 21, 258 },
			["Donceno|nazgrim"] = { 1, 0, 8, 225 },
			["Drgewch|raden"] = { 1, 0, 11, 703 },
			["Søapy|raden"] = { 1, 0, 4, 658 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 658 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Spreadpres|pagle"] = { 17, 12, 46, 971 },
			["Dankorbs|pagle"] = { 8, 14, -74, 963 },
			["Jhazito|pagle"] = { 4, 18, -28, 1063 },
			["Pglapuñalada|raden"] = { 4, 18, 35, 1077 },
			["Møønzx|galakras"] = { 6, 13, -35, 459 },
			["Heriberto|pagle"] = { 12, 6, 128, 1063 },
			["Kartika|raden"] = { 10, 8, 19, 878 },
			["Charleez|nazgrim"] = { 8, 9, 27, 1086 },
			["Darkdeamon|pagle"] = { 11, 6, 76, 88 },
			["Lukexl|nazgrim"] = { 8, 9, 22, 1085 },
			["Atiko|galakras"] = { 7, 8, -17, 845 },
			["Fngrplay|galakras"] = { 7, 8, -7, 844 },
			["Fyruss|pagle"] = { 6, 9, 44, 805 },
			["Ivana|galakras"] = { 7, 8, 13, 964 },
			["Plum|raden"] = { 8, 7, 2, 879 },
			["Aronuti|lei-shen"] = { 8, 5, 34, 1086 },
			["Bojackalxx|pagle"] = { 4, 9, -13, 1013 },
			["Gånnicus|raden"] = { 13, 0, 24, 770 },
			["Gkazz|lei-shen"] = { 8, 5, 22, 1086 },
			["Speakington|raden"] = { 12, 1, 274, 969 },
			["Xntrixxz|arugal-au"] = { 13, 0, 33, 772 },
			["Holidayhamii|pagle"] = { 8, 3, 33, 537 },
			["Nebuboom|nazgrim"] = { 3, 8, -39, 912 },
			["Nebupeach|nazgrim"] = { 5, 6, 1, 758 },
			["Poizøønzx|galakras"] = { 10, 1, 35, 516 },
			["Tastetheshot|raden"] = { 4, 7, -52, 883 },
			["Vajra|raden"] = { 3, 8, -59, 922 },
			["Bluntsntits|pagle"] = { 6, 4, 22, 906 },
			["Nurfthemonk|pagle"] = { 4, 6, -44, 938 },
			["Sponsor|raden"] = { 5, 5, 6, 891 },
			["Uhexperiment|pagle"] = { 6, 4, 14, 905 },
			["Blinnker|pagle"] = { 5, 4, 15, 971 },
			["Swatemtawkin|raden"] = { 2, 7, -60, 903 },
			["Killstrike|immerseus"] = { 2, 6, -45, 984 },
			["Washedexglad|raden"] = { 4, 4, -13, 1158 },
			["Budamm|pagle"] = { 1, 6, 22, 523 },
			["Imperïa|pagle"] = { 5, 2, 40, 1104 },
			["Jivara|pagle"] = { 2, 5, -1, 864 },
			["Questopresto|nazgrim"] = { 1, 6, -17, 646 },
			["Rinni|lei-shen"] = { 6, 1, 93, 912 },
			["Vseraphim|immerseus"] = { 5, 2, 40, 1107 },
			["Champmage|raden"] = { 4, 2, 88, 890 },
			["Nvmxxtxx|raden"] = { 5, 1, 23, 883 },
			["Spq|pagle"] = { 0, 6, -53, 703 },
			["Bouddha|raden"] = { 4, 1, 35, 1197 },
			["Dunkyb|raden"] = { 4, 1, 14, 1020 },
			["Jonwald|pagle"] = { 0, 5, 0, 1011 },
			["Ludere|pagle"] = { 4, 1, 39, 870 },
			["Lukesmash|raden"] = { 3, 2, 15, 1017 },
			["Marcão|pagle"] = { 3, 2, 5, 1313 },
			["Mcjeezyy|pagle"] = { 0, 5, 0, 1013 },
			["Poolzyo|raden"] = { 2, 3, 14, 872 },
			["Porkchopx|nazgrim"] = { 3, 2, 15, 1024 },
			["Skingreen|pagle"] = { 4, 1, 35, 871 },
			["Trevoso|pagle"] = { 3, 2, 5, 1316 },
			["Carnilumen|pagle"] = { 1, 3, -43, 1063 },
			["Champlock|raden"] = { 1, 3, -16, 978 },
			["Ecafkcufhi|raden"] = { 3, 1, 21, 1063 },
			["Edshearin|pagle"] = { 1, 3, -34, 1176 },
			["Fabermors|pagle"] = { 3, 1, 45, 1063 },
			["Guanyîn|raden"] = { 1, 3, -33, 1112 },
			["Impería|pagle"] = { 4, 0, 49, 1169 },
			["Larissa|nazgrim"] = { 1, 3, 19, 883 },
			["Psychotik|lei-shen"] = { 4, 0, 16, 613 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 442 },
			["Vseraphims|immerseus"] = { 4, 0, 49, 1173 },
			["Anytips|pagle"] = { 0, 3, -33, 873 },
			["Blankisa|raden"] = { 2, 1, 17, 1212 },
			["Daburghcuz|pagle"] = { 0, 3, -35, 985 },
			["Daddypompum|raden"] = { 1, 2, 24, 872 },
			["Decaypox|raden"] = { 0, 3, 0, 1063 },
			["Donceno|nazgrim"] = { 1, 2, -5, 225 },
			["Knucklès|pagle"] = { 1, 2, -25, 1354 },
			["Mòónfirebeam|raden"] = { 1, 2, -14, 666 },
			["Slumplord|raden"] = { 1, 2, -10, 909 },
			["Sparqxx|pagle"] = { 0, 3, 0, 1334 },
			["Tamerak|raden"] = { 1, 2, 21, 1260 },
			["Cannirog|raden"] = { 1, 1, 7, 339 },
			["Eci|raden"] = { 2, 0, 27, 913 },
			["Emielaina|pagle"] = { 1, 1, 21, 258 },
			["Firecano|raden"] = { 2, 0, 10, 1261 },
			["Garnaby|pagle"] = { 0, 2, -31, 1063 },
			["Jamaicarr|raden"] = { 1, 1, 5, 1107 },
			["Jimcramer|raden"] = { 1, 1, -6, 1063 },
			["Killithe|pagle"] = { 0, 2, 0, 1063 },
			["Killou|pagle"] = { 1, 1, 7, 1144 },
			["Sandbunny|pagle"] = { 2, 0, 24, 960 },
			["Shadowstorm|immerseus"] = { 0, 2, -8, 1063 },
			["Spongebobfan|raden"] = { 1, 1, 13, 879 },
			["Drgewch|raden"] = { 1, 0, 11, 703 },
			["Magdalenia|pagle"] = { 0, 1, -5, 1288 },
			["Monktty|lei-shen"] = { 0, 1, -15, 1143 },
			["Qtx|raden"] = { 1, 0, 11, 748 },
			["Rëyy|raden"] = { 0, 1, -15, 1063 },
			["Smokerweedch|pagle"] = { 1, 0, 23, 1381 },
			["Søapy|raden"] = { 1, 0, 4, 658 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 658 },
		},
	},
}

