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
	built = 1795222794,
	builtText = "2026-11-20 08:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Blankisa|raden"] = { 0, 2, -8, 25 },
			["Imperïa|pagle"] = { 1, 1, 0, 8 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 43 },
			["Blankis|raden"] = { 0, 1, -5, 13 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 5, 10, 25 },
			["Çlix|pagle"] = { 1, 5, -1, 79 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 80 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 132 },
			["Imperïa|pagle"] = { 1, 1, 0, 8 },
			["Longswôrd|pagle"] = { 2, 0, 31, 132 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 43 },
			["Blankis|raden"] = { 0, 1, -5, 13 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 5, 10, 25 },
			["Çlix|pagle"] = { 1, 5, -1, 79 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 80 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 132 },
			["Edshearin|pagle"] = { 0, 2, -6, 335 },
			["Euspy|raden"] = { 2, 0, 48, 319 },
			["Guanyîn|raden"] = { 0, 2, -6, 348 },
			["Imperïa|pagle"] = { 1, 1, 0, 8 },
			["Longswôrd|pagle"] = { 2, 0, 31, 132 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 43 },
			["Blankis|raden"] = { 0, 1, -5, 13 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 560 },
			["Blankisa|raden"] = { 5, 5, 10, 25 },
			["Antartik|lei-shen"] = { 9, 0, 67, 582 },
			["Møønzx|galakras"] = { 2, 5, -47, 571 },
			["Çlix|pagle"] = { 1, 5, -1, 79 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 80 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 132 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 646 },
			["Edshearin|pagle"] = { 0, 2, -6, 335 },
			["Euspy|raden"] = { 2, 0, 48, 319 },
			["Guanyîn|raden"] = { 0, 2, -6, 348 },
			["Imperïa|pagle"] = { 1, 1, 0, 8 },
			["Longswôrd|pagle"] = { 2, 0, 31, 132 },
			["Spala|pagle"] = { 2, 0, 7, 672 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 43 },
			["Blankis|raden"] = { 0, 1, -5, 13 },
			["Survivorzx|raden"] = { 1, 0, 3, 572 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tharealnerds|pagle"] = { 11, 14, 37, 80 },
			["Çlix|pagle"] = { 10, 12, 79, 79 },
			["Dankorbs|pagle"] = { 11, 9, 43, 1212 },
			["Ivana|galakras"] = { 11, 9, 39, 1225 },
			["Rëyy|raden"] = { 5, 15, -101, 1107 },
			["Haolong|raden"] = { 11, 8, 46, 1212 },
			["Saintjuan|raden"] = { 10, 8, 80, 1270 },
			["Fctry|raden"] = { 13, 4, 223, 1121 },
			["Heidrichs|pagle"] = { 12, 5, 89, 560 },
			["Musician|raden"] = { 8, 9, 6, 1334 },
			["Stealurgirl|raden"] = { 8, 9, 6, 1338 },
			["Theweave|raden"] = { 12, 5, 103, 1172 },
			["Youcutebb|raden"] = { 12, 5, 237, 1170 },
			["Edshearin|pagle"] = { 4, 12, -79, 335 },
			["Guanyîn|raden"] = { 4, 12, -87, 348 },
			["Slumpfoo|raden"] = { 9, 6, 15, 1041 },
			["Speakington|raden"] = { 8, 7, 4, 1194 },
			["Statticw|arugal-au"] = { 9, 6, 11, 1045 },
			["Suxatheals|pagle"] = { 5, 9, -34, 1032 },
			["Nazmirr|pagle"] = { 1, 12, -95, 1279 },
			["Blankisa|raden"] = { 5, 7, 0, 25 },
			["Blunttraumah|immerseus"] = { 8, 4, 38, 1314 },
			["Efekz|immerseus"] = { 5, 7, -2, 1161 },
			["Nilio|raden"] = { 3, 9, -45, 957 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 1313 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 1122 },
			["Bistwo|raden"] = { 10, 1, 59, 1032 },
			["Glinna|raden"] = { 1, 10, -134, 1339 },
			["Polutropos|galakras"] = { 8, 3, 59, 1160 },
			["Tamerak|raden"] = { 8, 3, 20, 1158 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 1185 },
			["Jonwald|pagle"] = { 3, 7, 42, 1179 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 1181 },
			["Antartik|lei-shen"] = { 9, 0, 67, 582 },
			["Xunamated|raden"] = { 6, 3, 101, 950 },
			["Ezfist|immerseus"] = { 6, 2, 35, 942 },
			["Livekirkly|raden"] = { 3, 5, 12, 957 },
			["Trapfiendx|raden"] = { 3, 5, 48, 1214 },
			["Bdx|raden"] = { 3, 4, 7, 1199 },
			["Møønzx|galakras"] = { 2, 5, -47, 571 },
			["Genuinely|raden"] = { 6, 0, 37, 1423 },
			["Lockiecan|pagle"] = { 1, 5, 18, 1150 },
			["Lvl|raden"] = { 6, 0, 46, 1032 },
			["Afekz|immerseus"] = { 2, 3, 2, 1382 },
			["Garnarin|galakras"] = { 0, 5, -10, 1414 },
			["Larvá|raden"] = { 3, 2, -7, 1436 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 132 },
			["Drlovee|benediction"] = { 3, 1, 33, 1392 },
			["Fullcream|galakras"] = { 0, 4, -44, 943 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 1238 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 1322 },
			["Horniaf|pagle"] = { 1, 2, 1, 1254 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 731 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 646 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 1032 },
			["Ðmac|immerseus"] = { 0, 2, -8, 1131 },
			["Dzyx|pagle"] = { 1, 1, -6, 1212 },
			["Electabuzz|raden"] = { 0, 2, -19, 1360 },
			["Euspy|raden"] = { 2, 0, 48, 319 },
			["Imperïa|pagle"] = { 1, 1, 0, 8 },
			["Kroun|raden"] = { 0, 2, -17, 1357 },
			["Longswôrd|pagle"] = { 2, 0, 31, 132 },
			["Spala|pagle"] = { 2, 0, 7, 672 },
			["Sugarbear|raden"] = { 2, 0, 0, 962 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 43 },
			["Averthery|pagle"] = { 0, 1, -2, 1154 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1392 },
			["Blankis|raden"] = { 0, 1, -5, 13 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 1166 },
			["Scorchtt|pagle"] = { 0, 1, -8, 1247 },
			["Survivorzx|raden"] = { 1, 0, 3, 572 },
		},
	},
}

