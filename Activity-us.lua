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
	built = 1794502804,
	builtText = "2026-11-12 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Euspy|raden"] = { 3, 0, 144, 282 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 283 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Critwo|raden"] = { 6, 6, -3, 643 },
			["Questopresto|nazgrim"] = { 7, 5, 34, 620 },
			["Rëyy|raden"] = { 8, 4, 42, 676 },
			["Yglol|raden"] = { 6, 6, 0, 682 },
			["Tastetheshot|raden"] = { 5, 4, -3, 643 },
			["Apechamp|raden"] = { 6, 2, 110, 594 },
			["Slumplord|raden"] = { 3, 5, -38, 706 },
			["Spreadpres|pagle"] = { 4, 4, 15, 588 },
			["Jimcramer|raden"] = { 5, 2, 12, 643 },
			["Møønzx|galakras"] = { 5, 2, 1, 409 },
			["Flayzr|raden"] = { 1, 4, 17, 643 },
			["Cardlock|galakras"] = { 0, 3, 0, 604 },
			["Champmage|raden"] = { 3, 0, 54, 716 },
			["Chorizero|immerseus"] = { 1, 2, -4, 463 },
			["Euspy|raden"] = { 3, 0, 144, 282 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 706 },
			["Nebupeach|nazgrim"] = { 0, 3, -22, 283 },
			["Sponsor|raden"] = { 3, 0, 35, 716 },
			["Rinni|lei-shen"] = { 2, 0, 23, 513 },
			["Rísk|lei-shen"] = { 2, 0, 6, 488 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 394 },
			["Thebucket|raden"] = { 2, 0, 42, 640 },
			["Uhexperiment|pagle"] = { 0, 2, -21, 643 },
			["Undeadgød|immerseus"] = { 2, 0, 21, 504 },
			["Bonitaa|pagle"] = { 0, 1, 0, 622 },
			["Donceno|nazgrim"] = { 0, 1, -6, 643 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 711 },
			["Livingsteak|galakras"] = { 1, 0, 21, 463 },
			["Maddlexie|pagle"] = { 0, 1, -7, 611 },
			["Nf|raden"] = { 0, 1, 0, 631 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 380 },
			["Skésh|raden"] = { 0, 1, -17, 612 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Äñtòñçhígûrh|raden"] = { 16, 7, 97, 832 },
			["Virtuoso|raden"] = { 16, 7, 97, 823 },
			["Horniaf|pagle"] = { 9, 13, 15, 823 },
			["Palodan|arugal-au"] = { 9, 12, -69, 775 },
			["Questopresto|nazgrim"] = { 11, 10, 36, 620 },
			["Møønzx|galakras"] = { 12, 8, 46, 409 },
			["Undeadgød|immerseus"] = { 12, 7, 103, 504 },
			["Jhazito|pagle"] = { 3, 14, -27, 787 },
			["Pglapuñalada|raden"] = { 3, 14, -5, 773 },
			["Killstrike|immerseus"] = { 7, 9, -37, 827 },
			["Dankorbs|pagle"] = { 6, 9, -25, 796 },
			["Iightz|raden"] = { 8, 6, -4, 865 },
			["Sonyaßlade|raden"] = { 9, 5, 24, 800 },
			["Uhexperiment|pagle"] = { 6, 8, -37, 643 },
			["Brutality|galakras"] = { 6, 7, -50, 965 },
			["Champmage|raden"] = { 12, 1, 237, 716 },
			["Daburghcuz|pagle"] = { 6, 7, -34, 823 },
			["Critwo|raden"] = { 6, 6, -3, 643 },
			["Rëyy|raden"] = { 8, 4, 42, 676 },
			["Yglol|raden"] = { 6, 6, 0, 682 },
			["Cavallier|pagle"] = { 6, 5, 41, 1068 },
			["Eci|raden"] = { 7, 4, 27, 803 },
			["Rockyx|pagle"] = { 9, 2, 109, 752 },
			["Hueland|raden"] = { 6, 4, 42, 1062 },
			["Spreadpres|pagle"] = { 5, 5, 28, 588 },
			["Balota|raden"] = { 5, 4, 29, 823 },
			["Çlix|pagle"] = { 5, 4, -11, 825 },
			["Killshot|immerseus"] = { 2, 7, -63, 776 },
			["Putinga|pagle"] = { 5, 4, 36, 841 },
			["Tastetheshot|raden"] = { 5, 4, -3, 643 },
			["Apechamp|raden"] = { 6, 2, 110, 594 },
			["Slumplord|raden"] = { 3, 5, -38, 706 },
			["Blinnker|pagle"] = { 4, 3, -22, 792 },
			["Jimcramer|raden"] = { 5, 2, 12, 643 },
			["Kartika|raden"] = { 4, 3, 19, 762 },
			["Lukexl|nazgrim"] = { 3, 4, -3, 806 },
			["Mistyxo|raden"] = { 3, 4, -12, 777 },
			["Nebupeach|nazgrim"] = { 4, 3, 21, 283 },
			["Washedexglad|raden"] = { 4, 3, 18, 778 },
			["Donceno|nazgrim"] = { 2, 4, -4, 643 },
			["Garnarin|galakras"] = { 4, 2, 39, 959 },
			["Heriberto|pagle"] = { 4, 2, 40, 1103 },
			["Lukesmash|raden"] = { 3, 3, 21, 775 },
			["Porkchopx|nazgrim"] = { 3, 3, 21, 789 },
			["Dunkyb|raden"] = { 5, 0, 27, 1048 },
			["Flayzr|raden"] = { 1, 4, 17, 643 },
			["Jonwald|pagle"] = { 3, 2, 44, 731 },
			["Mcjeezyy|pagle"] = { 3, 2, 44, 731 },
			["Ohmsnothing|galakras"] = { 2, 3, 33, 971 },
			["Polutropos|galakras"] = { 3, 2, 27, 757 },
			["Yuriyumi|raden"] = { 5, 0, 16, 1048 },
			["Drewwd|nazgrim"] = { 2, 2, 16, 823 },
			["Rísk|lei-shen"] = { 3, 1, 6, 488 },
			["Cardlock|galakras"] = { 0, 3, 0, 604 },
			["Charleez|nazgrim"] = { 1, 2, -3, 806 },
			["Chorizero|immerseus"] = { 1, 2, -4, 463 },
			["Euspy|raden"] = { 3, 0, 144, 282 },
			["Forbes|pagle"] = { 0, 3, -33, 775 },
			["Nebuboom|nazgrim"] = { 1, 2, -15, 706 },
			["Sponsor|raden"] = { 3, 0, 35, 716 },
			["Untaked|pagle"] = { 2, 1, 28, 833 },
			["Vulture|raden"] = { 2, 1, 12, 961 },
			["Chosenlockk|pagle"] = { 1, 1, 18, 873 },
			["Dirtydiaperz|pagle"] = { 2, 0, 29, 852 },
			["Kelaía|pagle"] = { 0, 2, -18, 823 },
			["Nurfthemonk|pagle"] = { 0, 2, -31, 801 },
			["Rinni|lei-shen"] = { 2, 0, 23, 513 },
			["Skeletonzx|galakras"] = { 1, 1, -7, 394 },
			["Thebucket|raden"] = { 2, 0, 42, 640 },
			["Thespot|pagle"] = { 2, 0, 29, 873 },
			["Bagahbonesx|pagle"] = { 0, 1, -6, 1003 },
			["Bonitaa|pagle"] = { 0, 1, 0, 622 },
			["Clomar|nazgrim"] = { 0, 1, -5, 1003 },
			["Darkdeamon|pagle"] = { 0, 1, -1, 1288 },
			["Freezenow|raden"] = { 0, 1, 0, 1111 },
			["Harleyquinxo|lei-shen"] = { 0, 1, -3, 711 },
			["Lìt|pagle"] = { 1, 0, 4, 729 },
			["Livingsteak|galakras"] = { 1, 0, 21, 463 },
			["Maddlexie|pagle"] = { 0, 1, -7, 611 },
			["Nf|raden"] = { 0, 1, 0, 631 },
			["Pablosanchez|raden"] = { 0, 1, -14, 773 },
			["Poizøønzx|galakras"] = { 1, 0, 3, 380 },
			["Rockyy|pagle"] = { 1, 0, 21, 738 },
			["Skésh|raden"] = { 0, 1, -17, 612 },
			["Wowamazingcc|raden"] = { 1, 0, 15, 742 },
		},
	},
}

