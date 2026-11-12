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
	built = 1794509998,
	builtText = "2026-11-12 02:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Heriberto|pagle"] = { 0, 1, -2, 43 },
			["Untaked|pagle"] = { 0, 1, -3, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 96 },
			["Seorigori|pagle"] = { 4, 5, -38, 90 },
			["Goofygoofer|raden"] = { 5, 3, 41, 74 },
			["Xatyka|pagle"] = { 5, 3, 9, 84 },
			["Heriberto|pagle"] = { 0, 1, -2, 43 },
			["Untaked|pagle"] = { 0, 1, -3, 43 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 96 },
			["Seorigori|pagle"] = { 4, 5, -38, 90 },
			["Goofygoofer|raden"] = { 5, 3, 41, 74 },
			["Xatyka|pagle"] = { 5, 3, 9, 84 },
			["Heriberto|pagle"] = { 0, 1, -2, 43 },
			["Untaked|pagle"] = { 0, 1, -3, 43 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Pablosanchez|raden"] = { 4, 5, 2, 96 },
			["Seorigori|pagle"] = { 4, 5, -38, 90 },
			["Goofygoofer|raden"] = { 5, 3, 41, 74 },
			["Xatyka|pagle"] = { 5, 3, 9, 84 },
			["Møønzx|galakras"] = { 5, 2, 1, 529 },
			["Apechamp|raden"] = { 3, 0, 54, 714 },
			["Chorizero|immerseus"] = { 1, 2, -4, 583 },
			["Euspy|raden"] = { 3, 0, 144, 402 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 403 },
			["Spreadpres|pagle"] = { 1, 2, -13, 707 },
			["Rinni|lei-shen"] = { 2, 0, 23, 633 },
			["Rísk|lei-shen"] = { 2, 0, 6, 608 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 514 },
			["Undeadgød|immerseus"] = { 2, 0, 21, 624 },
			["Heriberto|pagle"] = { 0, 1, -2, 43 },
			["Livingsteak|galakras"] = { 1, 0, 21, 583 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 500 },
			["Untaked|pagle"] = { 0, 1, -3, 43 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 952 },
			["Virtuoso|raden"] = { 16, 7, 97, 943 },
			["Horniaf|pagle"] = { 9, 13, 15, 943 },
			["Palodan|arugal-au"] = { 9, 12, -69, 895 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 740 },
			["Møønzx|galakras"] = { 12, 8, 46, 529 },
			["Undeadgød|immerseus"] = { 12, 7, 103, 624 },
			["Jhazito|pagle"] = { 3, 14, -27, 907 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 893 },
			["Killstrike|immerseus"] = { 7, 9, -37, 947 },
			["Dankorbs|pagle"] = { 6, 9, -25, 916 },
			["Iightz|raden"] = { 8, 6, -4, 985 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 920 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 763 },
			["Brutality|galakras"] = { 6, 7, -50, 1085 },
			["Champmage|raden"] = { 12, 1, 237, 836 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 943 },
			["Critwo|raden"] = { 6, 6, -3, 763 },
			["Rëyy|raden"] = { 8, 4, 42, 796 },
			["Yglol|raden"] = { 6, 6, 0, 802 },
			["Cavallier|pagle"] = { 6, 5, 41, 1188 },
			["Eci|raden"] = { 7, 4, 27, 923 },
			["Rockyx|pagle"] = { 9, 2, 109, 872 },
			["Hueland|raden"] = { 6, 4, 42, 1181 },
			["Pablosanchez|raden"] = { 4, 6, -12, 96 },
			["Spreadpres|pagle"] = { 5, 5, 28, 707 },
			["Balota|raden"] = { 5, 4, 29, 943 },
			["Çlix|pagle"] = { 5, 4, -11, 945 },
			["Killshot|immerseus"] = { 2, 7, -63, 896 },
			["Putinga|pagle"] = { 5, 4, 36, 961 },
			["Seorigori|pagle"] = { 4, 5, -38, 90 },
			["Tastetheshot|raden"] = { 5, 4, -3, 763 },
			["Apechamp|raden"] = { 6, 2, 110, 714 },
			["Goofygoofer|raden"] = { 5, 3, 41, 74 },
			["Slumplord|raden"] = { 3, 5, -38, 825 },
			["Xatyka|pagle"] = { 5, 3, 9, 84 },
			["Blinnker|pagle"] = { 4, 3, -22, 912 },
			["Heriberto|pagle"] = { 4, 3, 38, 43 },
			["Jimcramer|raden"] = { 5, 2, 12, 763 },
			["Kartika|raden"] = { 4, 3, 19, 882 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 926 },
			["Mistyxo|raden"] = { 3, 4, -12, 897 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 403 },
			["Washedexglad|raden"] = { 4, 3, 18, 898 },
			["Garnarin|galakras"] = { 4, 2, 39, 1079 },
			["Lukesmash|raden"] = { 3, 3, 21, 895 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 909 },
			["Donceno|nazgrim"] = { 1, 4, -12, 763 },
			["Dunkyb|raden"] = { 5, 0, 27, 1168 },
			["Flayzr|raden"] = { 1, 4, 17, 763 },
			["Jonwald|pagle"] = { 3, 2, 44, 851 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 851 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 1091 },
			["Polutropos|galakras"] = { 3, 2, 27, 877 },
			["Yuriyumi|raden"] = { 5, 0, 16, 1168 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 943 },
			["Rísk|lei-shen"] = { 3, 1, 6, 608 },
			["Untaked|pagle"] = { 2, 2, 25, 43 },
			["Cardlock|galakras"] = { 0, 3, 0, 724 },
			["Charleez|nazgrim"] = { 1, 2, -3, 926 },
			["Chorizero|immerseus"] = { 1, 2, -4, 583 },
			["Euspy|raden"] = { 3, 0, 144, 402 },
			["Forbes|pagle"] = { 0, 3, -33, 895 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 826 },
			["Sponsor|raden"] = { 3, 0, 35, 836 },
			["Vulture|raden"] = { 2, 1, 12, 1081 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 992 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 972 },
			["Kelaía|pagle"] = { 0, 2, -18, 943 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 921 },
			["Rinni|lei-shen"] = { 2, 0, 23, 633 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 514 },
			["Thebucket|raden"] = { 2, 0, 42, 760 },
			["Thespot|pagle"] = { 2, 0, 29, 993 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1123 },
			["Bonitaa|pagle"] = { 0, 1, 0, 742 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1123 },
			["Darkdeamon|pagle"] = { 0, 1, -1, 1408 },
			["Freezenow|raden"] = { 0, 1, 0, 1231 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 831 },
			["Lìt|pagle"] = { 1, 0, 4, 849 },
			["Livingsteak|galakras"] = { 1, 0, 21, 583 },
			["Maddlexie|pagle"] = { 0, 1, -7, 731 },
			["Nf|raden"] = { 0, 1, 0, 751 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 500 },
			["Rockyy|pagle"] = { 1, 0, 21, 857 },
			["Skésh|raden"] = { 0, 1, -17, 731 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 862 },
		},
	},
}

