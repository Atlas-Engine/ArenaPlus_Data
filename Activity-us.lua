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
	built = 1794524395,
	builtText = "2026-11-12 06:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Boofed|raden"] = { 1, 0, 1, 41 },
			["Putinga|pagle"] = { 0, 1, -1, 42 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Putinga|pagle"] = { 0, 2, -1, 42 },
			["Boofed|raden"] = { 1, 0, 1, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 336 },
			["Seorigori|pagle"] = { 4, 5, -38, 329 },
			["Goofygoofer|raden"] = { 5, 3, 41, 314 },
			["Xatyka|pagle"] = { 5, 3, 9, 324 },
			["Putinga|pagle"] = { 0, 2, -1, 42 },
			["Boofed|raden"] = { 1, 0, 1, 41 },
			["Heriberto|pagle"] = { 0, 1, -2, 283 },
			["Untaked|pagle"] = { 0, 1, -3, 283 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 336 },
			["Seorigori|pagle"] = { 4, 5, -38, 329 },
			["Goofygoofer|raden"] = { 5, 3, 41, 314 },
			["Xatyka|pagle"] = { 5, 3, 9, 324 },
			["Euspy|raden"] = { 3, 0, 144, 642 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 643 },
			["Putinga|pagle"] = { 0, 2, -1, 42 },
			["Boofed|raden"] = { 1, 0, 1, 41 },
			["Heriberto|pagle"] = { 0, 1, -2, 283 },
			["Untaked|pagle"] = { 0, 1, -3, 283 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 1191 },
			["Virtuoso|raden"] = { 16, 7, 97, 1183 },
			["Horniaf|pagle"] = { 9, 13, 15, 1183 },
			["Palodan|arugal-au"] = { 9, 12, -69, 1135 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 980 },
			["Møønzx|galakras"] = { 12, 8, 46, 768 },
			["Undeadgød|immerseus"] = { 12, 7, 103, 864 },
			["Jhazito|pagle"] = { 3, 14, -27, 1147 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 1133 },
			["Killstrike|immerseus"] = { 7, 9, -37, 1187 },
			["Dankorbs|pagle"] = { 6, 9, -25, 1156 },
			["Iightz|raden"] = { 8, 6, -4, 1225 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 1160 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 1003 },
			["Brutality|galakras"] = { 6, 7, -50, 1325 },
			["Champmage|raden"] = { 12, 1, 237, 1076 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 1183 },
			["Critwo|raden"] = { 6, 6, -3, 1003 },
			["Rëyy|raden"] = { 8, 4, 42, 1036 },
			["Yglol|raden"] = { 6, 6, 0, 1042 },
			["Cavallier|pagle"] = { 6, 5, 41, 1428 },
			["Eci|raden"] = { 7, 4, 27, 1163 },
			["Rockyx|pagle"] = { 9, 2, 109, 1112 },
			["Hueland|raden"] = { 6, 4, 42, 1421 },
			["Pablosanchez|raden"] = { 4, 6, -12, 336 },
			["Spreadpres|pagle"] = { 5, 5, 28, 947 },
			["Balota|raden"] = { 5, 4, 29, 1183 },
			["Çlix|pagle"] = { 5, 4, -11, 1185 },
			["Killshot|immerseus"] = { 2, 7, -63, 1136 },
			["Seorigori|pagle"] = { 4, 5, -38, 329 },
			["Tastetheshot|raden"] = { 5, 4, -3, 1003 },
			["Apechamp|raden"] = { 6, 2, 110, 954 },
			["Goofygoofer|raden"] = { 5, 3, 41, 314 },
			["Slumplord|raden"] = { 3, 5, -38, 1065 },
			["Xatyka|pagle"] = { 5, 3, 9, 324 },
			["Blinnker|pagle"] = { 4, 3, -22, 1152 },
			["Jimcramer|raden"] = { 5, 2, 12, 1003 },
			["Kartika|raden"] = { 4, 3, 19, 1122 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 1166 },
			["Mistyxo|raden"] = { 3, 4, -12, 1137 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 643 },
			["Washedexglad|raden"] = { 4, 3, 18, 1138 },
			["Garnarin|galakras"] = { 4, 2, 39, 1319 },
			["Lukesmash|raden"] = { 3, 3, 21, 1135 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 1149 },
			["Donceno|nazgrim"] = { 1, 4, -12, 1003 },
			["Dunkyb|raden"] = { 5, 0, 27, 1408 },
			["Flayzr|raden"] = { 1, 4, 17, 1003 },
			["Jonwald|pagle"] = { 3, 2, 44, 1091 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 1091 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 1331 },
			["Polutropos|galakras"] = { 3, 2, 27, 1117 },
			["Putinga|pagle"] = { 1, 4, 7, 42 },
			["Yuriyumi|raden"] = { 5, 0, 16, 1408 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1183 },
			["Rísk|lei-shen"] = { 3, 1, 6, 848 },
			["Untaked|pagle"] = { 2, 2, 25, 283 },
			["Cardlock|galakras"] = { 0, 3, 0, 964 },
			["Charleez|nazgrim"] = { 1, 2, -3, 1166 },
			["Chorizero|immerseus"] = { 1, 2, -4, 823 },
			["Euspy|raden"] = { 3, 0, 144, 642 },
			["Forbes|pagle"] = { 0, 3, -33, 1135 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 1065 },
			["Sponsor|raden"] = { 3, 0, 35, 1076 },
			["Vulture|raden"] = { 2, 1, 12, 1321 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1232 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1212 },
			["Kelaía|pagle"] = { 0, 2, -18, 1183 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 1161 },
			["Rinni|lei-shen"] = { 2, 0, 23, 873 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 754 },
			["Thebucket|raden"] = { 2, 0, 42, 1000 },
			["Thespot|pagle"] = { 2, 0, 29, 1233 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1363 },
			["Bonitaa|pagle"] = { 0, 1, 0, 982 },
			["Boofed|raden"] = { 1, 0, 1, 41 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1363 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 1071 },
			["Heriberto|pagle"] = { 0, 1, -2, 283 },
			["Lìt|pagle"] = { 1, 0, 4, 1088 },
			["Livingsteak|galakras"] = { 1, 0, 21, 823 },
			["Maddlexie|pagle"] = { 0, 1, -7, 971 },
			["Nf|raden"] = { 0, 1, 0, 991 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 740 },
			["Rockyy|pagle"] = { 1, 0, 21, 1097 },
			["Skésh|raden"] = { 0, 1, -17, 971 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 1102 },
		},
	},
}

