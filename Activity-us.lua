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
	built = 1795208399,
	builtText = "2026-11-20 04:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Edshearin|pagle"] = { 0, 2, -6, 96 },
			["Euspy|raden"] = { 2, 0, 48, 79 },
			["Guanyîn|raden"] = { 0, 2, -6, 108 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 10, 4, 77, 320 },
			["Antartik|lei-shen"] = { 9, 0, 67, 342 },
			["Møønzx|galakras"] = { 0, 4, -42, 331 },
			["Edshearin|pagle"] = { 0, 2, -6, 96 },
			["Euspy|raden"] = { 2, 0, 48, 79 },
			["Guanyîn|raden"] = { 0, 2, -6, 108 },
			["Survivorzx|raden"] = { 1, 0, 3, 332 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 320 },
			["Antartik|lei-shen"] = { 9, 0, 67, 342 },
			["Ezfist|immerseus"] = { 6, 2, 35, 703 },
			["Livekirkly|raden"] = { 3, 5, 12, 718 },
			["Nilio|raden"] = { 3, 5, -31, 717 },
			["Xunamated|raden"] = { 6, 2, 101, 710 },
			["Møønzx|galakras"] = { 2, 5, -47, 331 },
			["Fullcream|galakras"] = { 0, 4, -44, 703 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 491 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 406 },
			["Edshearin|pagle"] = { 0, 2, -6, 96 },
			["Euspy|raden"] = { 2, 0, 48, 79 },
			["Guanyîn|raden"] = { 0, 2, -6, 108 },
			["Spala|pagle"] = { 2, 0, 7, 432 },
			["Survivorzx|raden"] = { 1, 0, 3, 332 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 13, 11, 29, 1094 },
			["Stealurgirl|raden"] = { 13, 11, 29, 1098 },
			["Dankorbs|pagle"] = { 11, 9, 43, 972 },
			["Ivana|galakras"] = { 11, 9, 39, 985 },
			["Rëyy|raden"] = { 5, 15, -101, 867 },
			["Haolong|raden"] = { 11, 8, 46, 972 },
			["Speakington|raden"] = { 12, 7, 25, 954 },
			["Tharealnerds|pagle"] = { 10, 9, 41, 984 },
			["Saintjuan|raden"] = { 10, 8, 80, 1030 },
			["Edshearin|pagle"] = { 4, 13, -97, 96 },
			["Fctry|raden"] = { 13, 4, 223, 881 },
			["Guanyîn|raden"] = { 4, 13, -106, 108 },
			["Heidrichs|pagle"] = { 12, 5, 89, 320 },
			["Theweave|raden"] = { 12, 5, 103, 932 },
			["Youcutebb|raden"] = { 12, 5, 237, 930 },
			["Çlix|pagle"] = { 9, 7, 80, 1062 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 1074 },
			["Slumpfoo|raden"] = { 9, 6, 15, 801 },
			["Statticw|arugal-au"] = { 9, 6, 11, 806 },
			["Tamerak|raden"] = { 9, 6, 8, 918 },
			["Suxatheals|pagle"] = { 5, 9, -34, 792 },
			["Glinna|raden"] = { 2, 11, -134, 1099 },
			["Nazmirr|pagle"] = { 1, 12, -95, 1039 },
			["Efekz|immerseus"] = { 5, 7, -2, 921 },
			["Nilio|raden"] = { 3, 9, -45, 717 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 1073 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 882 },
			["Bistwo|raden"] = { 10, 1, 59, 792 },
			["Polutropos|galakras"] = { 8, 3, 59, 921 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 945 },
			["Jonwald|pagle"] = { 3, 7, 42, 939 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 941 },
			["Antartik|lei-shen"] = { 9, 0, 67, 342 },
			["Xunamated|raden"] = { 6, 3, 101, 710 },
			["Ezfist|immerseus"] = { 6, 2, 35, 703 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1219 },
			["Livekirkly|raden"] = { 3, 5, 12, 718 },
			["Trapfiendx|raden"] = { 3, 5, 48, 974 },
			["Bdx|raden"] = { 3, 4, 7, 959 },
			["Crepes|pagle"] = { 3, 4, -23, 1234 },
			["Larvá|raden"] = { 4, 3, -19, 1196 },
			["Møønzx|galakras"] = { 2, 5, -47, 331 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1234 },
			["Drlovee|benediction"] = { 4, 2, 50, 1152 },
			["Genuinely|raden"] = { 6, 0, 37, 1183 },
			["Lockiecan|pagle"] = { 1, 5, 18, 910 },
			["Lvl|raden"] = { 6, 0, 46, 792 },
			["Afekz|immerseus"] = { 2, 3, 2, 1142 },
			["Garnarin|galakras"] = { 0, 5, -10, 1174 },
			["Fullcream|galakras"] = { 0, 4, -44, 703 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 998 },
			["Mangocart|pagle"] = { 1, 3, -25, 1234 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 1082 },
			["Poizøønzx|galakras"] = { 4, 0, 8, 491 },
			["Boofed|raden"] = { 3, 0, 17, 1275 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1234 },
			["Horniaf|pagle"] = { 1, 2, 1, 1014 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 406 },
			["Toest|pagle"] = { 0, 3, -11, 1234 },
			["Blankisa|raden"] = { 0, 2, -10, 915 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 792 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 1359 },
			["Ðmac|immerseus"] = { 0, 2, -8, 891 },
			["Dzyx|pagle"] = { 1, 1, -6, 972 },
			["Electabuzz|raden"] = { 0, 2, -19, 1120 },
			["Euspy|raden"] = { 2, 0, 48, 79 },
			["Heriberto|pagle"] = { 0, 2, -8, 1359 },
			["Hueland|raden"] = { 2, 0, 12, 1332 },
			["Kroun|raden"] = { 0, 2, -17, 1117 },
			["Spala|pagle"] = { 2, 0, 7, 432 },
			["Sugarbear|raden"] = { 2, 0, 0, 722 },
			["Averthery|pagle"] = { 0, 1, -2, 914 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1152 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 926 },
			["Kelaía|pagle"] = { 0, 1, -4, 1414 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1215 },
			["Scorchtt|pagle"] = { 0, 1, -8, 1007 },
			["Survivorzx|raden"] = { 1, 0, 3, 332 },
		},
	},
}

