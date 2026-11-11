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
	built = 1794427201,
	builtText = "2026-11-11 03:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 0, 1, -1, 28 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Darkdeamon|pagle"] = { 0, 1, -1, 28 },
			["Donceno|nazgrim"] = { 1, 0, 8, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cannirog|raden"] = { 1, 1, 7, 279 },
			["Darkdeamon|pagle"] = { 1, 1, 8, 28 },
			["Emielaina|pagle"] = { 1, 1, 21, 199 },
			["Donceno|nazgrim"] = { 1, 0, 8, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 6, 4, 20, 399 },
			["Gånnicus|raden"] = { 8, 0, 16, 710 },
			["Xntrixxz|arugal-au"] = { 8, 0, 22, 713 },
			["Budamm|pagle"] = { 1, 6, 22, 463 },
			["Holidayhamii|pagle"] = { 7, 0, 63, 477 },
			["Questopresto|nazgrim"] = { 1, 6, -17, 586 },
			["Nebupeach|nazgrim"] = { 0, 5, -39, 698 },
			["Poizøønzx|galakras"] = { 5, 0, 23, 457 },
			["Spq|pagle"] = { 0, 5, -38, 643 },
			["Psychotik|lei-shen"] = { 4, 0, 16, 553 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 382 },
			["Mòónfirebeam|raden"] = { 1, 2, -14, 606 },
			["Cannirog|raden"] = { 1, 1, 7, 279 },
			["Darkdeamon|pagle"] = { 1, 1, 8, 28 },
			["Emielaina|pagle"] = { 1, 1, 21, 199 },
			["Donceno|nazgrim"] = { 1, 0, 8, 165 },
			["Drgewch|raden"] = { 1, 0, 11, 643 },
			["Qtx|raden"] = { 1, 0, 11, 688 },
			["Søapy|raden"] = { 1, 0, 4, 598 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 598 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Spreadpres|pagle"] = { 17, 12, 46, 911 },
			["Dankorbs|pagle"] = { 8, 14, -74, 903 },
			["Jhazito|pagle"] = { 4, 18, -28, 1003 },
			["Pglapuñalada|raden"] = { 4, 18, 35, 1017 },
			["Møønzx|galakras"] = { 6, 13, -35, 399 },
			["Heriberto|pagle"] = { 12, 6, 128, 1003 },
			["Kartika|raden"] = { 10, 8, 19, 818 },
			["Charleez|nazgrim"] = { 8, 9, 27, 1026 },
			["Darkdeamon|pagle"] = { 11, 6, 76, 28 },
			["Lukexl|nazgrim"] = { 8, 9, 22, 1025 },
			["Atiko|galakras"] = { 7, 8, -17, 785 },
			["Fngrplay|galakras"] = { 7, 8, -7, 784 },
			["Fyruss|pagle"] = { 6, 9, 44, 745 },
			["Ivana|galakras"] = { 7, 8, 13, 904 },
			["Plum|raden"] = { 8, 7, 2, 819 },
			["Aronuti|lei-shen"] = { 8, 5, 34, 1026 },
			["Bojackalxx|pagle"] = { 4, 9, -13, 953 },
			["Gånnicus|raden"] = { 13, 0, 24, 710 },
			["Gkazz|lei-shen"] = { 8, 5, 22, 1026 },
			["Speakington|raden"] = { 12, 1, 274, 909 },
			["Xntrixxz|arugal-au"] = { 13, 0, 33, 713 },
			["Holidayhamii|pagle"] = { 8, 3, 33, 477 },
			["Nebuboom|nazgrim"] = { 3, 8, -39, 852 },
			["Nebupeach|nazgrim"] = { 5, 6, 1, 698 },
			["Poizøønzx|galakras"] = { 10, 1, 35, 457 },
			["Tastetheshot|raden"] = { 4, 7, -52, 823 },
			["Vajra|raden"] = { 3, 8, -59, 862 },
			["Bluntsntits|pagle"] = { 6, 4, 22, 846 },
			["Nurfthemonk|pagle"] = { 4, 6, -44, 878 },
			["Sponsor|raden"] = { 5, 5, 6, 831 },
			["Uhexperiment|pagle"] = { 6, 4, 14, 845 },
			["Blinnker|pagle"] = { 5, 4, 15, 911 },
			["Swatemtawkin|raden"] = { 2, 7, -60, 843 },
			["Killstrike|immerseus"] = { 2, 6, -45, 925 },
			["Washedexglad|raden"] = { 4, 4, -13, 1098 },
			["Budamm|pagle"] = { 1, 6, 22, 463 },
			["Imperïa|pagle"] = { 5, 2, 40, 1044 },
			["Jivara|pagle"] = { 2, 5, -1, 804 },
			["Psychotik|lei-shen"] = { 7, 0, 32, 553 },
			["Questopresto|nazgrim"] = { 1, 6, -17, 586 },
			["Rinni|lei-shen"] = { 6, 1, 93, 852 },
			["Vseraphim|immerseus"] = { 5, 2, 40, 1047 },
			["Champmage|raden"] = { 4, 2, 88, 830 },
			["Nvmxxtxx|raden"] = { 5, 1, 23, 823 },
			["Spq|pagle"] = { 0, 6, -53, 643 },
			["Bouddha|raden"] = { 4, 1, 35, 1137 },
			["Dunkyb|raden"] = { 4, 1, 14, 961 },
			["Jonwald|pagle"] = { 0, 5, 0, 951 },
			["Ludere|pagle"] = { 4, 1, 39, 810 },
			["Lukesmash|raden"] = { 3, 2, 15, 957 },
			["Marcão|pagle"] = { 3, 2, 5, 1253 },
			["Mcjeezyy|pagle"] = { 0, 5, 0, 953 },
			["Poolzyo|raden"] = { 2, 3, 14, 812 },
			["Porkchopx|nazgrim"] = { 3, 2, 15, 964 },
			["Skingreen|pagle"] = { 4, 1, 35, 811 },
			["Trevoso|pagle"] = { 3, 2, 5, 1256 },
			["Carnilumen|pagle"] = { 1, 3, -43, 1003 },
			["Champlock|raden"] = { 1, 3, -16, 918 },
			["Ecafkcufhi|raden"] = { 3, 1, 21, 1003 },
			["Edshearin|pagle"] = { 1, 3, -34, 1116 },
			["Fabermors|pagle"] = { 3, 1, 45, 1003 },
			["Guanyîn|raden"] = { 1, 3, -33, 1052 },
			["Impería|pagle"] = { 4, 0, 49, 1109 },
			["Larissa|nazgrim"] = { 1, 3, 19, 823 },
			["Skeletonzx|galakras"] = { 4, 0, 19, 382 },
			["Vseraphims|immerseus"] = { 4, 0, 49, 1113 },
			["Anytips|pagle"] = { 0, 3, -33, 813 },
			["Blankisa|raden"] = { 2, 1, 17, 1152 },
			["Daburghcuz|pagle"] = { 0, 3, -35, 925 },
			["Daddypompum|raden"] = { 1, 2, 24, 812 },
			["Decaypox|raden"] = { 0, 3, 0, 1003 },
			["Donceno|nazgrim"] = { 1, 2, -5, 165 },
			["Knucklès|pagle"] = { 1, 2, -25, 1294 },
			["Mòónfirebeam|raden"] = { 1, 2, -14, 606 },
			["Slumplord|raden"] = { 1, 2, -10, 849 },
			["Sparqxx|pagle"] = { 0, 3, 0, 1274 },
			["Tamerak|raden"] = { 1, 2, 21, 1201 },
			["Cannirog|raden"] = { 1, 1, 7, 279 },
			["Eci|raden"] = { 2, 0, 27, 853 },
			["Emielaina|pagle"] = { 1, 1, 21, 199 },
			["Firecano|raden"] = { 2, 0, 10, 1201 },
			["Garnaby|pagle"] = { 0, 2, -31, 1003 },
			["Jamaicarr|raden"] = { 1, 1, 5, 1047 },
			["Jimcramer|raden"] = { 1, 1, -6, 1003 },
			["Killithe|pagle"] = { 0, 2, 0, 1003 },
			["Killou|pagle"] = { 1, 1, 7, 1084 },
			["Sandbunny|pagle"] = { 2, 0, 24, 900 },
			["Shadowstorm|immerseus"] = { 0, 2, -8, 1003 },
			["Spongebobfan|raden"] = { 1, 1, 13, 819 },
			["Drgewch|raden"] = { 1, 0, 11, 643 },
			["Magdalenia|pagle"] = { 0, 1, -5, 1228 },
			["Monktty|lei-shen"] = { 0, 1, -15, 1083 },
			["Qtx|raden"] = { 1, 0, 11, 688 },
			["Rëyy|raden"] = { 0, 1, -15, 1003 },
			["Smokerweedch|pagle"] = { 1, 0, 23, 1321 },
			["Søapy|raden"] = { 1, 0, 4, 598 },
			["Xntrixxs|arugal-au"] = { 1, 0, 5, 598 },
		},
	},
}

