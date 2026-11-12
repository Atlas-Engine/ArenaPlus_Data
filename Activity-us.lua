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
	built = 1794513597,
	builtText = "2026-11-12 03:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 156 },
			["Seorigori|pagle"] = { 4, 5, -38, 150 },
			["Goofygoofer|raden"] = { 5, 3, 41, 134 },
			["Xatyka|pagle"] = { 5, 3, 9, 144 },
			["Heriberto|pagle"] = { 0, 1, -2, 103 },
			["Untaked|pagle"] = { 0, 1, -3, 103 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 156 },
			["Seorigori|pagle"] = { 4, 5, -38, 150 },
			["Goofygoofer|raden"] = { 5, 3, 41, 134 },
			["Xatyka|pagle"] = { 5, 3, 9, 144 },
			["Heriberto|pagle"] = { 0, 1, -2, 103 },
			["Untaked|pagle"] = { 0, 1, -3, 103 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 156 },
			["Seorigori|pagle"] = { 4, 5, -38, 150 },
			["Goofygoofer|raden"] = { 5, 3, 41, 134 },
			["Xatyka|pagle"] = { 5, 3, 9, 144 },
			["Møønzx|galakras"] = { 5, 2, 1, 589 },
			["Chorizero|immerseus"] = { 1, 2, -4, 643 },
			["Euspy|raden"] = { 3, 0, 144, 462 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 463 },
			["Rinni|lei-shen"] = { 2, 0, 23, 693 },
			["Rísk|lei-shen"] = { 2, 0, 6, 668 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 574 },
			["Undeadgød|immerseus"] = { 2, 0, 21, 684 },
			["Heriberto|pagle"] = { 0, 1, -2, 103 },
			["Livingsteak|galakras"] = { 1, 0, 21, 643 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 560 },
			["Untaked|pagle"] = { 0, 1, -3, 103 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 1012 },
			["Virtuoso|raden"] = { 16, 7, 97, 1003 },
			["Horniaf|pagle"] = { 9, 13, 15, 1003 },
			["Palodan|arugal-au"] = { 9, 12, -69, 955 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 800 },
			["Møønzx|galakras"] = { 12, 8, 46, 589 },
			["Undeadgød|immerseus"] = { 12, 7, 103, 684 },
			["Jhazito|pagle"] = { 3, 14, -27, 967 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 953 },
			["Killstrike|immerseus"] = { 7, 9, -37, 1007 },
			["Dankorbs|pagle"] = { 6, 9, -25, 976 },
			["Iightz|raden"] = { 8, 6, -4, 1045 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 980 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 823 },
			["Brutality|galakras"] = { 6, 7, -50, 1145 },
			["Champmage|raden"] = { 12, 1, 237, 896 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 1003 },
			["Critwo|raden"] = { 6, 6, -3, 823 },
			["Rëyy|raden"] = { 8, 4, 42, 856 },
			["Yglol|raden"] = { 6, 6, 0, 862 },
			["Cavallier|pagle"] = { 6, 5, 41, 1248 },
			["Eci|raden"] = { 7, 4, 27, 983 },
			["Rockyx|pagle"] = { 9, 2, 109, 932 },
			["Hueland|raden"] = { 6, 4, 42, 1241 },
			["Pablosanchez|raden"] = { 4, 6, -12, 156 },
			["Spreadpres|pagle"] = { 5, 5, 28, 767 },
			["Balota|raden"] = { 5, 4, 29, 1003 },
			["Çlix|pagle"] = { 5, 4, -11, 1005 },
			["Killshot|immerseus"] = { 2, 7, -63, 956 },
			["Putinga|pagle"] = { 5, 4, 36, 1021 },
			["Seorigori|pagle"] = { 4, 5, -38, 150 },
			["Tastetheshot|raden"] = { 5, 4, -3, 823 },
			["Apechamp|raden"] = { 6, 2, 110, 774 },
			["Goofygoofer|raden"] = { 5, 3, 41, 134 },
			["Slumplord|raden"] = { 3, 5, -38, 885 },
			["Xatyka|pagle"] = { 5, 3, 9, 144 },
			["Blinnker|pagle"] = { 4, 3, -22, 972 },
			["Heriberto|pagle"] = { 4, 3, 38, 103 },
			["Jimcramer|raden"] = { 5, 2, 12, 823 },
			["Kartika|raden"] = { 4, 3, 19, 942 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 986 },
			["Mistyxo|raden"] = { 3, 4, -12, 957 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 463 },
			["Washedexglad|raden"] = { 4, 3, 18, 958 },
			["Garnarin|galakras"] = { 4, 2, 39, 1139 },
			["Lukesmash|raden"] = { 3, 3, 21, 955 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 969 },
			["Donceno|nazgrim"] = { 1, 4, -12, 823 },
			["Dunkyb|raden"] = { 5, 0, 27, 1228 },
			["Flayzr|raden"] = { 1, 4, 17, 823 },
			["Jonwald|pagle"] = { 3, 2, 44, 911 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 911 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 1151 },
			["Polutropos|galakras"] = { 3, 2, 27, 937 },
			["Yuriyumi|raden"] = { 5, 0, 16, 1228 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1003 },
			["Rísk|lei-shen"] = { 3, 1, 6, 668 },
			["Untaked|pagle"] = { 2, 2, 25, 103 },
			["Cardlock|galakras"] = { 0, 3, 0, 784 },
			["Charleez|nazgrim"] = { 1, 2, -3, 986 },
			["Chorizero|immerseus"] = { 1, 2, -4, 643 },
			["Euspy|raden"] = { 3, 0, 144, 462 },
			["Forbes|pagle"] = { 0, 3, -33, 955 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 886 },
			["Sponsor|raden"] = { 3, 0, 35, 896 },
			["Vulture|raden"] = { 2, 1, 12, 1141 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1052 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1032 },
			["Kelaía|pagle"] = { 0, 2, -18, 1003 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 981 },
			["Rinni|lei-shen"] = { 2, 0, 23, 693 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 574 },
			["Thebucket|raden"] = { 2, 0, 42, 820 },
			["Thespot|pagle"] = { 2, 0, 29, 1053 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1183 },
			["Bonitaa|pagle"] = { 0, 1, 0, 802 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1183 },
			["Freezenow|raden"] = { 0, 1, 0, 1291 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 891 },
			["Lìt|pagle"] = { 1, 0, 4, 909 },
			["Livingsteak|galakras"] = { 1, 0, 21, 643 },
			["Maddlexie|pagle"] = { 0, 1, -7, 791 },
			["Nf|raden"] = { 0, 1, 0, 811 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 560 },
			["Rockyy|pagle"] = { 1, 0, 21, 917 },
			["Skésh|raden"] = { 0, 1, -17, 791 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 922 },
		},
	},
}

