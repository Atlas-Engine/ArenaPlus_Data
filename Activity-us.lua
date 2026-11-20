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
	built = 1795215593,
	builtText = "2026-11-20 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 3, 18, 4 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 12 },
			["Tharealnerds|pagle"] = { 1, 2, -1, 3 },
			["Longswôrd|pagle"] = { 2, 0, 31, 12 },
			["Çlix|pagle"] = { 0, 1, -4, 12 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 3, 18, 4 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 12 },
			["Tharealnerds|pagle"] = { 1, 2, -1, 3 },
			["Longswôrd|pagle"] = { 2, 0, 31, 12 },
			["Çlix|pagle"] = { 0, 1, -4, 12 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 3, 18, 4 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 12 },
			["Tharealnerds|pagle"] = { 1, 2, -1, 3 },
			["Edshearin|pagle"] = { 0, 2, -6, 215 },
			["Euspy|raden"] = { 2, 0, 48, 199 },
			["Guanyîn|raden"] = { 0, 2, -6, 228 },
			["Longswôrd|pagle"] = { 2, 0, 31, 12 },
			["Çlix|pagle"] = { 0, 1, -4, 12 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 440 },
			["Antartik|lei-shen"] = { 9, 0, 67, 462 },
			["Blankisa|raden"] = { 5, 3, 18, 4 },
			["Møønzx|galakras"] = { 2, 5, -47, 451 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 12 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 611 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 526 },
			["Tharealnerds|pagle"] = { 1, 2, -1, 3 },
			["Edshearin|pagle"] = { 0, 2, -6, 215 },
			["Euspy|raden"] = { 2, 0, 48, 199 },
			["Guanyîn|raden"] = { 0, 2, -6, 228 },
			["Longswôrd|pagle"] = { 2, 0, 31, 12 },
			["Spala|pagle"] = { 2, 0, 7, 552 },
			["Çlix|pagle"] = { 0, 1, -4, 12 },
			["Survivorzx|raden"] = { 1, 0, 3, 452 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 13, 11, 29, 1214 },
			["Stealurgirl|raden"] = { 13, 11, 29, 1218 },
			["Tharealnerds|pagle"] = { 11, 11, 40, 3 },
			["Dankorbs|pagle"] = { 11, 9, 43, 1092 },
			["Ivana|galakras"] = { 11, 9, 39, 1105 },
			["Rëyy|raden"] = { 5, 15, -101, 987 },
			["Haolong|raden"] = { 11, 8, 46, 1092 },
			["Saintjuan|raden"] = { 10, 8, 80, 1150 },
			["Speakington|raden"] = { 11, 7, 21, 1074 },
			["Çlix|pagle"] = { 9, 8, 76, 12 },
			["Edshearin|pagle"] = { 4, 13, -97, 215 },
			["Fctry|raden"] = { 13, 4, 223, 1001 },
			["Guanyîn|raden"] = { 4, 13, -106, 228 },
			["Heidrichs|pagle"] = { 12, 5, 89, 440 },
			["Theweave|raden"] = { 12, 5, 103, 1052 },
			["Youcutebb|raden"] = { 12, 5, 237, 1050 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 1194 },
			["Slumpfoo|raden"] = { 9, 6, 15, 921 },
			["Statticw|arugal-au"] = { 9, 6, 11, 925 },
			["Tamerak|raden"] = { 9, 6, 8, 1038 },
			["Suxatheals|pagle"] = { 5, 9, -34, 912 },
			["Glinna|raden"] = { 2, 11, -134, 1219 },
			["Nazmirr|pagle"] = { 1, 12, -95, 1159 },
			["Efekz|immerseus"] = { 5, 7, -2, 1041 },
			["Nilio|raden"] = { 3, 9, -45, 837 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 1193 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 1002 },
			["Bistwo|raden"] = { 10, 1, 59, 912 },
			["Polutropos|galakras"] = { 8, 3, 59, 1040 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 1065 },
			["Blankisa|raden"] = { 5, 5, 8, 4 },
			["Jonwald|pagle"] = { 3, 7, 42, 1059 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 1061 },
			["Antartik|lei-shen"] = { 9, 0, 67, 462 },
			["Xunamated|raden"] = { 6, 3, 101, 830 },
			["Ezfist|immerseus"] = { 6, 2, 35, 822 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1339 },
			["Livekirkly|raden"] = { 3, 5, 12, 837 },
			["Trapfiendx|raden"] = { 3, 5, 48, 1094 },
			["Bdx|raden"] = { 3, 4, 7, 1079 },
			["Crepes|pagle"] = { 3, 4, -23, 1354 },
			["Larvá|raden"] = { 4, 3, -19, 1316 },
			["Møønzx|galakras"] = { 2, 5, -47, 451 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1354 },
			["Drlovee|benediction"] = { 4, 2, 50, 1272 },
			["Genuinely|raden"] = { 6, 0, 37, 1303 },
			["Lockiecan|pagle"] = { 1, 5, 18, 1030 },
			["Lvl|raden"] = { 6, 0, 46, 912 },
			["Afekz|immerseus"] = { 2, 3, 2, 1262 },
			["Garnarin|galakras"] = { 0, 5, -10, 1294 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 12 },
			["Fullcream|galakras"] = { 0, 4, -44, 823 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 1117 },
			["Mangocart|pagle"] = { 1, 3, -25, 1354 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 1202 },
			["Boofed|raden"] = { 3, 0, 17, 1395 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1354 },
			["Horniaf|pagle"] = { 1, 2, 1, 1134 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 611 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 526 },
			["Toest|pagle"] = { 0, 3, -11, 1354 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 912 },
			["Ðmac|immerseus"] = { 0, 2, -8, 1011 },
			["Dzyx|pagle"] = { 1, 1, -6, 1092 },
			["Electabuzz|raden"] = { 0, 2, -19, 1240 },
			["Euspy|raden"] = { 2, 0, 48, 199 },
			["Kroun|raden"] = { 0, 2, -17, 1237 },
			["Longswôrd|pagle"] = { 2, 0, 31, 12 },
			["Spala|pagle"] = { 2, 0, 7, 552 },
			["Sugarbear|raden"] = { 2, 0, 0, 842 },
			["Averthery|pagle"] = { 0, 1, -2, 1034 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1272 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 1046 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1335 },
			["Scorchtt|pagle"] = { 0, 1, -8, 1127 },
			["Survivorzx|raden"] = { 1, 0, 3, 452 },
		},
	},
}

