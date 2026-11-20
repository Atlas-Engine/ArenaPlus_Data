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
	built = 1795204794,
	builtText = "2026-11-20 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Edshearin|pagle"] = { 0, 2, -6, 35 },
			["Euspy|raden"] = { 2, 0, 48, 19 },
			["Guanyîn|raden"] = { 0, 2, -6, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Edshearin|pagle"] = { 0, 2, -6, 35 },
			["Euspy|raden"] = { 2, 0, 48, 19 },
			["Guanyîn|raden"] = { 0, 2, -6, 48 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 10, 4, 77, 260 },
			["Antartik|lei-shen"] = { 9, 0, 67, 282 },
			["Møønzx|galakras"] = { 0, 5, -55, 271 },
			["Edshearin|pagle"] = { 0, 2, -6, 35 },
			["Euspy|raden"] = { 2, 0, 48, 19 },
			["Guanyîn|raden"] = { 0, 2, -6, 48 },
			["Skeletonzx|galakras"] = { 2, 0, 13, 346 },
			["Survivorzx|raden"] = { 1, 0, 3, 272 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 260 },
			["Antartik|lei-shen"] = { 9, 0, 67, 282 },
			["Ezfist|immerseus"] = { 6, 2, 35, 642 },
			["Livekirkly|raden"] = { 3, 5, 12, 657 },
			["Nilio|raden"] = { 3, 5, -31, 657 },
			["Xunamated|raden"] = { 6, 2, 101, 650 },
			["Møønzx|galakras"] = { 2, 5, -47, 271 },
			["Fullcream|galakras"] = { 0, 4, -44, 643 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 431 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 346 },
			["Edshearin|pagle"] = { 0, 2, -6, 35 },
			["Euspy|raden"] = { 2, 0, 48, 19 },
			["Guanyîn|raden"] = { 0, 2, -6, 48 },
			["Spala|pagle"] = { 2, 0, 7, 372 },
			["Sugarbear|raden"] = { 2, 0, 0, 662 },
			["Survivorzx|raden"] = { 1, 0, 3, 272 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 13, 11, 29, 1034 },
			["Stealurgirl|raden"] = { 13, 11, 29, 1038 },
			["Dankorbs|pagle"] = { 11, 9, 43, 912 },
			["Ivana|galakras"] = { 11, 9, 39, 925 },
			["Rëyy|raden"] = { 5, 15, -101, 807 },
			["Haolong|raden"] = { 11, 8, 46, 912 },
			["Speakington|raden"] = { 12, 7, 25, 894 },
			["Tharealnerds|pagle"] = { 10, 9, 41, 924 },
			["Saintjuan|raden"] = { 10, 8, 80, 970 },
			["Edshearin|pagle"] = { 4, 13, -97, 35 },
			["Fctry|raden"] = { 13, 4, 223, 821 },
			["Guanyîn|raden"] = { 4, 13, -106, 48 },
			["Heidrichs|pagle"] = { 12, 5, 89, 260 },
			["Theweave|raden"] = { 12, 5, 103, 872 },
			["Youcutebb|raden"] = { 12, 5, 237, 870 },
			["Çlix|pagle"] = { 9, 7, 80, 1002 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 1014 },
			["Slumpfoo|raden"] = { 9, 6, 15, 741 },
			["Statticw|arugal-au"] = { 9, 6, 11, 745 },
			["Tamerak|raden"] = { 9, 6, 8, 858 },
			["Suxatheals|pagle"] = { 5, 9, -34, 732 },
			["Glinna|raden"] = { 2, 11, -134, 1039 },
			["Nazmirr|pagle"] = { 1, 12, -95, 979 },
			["Efekz|immerseus"] = { 5, 7, -2, 861 },
			["Nilio|raden"] = { 3, 9, -45, 657 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 1013 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 822 },
			["Bistwo|raden"] = { 10, 1, 59, 732 },
			["Polutropos|galakras"] = { 8, 3, 59, 860 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 885 },
			["Jonwald|pagle"] = { 3, 7, 42, 879 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 881 },
			["Antartik|lei-shen"] = { 9, 0, 67, 282 },
			["Møønzx|galakras"] = { 4, 5, -39, 271 },
			["Xunamated|raden"] = { 6, 3, 101, 650 },
			["Ezfist|immerseus"] = { 6, 2, 35, 642 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1159 },
			["Livekirkly|raden"] = { 3, 5, 12, 657 },
			["Trapfiendx|raden"] = { 3, 5, 48, 914 },
			["Bdx|raden"] = { 3, 4, 7, 899 },
			["Crepes|pagle"] = { 3, 4, -23, 1174 },
			["Larvá|raden"] = { 4, 3, -19, 1136 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1174 },
			["Drlovee|benediction"] = { 4, 2, 50, 1092 },
			["Genuinely|raden"] = { 6, 0, 37, 1123 },
			["Lockiecan|pagle"] = { 1, 5, 18, 850 },
			["Lvl|raden"] = { 6, 0, 46, 732 },
			["Afekz|immerseus"] = { 2, 3, 2, 1082 },
			["Garnarin|galakras"] = { 0, 5, -10, 1114 },
			["Fullcream|galakras"] = { 0, 4, -44, 643 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 938 },
			["Mangocart|pagle"] = { 1, 3, -25, 1174 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 1022 },
			["Poizøønzx|galakras"] = { 4, 0, 8, 431 },
			["Boofed|raden"] = { 3, 0, 17, 1215 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1174 },
			["Horniaf|pagle"] = { 1, 2, 1, 954 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 346 },
			["Toest|pagle"] = { 0, 3, -11, 1174 },
			["Blankisa|raden"] = { 0, 2, -10, 855 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 732 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 1299 },
			["Ðmac|immerseus"] = { 0, 2, -8, 831 },
			["Dzyx|pagle"] = { 1, 1, -6, 912 },
			["Electabuzz|raden"] = { 0, 2, -19, 1060 },
			["Euspy|raden"] = { 2, 0, 48, 19 },
			["Heriberto|pagle"] = { 0, 2, -8, 1299 },
			["Hueland|raden"] = { 2, 0, 12, 1272 },
			["Kroun|raden"] = { 0, 2, -17, 1057 },
			["Spala|pagle"] = { 2, 0, 7, 372 },
			["Sugarbear|raden"] = { 2, 0, 0, 662 },
			["Averthery|pagle"] = { 0, 1, -2, 854 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1092 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 866 },
			["Kelaía|pagle"] = { 0, 1, -4, 1354 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1155 },
			["Scorchtt|pagle"] = { 0, 1, -8, 947 },
			["Survivorzx|raden"] = { 1, 0, 3, 272 },
		},
	},
}

