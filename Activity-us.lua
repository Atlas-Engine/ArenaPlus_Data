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
	built = 1794535193,
	builtText = "2026-11-12 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jhazito|pagle"] = { 5, 5, 41, 22 },
			["Kelaía|pagle"] = { 5, 3, 2, 21 },
			["Idrainyou|pagle"] = { 2, 4, -15, 39 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jhazito|pagle"] = { 5, 7, 29, 22 },
			["Kelaía|pagle"] = { 5, 3, 2, 21 },
			["Zmoke|lei-shen"] = { 6, 1, 57, 67 },
			["Idrainyou|pagle"] = { 2, 4, -15, 39 },
			["Persa|nazgrim"] = { 5, 0, 23, 82 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 103 },
			["Euspy|raden"] = { 1, 0, 22, 103 },
			["Garnaby|pagle"] = { 1, 0, 13, 113 },
			["Heriberto|pagle"] = { 0, 1, -10, 103 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 165 },
			["Untaked|pagle"] = { 0, 1, -10, 103 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jhazito|pagle"] = { 5, 7, 29, 22 },
			["Kelaía|pagle"] = { 5, 3, 2, 21 },
			["Zmoke|lei-shen"] = { 6, 1, 57, 67 },
			["Idrainyou|pagle"] = { 2, 4, -15, 39 },
			["Persa|nazgrim"] = { 5, 0, 23, 82 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 103 },
			["Putinga|pagle"] = { 0, 2, -1, 222 },
			["Boofed|raden"] = { 1, 0, 1, 221 },
			["Euspy|raden"] = { 1, 0, 22, 103 },
			["Garnaby|pagle"] = { 1, 0, 13, 113 },
			["Heriberto|pagle"] = { 0, 1, -10, 103 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 165 },
			["Untaked|pagle"] = { 0, 1, -10, 103 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jhazito|pagle"] = { 5, 7, 29, 22 },
			["Pablosanchez|raden"] = { 4, 5, 2, 516 },
			["Seorigori|pagle"] = { 4, 5, -38, 509 },
			["Goofygoofer|raden"] = { 5, 3, 41, 494 },
			["Kelaía|pagle"] = { 5, 3, 2, 21 },
			["Xatyka|pagle"] = { 5, 3, 9, 504 },
			["Zmoke|lei-shen"] = { 6, 1, 57, 67 },
			["Idrainyou|pagle"] = { 2, 4, -15, 39 },
			["Persa|nazgrim"] = { 5, 0, 23, 82 },
			["Heriberto|pagle"] = { 0, 2, -12, 103 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 103 },
			["Putinga|pagle"] = { 0, 2, -1, 222 },
			["Untaked|pagle"] = { 0, 2, -13, 103 },
			["Boofed|raden"] = { 1, 0, 1, 221 },
			["Euspy|raden"] = { 1, 0, 22, 103 },
			["Garnaby|pagle"] = { 1, 0, 13, 113 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jhazito|pagle"] = { 6, 15, 10, 22 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 1160 },
			["Äñtòñçhígûrh|raden"] = { 13, 6, 79, 1371 },
			["Møønzx|galakras"] = { 10, 7, 44, 948 },
			["Dankorbs|pagle"] = { 6, 9, -25, 1336 },
			["Iightz|raden"] = { 8, 6, -4, 1405 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 1183 },
			["Champmage|raden"] = { 12, 1, 237, 1256 },
			["Horniaf|pagle"] = { 5, 8, 8, 1363 },
			["Critwo|raden"] = { 6, 6, -3, 1183 },
			["Rëyy|raden"] = { 8, 4, 42, 1215 },
			["Yglol|raden"] = { 6, 6, 0, 1222 },
			["Eci|raden"] = { 7, 4, 27, 1343 },
			["Pglapuñalada|raden"] = { 1, 10, -24, 103 },
			["Rockyx|pagle"] = { 9, 2, 109, 1292 },
			["Sonyaßlade|raden"] = { 7, 4, 11, 1340 },
			["Kelaía|pagle"] = { 5, 5, -16, 21 },
			["Pablosanchez|raden"] = { 4, 6, -12, 516 },
			["Palodan|arugal-au"] = { 4, 6, -40, 1315 },
			["Balota|raden"] = { 5, 4, 29, 1363 },
			["Çlix|pagle"] = { 5, 4, -11, 1365 },
			["Killshot|immerseus"] = { 2, 7, -63, 1315 },
			["Seorigori|pagle"] = { 4, 5, -38, 509 },
			["Spreadpres|pagle"] = { 5, 4, 32, 1127 },
			["Tastetheshot|raden"] = { 5, 4, -3, 1183 },
			["Undeadgød|immerseus"] = { 7, 2, 62, 165 },
			["Virtuoso|raden"] = { 5, 4, 5, 1363 },
			["Apechamp|raden"] = { 6, 2, 110, 1134 },
			["Goofygoofer|raden"] = { 5, 3, 41, 494 },
			["Slumplord|raden"] = { 3, 5, -38, 1245 },
			["Xatyka|pagle"] = { 5, 3, 9, 504 },
			["Blinnker|pagle"] = { 4, 3, -22, 1332 },
			["Daburghcuz|pagle"] = { 5, 2, 18, 1363 },
			["Jimcramer|raden"] = { 5, 2, 12, 1183 },
			["Kartika|raden"] = { 4, 3, 19, 1302 },
			["Killstrike|immerseus"] = { 3, 4, -21, 1367 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 1345 },
			["Mistyxo|raden"] = { 3, 4, -12, 1317 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 823 },
			["Washedexglad|raden"] = { 4, 3, 18, 1318 },
			["Zmoke|lei-shen"] = { 6, 1, 57, 67 },
			["Idrainyou|pagle"] = { 2, 4, -15, 39 },
			["Lukesmash|raden"] = { 3, 3, 21, 1315 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 1329 },
			["Donceno|nazgrim"] = { 1, 4, -12, 1183 },
			["Flayzr|raden"] = { 1, 4, 17, 1183 },
			["Jonwald|pagle"] = { 3, 2, 44, 1271 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 1271 },
			["Persa|nazgrim"] = { 5, 0, 23, 82 },
			["Polutropos|galakras"] = { 3, 2, 27, 1297 },
			["Putinga|pagle"] = { 1, 4, 7, 222 },
			["Untaked|pagle"] = { 2, 3, 15, 103 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1363 },
			["Euspy|raden"] = { 4, 0, 166, 103 },
			["Cardlock|galakras"] = { 0, 3, 0, 1144 },
			["Charleez|nazgrim"] = { 1, 2, -3, 1346 },
			["Chorizero|immerseus"] = { 1, 2, -4, 1003 },
			["Forbes|pagle"] = { 0, 3, -33, 1315 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 1245 },
			["Sponsor|raden"] = { 3, 0, 35, 1256 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1412 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1392 },
			["Heriberto|pagle"] = { 0, 2, -12, 103 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 1341 },
			["Rinni|lei-shen"] = { 2, 0, 23, 1053 },
			["Rísk|lei-shen"] = { 2, 0, 6, 1028 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 934 },
			["Thebucket|raden"] = { 2, 0, 42, 1180 },
			["Thespot|pagle"] = { 2, 0, 29, 1413 },
			["Bonitaa|pagle"] = { 0, 1, 0, 1162 },
			["Boofed|raden"] = { 1, 0, 1, 221 },
			["Garnaby|pagle"] = { 1, 0, 13, 113 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 1251 },
			["Lìt|pagle"] = { 1, 0, 4, 1268 },
			["Livingsteak|galakras"] = { 1, 0, 21, 1003 },
			["Maddlexie|pagle"] = { 0, 1, -7, 1151 },
			["Nf|raden"] = { 0, 1, 0, 1171 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 920 },
			["Rockyy|pagle"] = { 1, 0, 21, 1277 },
			["Skésh|raden"] = { 0, 1, -17, 1151 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 1282 },
		},
	},
}

