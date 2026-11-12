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
	built = 1794517191,
	builtText = "2026-11-12 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 0, 1, -2, 163 },
			["Untaked|pagle"] = { 0, 1, -3, 163 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 216 },
			["Seorigori|pagle"] = { 4, 5, -38, 209 },
			["Goofygoofer|raden"] = { 5, 3, 41, 194 },
			["Xatyka|pagle"] = { 5, 3, 9, 204 },
			["Heriberto|pagle"] = { 0, 1, -2, 163 },
			["Untaked|pagle"] = { 0, 1, -3, 163 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 216 },
			["Seorigori|pagle"] = { 4, 5, -38, 209 },
			["Goofygoofer|raden"] = { 5, 3, 41, 194 },
			["Xatyka|pagle"] = { 5, 3, 9, 204 },
			["Chorizero|immerseus"] = { 1, 2, -4, 703 },
			["Euspy|raden"] = { 3, 0, 144, 522 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 523 },
			["Heriberto|pagle"] = { 0, 1, -2, 163 },
			["Livingsteak|galakras"] = { 1, 0, 21, 703 },
			["Møønzx|galakras"] = { 1, 0, 4, 648 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 620 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 634 },
			["Untaked|pagle"] = { 0, 1, -3, 163 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 1071 },
			["Virtuoso|raden"] = { 16, 7, 97, 1063 },
			["Horniaf|pagle"] = { 9, 13, 15, 1063 },
			["Palodan|arugal-au"] = { 9, 12, -69, 1015 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 860 },
			["Møønzx|galakras"] = { 12, 8, 46, 648 },
			["Undeadgød|immerseus"] = { 12, 7, 103, 744 },
			["Jhazito|pagle"] = { 3, 14, -27, 1027 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 1013 },
			["Killstrike|immerseus"] = { 7, 9, -37, 1067 },
			["Dankorbs|pagle"] = { 6, 9, -25, 1036 },
			["Iightz|raden"] = { 8, 6, -4, 1104 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 1040 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 883 },
			["Brutality|galakras"] = { 6, 7, -50, 1205 },
			["Champmage|raden"] = { 12, 1, 237, 956 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 1063 },
			["Critwo|raden"] = { 6, 6, -3, 883 },
			["Rëyy|raden"] = { 8, 4, 42, 915 },
			["Yglol|raden"] = { 6, 6, 0, 922 },
			["Cavallier|pagle"] = { 6, 5, 41, 1308 },
			["Eci|raden"] = { 7, 4, 27, 1043 },
			["Rockyx|pagle"] = { 9, 2, 109, 992 },
			["Hueland|raden"] = { 6, 4, 42, 1301 },
			["Pablosanchez|raden"] = { 4, 6, -12, 216 },
			["Spreadpres|pagle"] = { 5, 5, 28, 827 },
			["Balota|raden"] = { 5, 4, 29, 1063 },
			["Çlix|pagle"] = { 5, 4, -11, 1065 },
			["Killshot|immerseus"] = { 2, 7, -63, 1015 },
			["Putinga|pagle"] = { 5, 4, 36, 1081 },
			["Seorigori|pagle"] = { 4, 5, -38, 209 },
			["Tastetheshot|raden"] = { 5, 4, -3, 883 },
			["Apechamp|raden"] = { 6, 2, 110, 834 },
			["Goofygoofer|raden"] = { 5, 3, 41, 194 },
			["Slumplord|raden"] = { 3, 5, -38, 945 },
			["Xatyka|pagle"] = { 5, 3, 9, 204 },
			["Blinnker|pagle"] = { 4, 3, -22, 1032 },
			["Heriberto|pagle"] = { 4, 3, 38, 163 },
			["Jimcramer|raden"] = { 5, 2, 12, 883 },
			["Kartika|raden"] = { 4, 3, 19, 1001 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 1045 },
			["Mistyxo|raden"] = { 3, 4, -12, 1017 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 523 },
			["Washedexglad|raden"] = { 4, 3, 18, 1018 },
			["Garnarin|galakras"] = { 4, 2, 39, 1199 },
			["Lukesmash|raden"] = { 3, 3, 21, 1015 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 1029 },
			["Donceno|nazgrim"] = { 1, 4, -12, 883 },
			["Dunkyb|raden"] = { 5, 0, 27, 1288 },
			["Flayzr|raden"] = { 1, 4, 17, 883 },
			["Jonwald|pagle"] = { 3, 2, 44, 971 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 971 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 1211 },
			["Polutropos|galakras"] = { 3, 2, 27, 997 },
			["Yuriyumi|raden"] = { 5, 0, 16, 1288 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 1063 },
			["Rísk|lei-shen"] = { 3, 1, 6, 728 },
			["Untaked|pagle"] = { 2, 2, 25, 163 },
			["Cardlock|galakras"] = { 0, 3, 0, 844 },
			["Charleez|nazgrim"] = { 1, 2, -3, 1046 },
			["Chorizero|immerseus"] = { 1, 2, -4, 703 },
			["Euspy|raden"] = { 3, 0, 144, 522 },
			["Forbes|pagle"] = { 0, 3, -33, 1015 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 945 },
			["Sponsor|raden"] = { 3, 0, 35, 956 },
			["Vulture|raden"] = { 2, 1, 12, 1200 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 1112 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 1092 },
			["Kelaía|pagle"] = { 0, 2, -18, 1063 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 1040 },
			["Rinni|lei-shen"] = { 2, 0, 23, 753 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 634 },
			["Thebucket|raden"] = { 2, 0, 42, 880 },
			["Thespot|pagle"] = { 2, 0, 29, 1113 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1243 },
			["Bonitaa|pagle"] = { 0, 1, 0, 862 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1243 },
			["Freezenow|raden"] = { 0, 1, 0, 1351 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 951 },
			["Lìt|pagle"] = { 1, 0, 4, 968 },
			["Livingsteak|galakras"] = { 1, 0, 21, 703 },
			["Maddlexie|pagle"] = { 0, 1, -7, 851 },
			["Nf|raden"] = { 0, 1, 0, 871 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 620 },
			["Rockyy|pagle"] = { 1, 0, 21, 977 },
			["Skésh|raden"] = { 0, 1, -17, 851 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 982 },
		},
	},
}

