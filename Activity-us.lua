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
	built = 1795211994,
	builtText = "2026-11-20 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Edshearin|pagle"] = { 0, 2, -6, 155 },
			["Euspy|raden"] = { 2, 0, 48, 139 },
			["Guanyîn|raden"] = { 0, 2, -6, 168 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Edshearin|pagle"] = { 0, 2, -6, 155 },
			["Euspy|raden"] = { 2, 0, 48, 139 },
			["Guanyîn|raden"] = { 0, 2, -6, 168 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 380 },
			["Antartik|lei-shen"] = { 9, 0, 67, 402 },
			["Møønzx|galakras"] = { 2, 5, -47, 391 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 551 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 466 },
			["Edshearin|pagle"] = { 0, 2, -6, 155 },
			["Euspy|raden"] = { 2, 0, 48, 139 },
			["Guanyîn|raden"] = { 0, 2, -6, 168 },
			["Spala|pagle"] = { 2, 0, 7, 492 },
			["Survivorzx|raden"] = { 1, 0, 3, 392 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 13, 11, 29, 1154 },
			["Stealurgirl|raden"] = { 13, 11, 29, 1158 },
			["Dankorbs|pagle"] = { 11, 9, 43, 1032 },
			["Ivana|galakras"] = { 11, 9, 39, 1045 },
			["Rëyy|raden"] = { 5, 15, -101, 927 },
			["Haolong|raden"] = { 11, 8, 46, 1032 },
			["Tharealnerds|pagle"] = { 10, 9, 41, 1044 },
			["Saintjuan|raden"] = { 10, 8, 80, 1090 },
			["Speakington|raden"] = { 11, 7, 21, 1014 },
			["Edshearin|pagle"] = { 4, 13, -97, 155 },
			["Fctry|raden"] = { 13, 4, 223, 941 },
			["Guanyîn|raden"] = { 4, 13, -106, 168 },
			["Heidrichs|pagle"] = { 12, 5, 89, 380 },
			["Theweave|raden"] = { 12, 5, 103, 992 },
			["Youcutebb|raden"] = { 12, 5, 237, 990 },
			["Çlix|pagle"] = { 9, 7, 80, 1122 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 1134 },
			["Slumpfoo|raden"] = { 9, 6, 15, 861 },
			["Statticw|arugal-au"] = { 9, 6, 11, 865 },
			["Tamerak|raden"] = { 9, 6, 8, 978 },
			["Suxatheals|pagle"] = { 5, 9, -34, 852 },
			["Glinna|raden"] = { 2, 11, -134, 1159 },
			["Nazmirr|pagle"] = { 1, 12, -95, 1099 },
			["Efekz|immerseus"] = { 5, 7, -2, 981 },
			["Nilio|raden"] = { 3, 9, -45, 777 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 1133 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 942 },
			["Bistwo|raden"] = { 10, 1, 59, 852 },
			["Polutropos|galakras"] = { 8, 3, 59, 980 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 1005 },
			["Jonwald|pagle"] = { 3, 7, 42, 999 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 1001 },
			["Antartik|lei-shen"] = { 9, 0, 67, 402 },
			["Xunamated|raden"] = { 6, 3, 101, 770 },
			["Ezfist|immerseus"] = { 6, 2, 35, 762 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1279 },
			["Livekirkly|raden"] = { 3, 5, 12, 777 },
			["Trapfiendx|raden"] = { 3, 5, 48, 1034 },
			["Bdx|raden"] = { 3, 4, 7, 1019 },
			["Crepes|pagle"] = { 3, 4, -23, 1294 },
			["Larvá|raden"] = { 4, 3, -19, 1256 },
			["Møønzx|galakras"] = { 2, 5, -47, 391 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1294 },
			["Drlovee|benediction"] = { 4, 2, 50, 1212 },
			["Genuinely|raden"] = { 6, 0, 37, 1243 },
			["Lockiecan|pagle"] = { 1, 5, 18, 970 },
			["Lvl|raden"] = { 6, 0, 46, 852 },
			["Afekz|immerseus"] = { 2, 3, 2, 1202 },
			["Garnarin|galakras"] = { 0, 5, -10, 1234 },
			["Fullcream|galakras"] = { 0, 4, -44, 763 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 1058 },
			["Mangocart|pagle"] = { 1, 3, -25, 1294 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 1142 },
			["Boofed|raden"] = { 3, 0, 17, 1335 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1294 },
			["Horniaf|pagle"] = { 1, 2, 1, 1074 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 551 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 466 },
			["Toest|pagle"] = { 0, 3, -11, 1294 },
			["Blankisa|raden"] = { 0, 2, -10, 975 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 852 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 1419 },
			["Ðmac|immerseus"] = { 0, 2, -8, 951 },
			["Dzyx|pagle"] = { 1, 1, -6, 1032 },
			["Electabuzz|raden"] = { 0, 2, -19, 1180 },
			["Euspy|raden"] = { 2, 0, 48, 139 },
			["Heriberto|pagle"] = { 0, 2, -8, 1419 },
			["Hueland|raden"] = { 2, 0, 12, 1392 },
			["Kroun|raden"] = { 0, 2, -17, 1177 },
			["Spala|pagle"] = { 2, 0, 7, 492 },
			["Sugarbear|raden"] = { 2, 0, 0, 782 },
			["Averthery|pagle"] = { 0, 1, -2, 974 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1212 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 986 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1275 },
			["Scorchtt|pagle"] = { 0, 1, -8, 1067 },
			["Survivorzx|raden"] = { 1, 0, 3, 392 },
		},
	},
}

