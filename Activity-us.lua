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
	built = 1795201194,
	builtText = "2026-11-20 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 200 },
			["Antartik|lei-shen"] = { 9, 0, 67, 222 },
			["Møønzx|galakras"] = { 2, 5, -47, 211 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 286 },
			["Spala|pagle"] = { 2, 0, 7, 312 },
			["Survivorzx|raden"] = { 1, 0, 3, 212 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 200 },
			["Slumpfoo|raden"] = { 9, 6, 15, 681 },
			["Statticw|arugal-au"] = { 9, 6, 11, 685 },
			["Nilio|raden"] = { 3, 9, -45, 597 },
			["Suxatheals|pagle"] = { 3, 8, -49, 672 },
			["Antartik|lei-shen"] = { 9, 0, 67, 222 },
			["Ezfist|immerseus"] = { 6, 2, 35, 582 },
			["Livekirkly|raden"] = { 3, 5, 12, 597 },
			["Xunamated|raden"] = { 6, 2, 101, 590 },
			["Møønzx|galakras"] = { 2, 5, -47, 211 },
			["Lvl|raden"] = { 6, 0, 46, 672 },
			["Fullcream|galakras"] = { 0, 4, -44, 583 },
			["Bistwo|raden"] = { 3, 0, 24, 672 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 371 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 286 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 672 },
			["Spala|pagle"] = { 2, 0, 7, 312 },
			["Sugarbear|raden"] = { 2, 0, 0, 602 },
			["Survivorzx|raden"] = { 1, 0, 3, 212 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 13, 11, 29, 974 },
			["Stealurgirl|raden"] = { 13, 11, 29, 978 },
			["Dankorbs|pagle"] = { 11, 9, 43, 852 },
			["Ivana|galakras"] = { 11, 9, 39, 865 },
			["Rëyy|raden"] = { 5, 15, -101, 747 },
			["Haolong|raden"] = { 11, 8, 46, 852 },
			["Speakington|raden"] = { 12, 7, 25, 834 },
			["Tharealnerds|pagle"] = { 10, 9, 41, 864 },
			["Saintjuan|raden"] = { 10, 8, 80, 910 },
			["Fctry|raden"] = { 13, 4, 223, 761 },
			["Heidrichs|pagle"] = { 12, 5, 89, 200 },
			["Theweave|raden"] = { 12, 5, 103, 812 },
			["Youcutebb|raden"] = { 12, 5, 237, 810 },
			["Çlix|pagle"] = { 9, 7, 80, 942 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 954 },
			["Edshearin|pagle"] = { 4, 11, -91, 996 },
			["Guanyîn|raden"] = { 4, 11, -100, 995 },
			["Slumpfoo|raden"] = { 9, 6, 15, 681 },
			["Statticw|arugal-au"] = { 9, 6, 11, 685 },
			["Tamerak|raden"] = { 9, 6, 8, 798 },
			["Suxatheals|pagle"] = { 5, 9, -34, 672 },
			["Glinna|raden"] = { 2, 11, -134, 979 },
			["Nazmirr|pagle"] = { 1, 12, -95, 919 },
			["Efekz|immerseus"] = { 5, 7, -2, 801 },
			["Nilio|raden"] = { 3, 9, -45, 597 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 953 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 762 },
			["Bistwo|raden"] = { 10, 1, 59, 672 },
			["Polutropos|galakras"] = { 8, 3, 59, 800 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 825 },
			["Jonwald|pagle"] = { 3, 7, 42, 819 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 821 },
			["Antartik|lei-shen"] = { 9, 0, 67, 222 },
			["Møønzx|galakras"] = { 4, 5, -39, 211 },
			["Xunamated|raden"] = { 6, 3, 101, 590 },
			["Ezfist|immerseus"] = { 6, 2, 35, 582 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1099 },
			["Livekirkly|raden"] = { 3, 5, 12, 597 },
			["Trapfiendx|raden"] = { 3, 5, 48, 854 },
			["Bdx|raden"] = { 3, 4, 7, 839 },
			["Crepes|pagle"] = { 3, 4, -23, 1114 },
			["Larvá|raden"] = { 4, 3, -19, 1076 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1114 },
			["Drlovee|benediction"] = { 4, 2, 50, 1032 },
			["Genuinely|raden"] = { 6, 0, 37, 1063 },
			["Lockiecan|pagle"] = { 1, 5, 18, 790 },
			["Lvl|raden"] = { 6, 0, 46, 672 },
			["Afekz|immerseus"] = { 2, 3, 2, 1022 },
			["Garnarin|galakras"] = { 0, 5, -10, 1054 },
			["Fullcream|galakras"] = { 0, 4, -44, 583 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 878 },
			["Mangocart|pagle"] = { 1, 3, -25, 1114 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 962 },
			["Poizøønzx|galakras"] = { 4, 0, 8, 371 },
			["Boofed|raden"] = { 3, 0, 17, 1155 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1114 },
			["Horniaf|pagle"] = { 1, 2, 1, 894 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 286 },
			["Toest|pagle"] = { 0, 3, -11, 1114 },
			["Blankisa|raden"] = { 0, 2, -10, 795 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 672 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 1239 },
			["Ðmac|immerseus"] = { 0, 2, -8, 771 },
			["Dzyx|pagle"] = { 1, 1, -6, 852 },
			["Electabuzz|raden"] = { 0, 2, -19, 1000 },
			["Heriberto|pagle"] = { 0, 2, -8, 1239 },
			["Hueland|raden"] = { 2, 0, 12, 1212 },
			["Kroun|raden"] = { 0, 2, -17, 997 },
			["Spala|pagle"] = { 2, 0, 7, 312 },
			["Sugarbear|raden"] = { 2, 0, 0, 602 },
			["Averthery|pagle"] = { 0, 1, -2, 794 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1032 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 806 },
			["Kelaía|pagle"] = { 0, 1, -4, 1294 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1095 },
			["Scorchtt|pagle"] = { 0, 1, -8, 887 },
			["Survivorzx|raden"] = { 1, 0, 3, 212 },
		},
	},
}

