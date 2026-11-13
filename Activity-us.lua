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
	built = 1794527994,
	builtText = "2026-11-12 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Undeadgød|immerseus"] = { 1, 0, 15, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Putinga|pagle"] = { 0, 2, -1, 102 },
			["Boofed|raden"] = { 1, 0, 1, 101 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Putinga|pagle"] = { 0, 2, -1, 102 },
			["Boofed|raden"] = { 1, 0, 1, 101 },
			["Heriberto|pagle"] = { 0, 1, -2, 343 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 45 },
			["Untaked|pagle"] = { 0, 1, -3, 343 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 396 },
			["Seorigori|pagle"] = { 4, 5, -38, 389 },
			["Goofygoofer|raden"] = { 5, 3, 41, 374 },
			["Xatyka|pagle"] = { 5, 3, 9, 384 },
			["Euspy|raden"] = { 3, 0, 144, 702 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 703 },
			["Putinga|pagle"] = { 0, 2, -1, 102 },
			["Boofed|raden"] = { 1, 0, 1, 101 },
			["Heriberto|pagle"] = { 0, 1, -2, 343 },
			["Undeadgød|immerseus"] = { 1, 0, 15, 45 },
			["Untaked|pagle"] = { 0, 1, -3, 343 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 1251 },
			["Virtuoso|raden"] = { 16, 7, 97, 1243 },
			["Horniaf|pagle"] = { 9, 13, 15, 1243 },
			["Palodan|arugal-au"] = { 9, 12, -69, 1195 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 1040 },
			["Møønzx|galakras"] = { 12, 8, 46, 828 },
			["Undeadgød|immerseus"] = { 13, 7, 118, 45 },
			["Jhazito|pagle"] = { 3, 14, -27, 1207 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 1193 },
			["Killstrike|immerseus"] = { 7, 9, -37, 1247 },
			["Dankorbs|pagle"] = { 6, 9, -25, 1216 },
			["Iightz|raden"] = { 8, 6, -4, 1285 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 1220 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 1063 },
			["Brutality|galakras"] = { 6, 7, -50, 1385 },
			["Champmage|raden"] = { 12, 1, 237, 1136 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 1243 },
			["Critwo|raden"] = { 6, 6, -3, 1063 },
			["Rëyy|raden"] = { 8, 4, 42, 1096 },
			["Yglol|raden"] = { 6, 6, 0, 1102 },
			["Eci|raden"] = { 7, 4, 27, 1223 },
			["Rockyx|pagle"] = { 9, 2, 109, 1172 },
			["Pablosanchez|raden"] = { 4, 6, -12, 396 },
			["Spreadpres|pagle"] = { 5, 5, 28, 1007 },
			["Balota|raden"] = { 5, 4, 29, 1243 },
			["Çlix|pagle"] = { 5, 4, -11, 1245 },
			["Killshot|immerseus"] = { 2, 7, -63, 1196 },
			["Seorigori|pagle"] = { 4, 5, -38, 389 },
			["Tastetheshot|raden"] = { 5, 4, -3, 1063 },
			["Apechamp|raden"] = { 6, 2, 110, 1014 },
			["Goofygoofer|raden"] = { 5, 3, 41, 374 },
			["Slumplord|raden"] = { 3, 5, -38, 1125 },
			["Xatyka|pagle"] = { 5, 3, 9, 384 },
			["Blinnker|pagle"] = { 4, 3, -22, 1212 },
			["Jimcramer|raden"] = { 5, 2, 12, 1063 },
			["Kartika|raden"] = { 4, 3, 19, 1182 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 1225 },
			["Mistyxo|raden"] = { 3, 4, -12, 1197 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 703 },
			["Washedexglad|raden"] = { 4, 3, 18, 1198 },
			["Garnarin|galakras"] = { 4, 2, 39, 1379 },
			["Lukesmash|raden"] = { 3, 3, 21, 1195 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 1209 },
			["Donceno|nazgrim"] = { 1, 4, -12, 1063 },
			["Flayzr|raden"] = { 1, 4, 17, 1063 },
			["Jonwald|pagle"] = { 3, 2, 44, 1151 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 1151 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 1391 },
			["Polutropos|galakras"] = { 3, 2, 27, 1177 },
			["Putinga|pagle"] = { 1, 4, 7, 102 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1243 },
			["Rísk|lei-shen"] = { 3, 1, 6, 908 },
			["Untaked|pagle"] = { 2, 2, 25, 343 },
			["Cardlock|galakras"] = { 0, 3, 0, 1024 },
			["Charleez|nazgrim"] = { 1, 2, -3, 1226 },
			["Chorizero|immerseus"] = { 1, 2, -4, 883 },
			["Euspy|raden"] = { 3, 0, 144, 702 },
			["Forbes|pagle"] = { 0, 3, -33, 1195 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 1125 },
			["Sponsor|raden"] = { 3, 0, 35, 1136 },
			["Vulture|raden"] = { 2, 1, 12, 1380 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1292 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1272 },
			["Kelaía|pagle"] = { 0, 2, -18, 1243 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 1221 },
			["Rinni|lei-shen"] = { 2, 0, 23, 933 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 814 },
			["Thebucket|raden"] = { 2, 0, 42, 1060 },
			["Thespot|pagle"] = { 2, 0, 29, 1293 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1423 },
			["Bonitaa|pagle"] = { 0, 1, 0, 1042 },
			["Boofed|raden"] = { 1, 0, 1, 101 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1423 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 1131 },
			["Heriberto|pagle"] = { 0, 1, -2, 343 },
			["Lìt|pagle"] = { 1, 0, 4, 1148 },
			["Livingsteak|galakras"] = { 1, 0, 21, 883 },
			["Maddlexie|pagle"] = { 0, 1, -7, 1031 },
			["Nf|raden"] = { 0, 1, 0, 1051 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 800 },
			["Rockyy|pagle"] = { 1, 0, 21, 1157 },
			["Skésh|raden"] = { 0, 1, -17, 1031 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 1162 },
		},
	},
}

