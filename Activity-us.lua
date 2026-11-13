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
	built = 1794531593,
	builtText = "2026-11-12 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Zmoke|lei-shen"] = { 6, 1, 57, 7 },
			["Persa|nazgrim"] = { 5, 0, 23, 22 },
			["Jhazito|pagle"] = { 0, 2, -12, 43 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 43 },
			["Euspy|raden"] = { 1, 0, 22, 43 },
			["Garnaby|pagle"] = { 1, 0, 13, 53 },
			["Heriberto|pagle"] = { 0, 1, -10, 43 },
			["Untaked|pagle"] = { 0, 1, -10, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Zmoke|lei-shen"] = { 6, 1, 57, 7 },
			["Persa|nazgrim"] = { 5, 0, 23, 22 },
			["Jhazito|pagle"] = { 0, 2, -12, 43 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 43 },
			["Boofed|raden"] = { 1, 0, 1, 161 },
			["Euspy|raden"] = { 1, 0, 22, 43 },
			["Garnaby|pagle"] = { 1, 0, 13, 53 },
			["Heriberto|pagle"] = { 0, 1, -10, 43 },
			["Putinga|pagle"] = { 0, 1, -1, 162 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 105 },
			["Untaked|pagle"] = { 0, 1, -10, 43 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Zmoke|lei-shen"] = { 6, 1, 57, 7 },
			["Persa|nazgrim"] = { 5, 0, 23, 22 },
			["Jhazito|pagle"] = { 0, 2, -12, 43 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 43 },
			["Putinga|pagle"] = { 0, 2, -1, 162 },
			["Boofed|raden"] = { 1, 0, 1, 161 },
			["Euspy|raden"] = { 1, 0, 22, 43 },
			["Garnaby|pagle"] = { 1, 0, 13, 53 },
			["Heriberto|pagle"] = { 0, 1, -10, 43 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 105 },
			["Untaked|pagle"] = { 0, 1, -10, 43 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 456 },
			["Seorigori|pagle"] = { 4, 5, -38, 449 },
			["Goofygoofer|raden"] = { 5, 3, 41, 434 },
			["Xatyka|pagle"] = { 5, 3, 9, 444 },
			["Zmoke|lei-shen"] = { 6, 1, 57, 7 },
			["Persa|nazgrim"] = { 5, 0, 23, 22 },
			["Heriberto|pagle"] = { 0, 2, -12, 43 },
			["Jhazito|pagle"] = { 0, 2, -12, 43 },
			["Pglapuñalada|raden"] = { 0, 2, -11, 43 },
			["Putinga|pagle"] = { 0, 2, -1, 162 },
			["Untaked|pagle"] = { 0, 2, -13, 43 },
			["Boofed|raden"] = { 1, 0, 1, 161 },
			["Euspy|raden"] = { 1, 0, 22, 43 },
			["Garnaby|pagle"] = { 1, 0, 13, 53 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Questopresto|nazgrim"] = { 11, 10, 36, 1100 },
			["Äñtòñçhígûrh|raden"] = { 13, 6, 79, 1311 },
			["Virtuoso|raden"] = { 13, 6, 79, 1303 },
			["Møønzx|galakras"] = { 10, 7, 44, 888 },
			["Jhazito|pagle"] = { 2, 14, -41, 43 },
			["Palodan|arugal-au"] = { 6, 10, -78, 1255 },
			["Pglapuñalada|raden"] = { 2, 14, -30, 43 },
			["Dankorbs|pagle"] = { 6, 9, -25, 1276 },
			["Iightz|raden"] = { 8, 6, -4, 1345 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 1123 },
			["Champmage|raden"] = { 12, 1, 237, 1196 },
			["Horniaf|pagle"] = { 5, 8, 8, 1303 },
			["Critwo|raden"] = { 6, 6, -3, 1123 },
			["Killstrike|immerseus"] = { 5, 7, -38, 1307 },
			["Rëyy|raden"] = { 8, 4, 42, 1155 },
			["Yglol|raden"] = { 6, 6, 0, 1162 },
			["Eci|raden"] = { 7, 4, 27, 1283 },
			["Rockyx|pagle"] = { 9, 2, 109, 1232 },
			["Sonyaßlade|raden"] = { 7, 4, 11, 1280 },
			["Pablosanchez|raden"] = { 4, 6, -12, 456 },
			["Spreadpres|pagle"] = { 5, 5, 28, 1067 },
			["Balota|raden"] = { 5, 4, 29, 1303 },
			["Çlix|pagle"] = { 5, 4, -11, 1305 },
			["Killshot|immerseus"] = { 2, 7, -63, 1255 },
			["Seorigori|pagle"] = { 4, 5, -38, 449 },
			["Tastetheshot|raden"] = { 5, 4, -3, 1123 },
			["Undeadgød|immerseus"] = { 7, 2, 62, 105 },
			["Apechamp|raden"] = { 6, 2, 110, 1074 },
			["Goofygoofer|raden"] = { 5, 3, 41, 434 },
			["Slumplord|raden"] = { 3, 5, -38, 1185 },
			["Xatyka|pagle"] = { 5, 3, 9, 444 },
			["Blinnker|pagle"] = { 4, 3, -22, 1272 },
			["Daburghcuz|pagle"] = { 5, 2, 18, 1303 },
			["Jimcramer|raden"] = { 5, 2, 12, 1123 },
			["Kartika|raden"] = { 4, 3, 19, 1242 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 1285 },
			["Mistyxo|raden"] = { 3, 4, -12, 1257 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 763 },
			["Washedexglad|raden"] = { 4, 3, 18, 1258 },
			["Zmoke|lei-shen"] = { 6, 1, 57, 7 },
			["Garnarin|galakras"] = { 4, 2, 39, 1439 },
			["Lukesmash|raden"] = { 3, 3, 21, 1255 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 1269 },
			["Donceno|nazgrim"] = { 1, 4, -12, 1123 },
			["Flayzr|raden"] = { 1, 4, 17, 1123 },
			["Jonwald|pagle"] = { 3, 2, 44, 1211 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 1211 },
			["Persa|nazgrim"] = { 5, 0, 23, 22 },
			["Polutropos|galakras"] = { 3, 2, 27, 1237 },
			["Putinga|pagle"] = { 1, 4, 7, 162 },
			["Untaked|pagle"] = { 2, 3, 15, 43 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1303 },
			["Euspy|raden"] = { 4, 0, 166, 43 },
			["Rísk|lei-shen"] = { 3, 1, 6, 968 },
			["Cardlock|galakras"] = { 0, 3, 0, 1084 },
			["Charleez|nazgrim"] = { 1, 2, -3, 1286 },
			["Chorizero|immerseus"] = { 1, 2, -4, 943 },
			["Forbes|pagle"] = { 0, 3, -33, 1255 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 1185 },
			["Sponsor|raden"] = { 3, 0, 35, 1196 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1352 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1332 },
			["Heriberto|pagle"] = { 0, 2, -12, 43 },
			["Kelaía|pagle"] = { 0, 2, -18, 1303 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 1281 },
			["Rinni|lei-shen"] = { 2, 0, 23, 993 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 874 },
			["Thebucket|raden"] = { 2, 0, 42, 1120 },
			["Thespot|pagle"] = { 2, 0, 29, 1353 },
			["Bonitaa|pagle"] = { 0, 1, 0, 1102 },
			["Boofed|raden"] = { 1, 0, 1, 161 },
			["Garnaby|pagle"] = { 1, 0, 13, 53 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 1191 },
			["Lìt|pagle"] = { 1, 0, 4, 1208 },
			["Livingsteak|galakras"] = { 1, 0, 21, 943 },
			["Maddlexie|pagle"] = { 0, 1, -7, 1091 },
			["Nf|raden"] = { 0, 1, 0, 1111 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 860 },
			["Rockyy|pagle"] = { 1, 0, 21, 1217 },
			["Skésh|raden"] = { 0, 1, -17, 1091 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 1222 },
		},
	},
}

