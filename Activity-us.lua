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
	built = 1794520794,
	builtText = "2026-11-12 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Putinga|pagle"] = { 0, 1, 0, 19 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Putinga|pagle"] = { 0, 1, 0, 19 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 276 },
			["Seorigori|pagle"] = { 4, 5, -38, 269 },
			["Goofygoofer|raden"] = { 5, 3, 41, 254 },
			["Xatyka|pagle"] = { 5, 3, 9, 264 },
			["Heriberto|pagle"] = { 0, 1, -2, 223 },
			["Putinga|pagle"] = { 0, 1, 0, 19 },
			["Untaked|pagle"] = { 0, 1, -3, 223 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 276 },
			["Seorigori|pagle"] = { 4, 5, -38, 269 },
			["Goofygoofer|raden"] = { 5, 3, 41, 254 },
			["Xatyka|pagle"] = { 5, 3, 9, 264 },
			["Euspy|raden"] = { 3, 0, 144, 582 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 583 },
			["Heriberto|pagle"] = { 0, 1, -2, 223 },
			["Møønzx|galakras"] = { 1, 0, 4, 708 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 680 },
			["Putinga|pagle"] = { 0, 1, 0, 19 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 694 },
			["Untaked|pagle"] = { 0, 1, -3, 223 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 1131 },
			["Virtuoso|raden"] = { 16, 7, 97, 1123 },
			["Horniaf|pagle"] = { 9, 13, 15, 1123 },
			["Palodan|arugal-au"] = { 9, 12, -69, 1075 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 920 },
			["Møønzx|galakras"] = { 12, 8, 46, 708 },
			["Undeadgød|immerseus"] = { 12, 7, 103, 804 },
			["Jhazito|pagle"] = { 3, 14, -27, 1087 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 1073 },
			["Killstrike|immerseus"] = { 7, 9, -37, 1127 },
			["Dankorbs|pagle"] = { 6, 9, -25, 1096 },
			["Iightz|raden"] = { 8, 6, -4, 1165 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 1100 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 943 },
			["Brutality|galakras"] = { 6, 7, -50, 1265 },
			["Champmage|raden"] = { 12, 1, 237, 1016 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 1123 },
			["Critwo|raden"] = { 6, 6, -3, 943 },
			["Rëyy|raden"] = { 8, 4, 42, 976 },
			["Yglol|raden"] = { 6, 6, 0, 982 },
			["Cavallier|pagle"] = { 6, 5, 41, 1368 },
			["Eci|raden"] = { 7, 4, 27, 1103 },
			["Rockyx|pagle"] = { 9, 2, 109, 1052 },
			["Hueland|raden"] = { 6, 4, 42, 1361 },
			["Pablosanchez|raden"] = { 4, 6, -12, 276 },
			["Putinga|pagle"] = { 5, 5, 36, 19 },
			["Spreadpres|pagle"] = { 5, 5, 28, 887 },
			["Balota|raden"] = { 5, 4, 29, 1123 },
			["Çlix|pagle"] = { 5, 4, -11, 1125 },
			["Killshot|immerseus"] = { 2, 7, -63, 1076 },
			["Seorigori|pagle"] = { 4, 5, -38, 269 },
			["Tastetheshot|raden"] = { 5, 4, -3, 943 },
			["Apechamp|raden"] = { 6, 2, 110, 894 },
			["Goofygoofer|raden"] = { 5, 3, 41, 254 },
			["Slumplord|raden"] = { 3, 5, -38, 1005 },
			["Xatyka|pagle"] = { 5, 3, 9, 264 },
			["Blinnker|pagle"] = { 4, 3, -22, 1092 },
			["Heriberto|pagle"] = { 4, 3, 38, 223 },
			["Jimcramer|raden"] = { 5, 2, 12, 943 },
			["Kartika|raden"] = { 4, 3, 19, 1062 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 1105 },
			["Mistyxo|raden"] = { 3, 4, -12, 1077 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 583 },
			["Washedexglad|raden"] = { 4, 3, 18, 1078 },
			["Garnarin|galakras"] = { 4, 2, 39, 1259 },
			["Lukesmash|raden"] = { 3, 3, 21, 1075 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 1089 },
			["Donceno|nazgrim"] = { 1, 4, -12, 943 },
			["Dunkyb|raden"] = { 5, 0, 27, 1348 },
			["Flayzr|raden"] = { 1, 4, 17, 943 },
			["Jonwald|pagle"] = { 3, 2, 44, 1031 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 1031 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 1271 },
			["Polutropos|galakras"] = { 3, 2, 27, 1057 },
			["Yuriyumi|raden"] = { 5, 0, 16, 1348 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1123 },
			["Rísk|lei-shen"] = { 3, 1, 6, 788 },
			["Untaked|pagle"] = { 2, 2, 25, 223 },
			["Cardlock|galakras"] = { 0, 3, 0, 904 },
			["Charleez|nazgrim"] = { 1, 2, -3, 1106 },
			["Chorizero|immerseus"] = { 1, 2, -4, 763 },
			["Euspy|raden"] = { 3, 0, 144, 582 },
			["Forbes|pagle"] = { 0, 3, -33, 1075 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 1005 },
			["Sponsor|raden"] = { 3, 0, 35, 1016 },
			["Vulture|raden"] = { 2, 1, 12, 1260 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1172 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1152 },
			["Kelaía|pagle"] = { 0, 2, -18, 1123 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 1101 },
			["Rinni|lei-shen"] = { 2, 0, 23, 813 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 694 },
			["Thebucket|raden"] = { 2, 0, 42, 940 },
			["Thespot|pagle"] = { 2, 0, 29, 1173 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1303 },
			["Bonitaa|pagle"] = { 0, 1, 0, 922 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1303 },
			["Freezenow|raden"] = { 0, 1, 0, 1411 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 1011 },
			["Lìt|pagle"] = { 1, 0, 4, 1028 },
			["Livingsteak|galakras"] = { 1, 0, 21, 763 },
			["Maddlexie|pagle"] = { 0, 1, -7, 911 },
			["Nf|raden"] = { 0, 1, 0, 931 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 680 },
			["Rockyy|pagle"] = { 1, 0, 21, 1037 },
			["Skésh|raden"] = { 0, 1, -17, 911 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 1042 },
		},
	},
}

