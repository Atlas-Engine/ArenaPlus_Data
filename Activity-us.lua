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
	built = 1795219193,
	builtText = "2026-11-20 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Çlix|pagle"] = { 1, 4, 3, 19 },
			["Tharealnerds|pagle"] = { 0, 3, -3, 20 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 3, 18, 64 },
			["Çlix|pagle"] = { 1, 5, -1, 19 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 20 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 72 },
			["Longswôrd|pagle"] = { 2, 0, 31, 72 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Blankisa|raden"] = { 5, 3, 18, 64 },
			["Çlix|pagle"] = { 1, 5, -1, 19 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 20 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 72 },
			["Edshearin|pagle"] = { 0, 2, -6, 275 },
			["Euspy|raden"] = { 2, 0, 48, 259 },
			["Guanyîn|raden"] = { 0, 2, -6, 288 },
			["Longswôrd|pagle"] = { 2, 0, 31, 72 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 500 },
			["Antartik|lei-shen"] = { 9, 0, 67, 522 },
			["Blankisa|raden"] = { 5, 3, 18, 64 },
			["Møønzx|galakras"] = { 2, 5, -47, 511 },
			["Çlix|pagle"] = { 1, 5, -1, 19 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 20 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 72 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 671 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 586 },
			["Edshearin|pagle"] = { 0, 2, -6, 275 },
			["Euspy|raden"] = { 2, 0, 48, 259 },
			["Guanyîn|raden"] = { 0, 2, -6, 288 },
			["Longswôrd|pagle"] = { 2, 0, 31, 72 },
			["Spala|pagle"] = { 2, 0, 7, 612 },
			["Survivorzx|raden"] = { 1, 0, 3, 512 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tharealnerds|pagle"] = { 11, 14, 37, 20 },
			["Musician|raden"] = { 13, 11, 29, 1274 },
			["Stealurgirl|raden"] = { 13, 11, 29, 1278 },
			["Çlix|pagle"] = { 10, 12, 79, 19 },
			["Dankorbs|pagle"] = { 11, 9, 43, 1152 },
			["Ivana|galakras"] = { 11, 9, 39, 1165 },
			["Rëyy|raden"] = { 5, 15, -101, 1047 },
			["Haolong|raden"] = { 11, 8, 46, 1152 },
			["Saintjuan|raden"] = { 10, 8, 80, 1210 },
			["Speakington|raden"] = { 11, 7, 21, 1134 },
			["Edshearin|pagle"] = { 4, 13, -97, 275 },
			["Fctry|raden"] = { 13, 4, 223, 1061 },
			["Guanyîn|raden"] = { 4, 13, -106, 288 },
			["Heidrichs|pagle"] = { 12, 5, 89, 500 },
			["Theweave|raden"] = { 12, 5, 103, 1112 },
			["Youcutebb|raden"] = { 12, 5, 237, 1110 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 1254 },
			["Slumpfoo|raden"] = { 9, 6, 15, 981 },
			["Statticw|arugal-au"] = { 9, 6, 11, 985 },
			["Tamerak|raden"] = { 9, 6, 8, 1098 },
			["Suxatheals|pagle"] = { 5, 9, -34, 972 },
			["Nazmirr|pagle"] = { 1, 12, -95, 1219 },
			["Efekz|immerseus"] = { 5, 7, -2, 1101 },
			["Nilio|raden"] = { 3, 9, -45, 897 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 1253 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 1062 },
			["Bistwo|raden"] = { 10, 1, 59, 972 },
			["Glinna|raden"] = { 1, 10, -134, 1279 },
			["Polutropos|galakras"] = { 8, 3, 59, 1100 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 1125 },
			["Blankisa|raden"] = { 5, 5, 8, 64 },
			["Jonwald|pagle"] = { 3, 7, 42, 1119 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 1121 },
			["Antartik|lei-shen"] = { 9, 0, 67, 522 },
			["Xunamated|raden"] = { 6, 3, 101, 890 },
			["Ezfist|immerseus"] = { 6, 2, 35, 882 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1399 },
			["Livekirkly|raden"] = { 3, 5, 12, 897 },
			["Trapfiendx|raden"] = { 3, 5, 48, 1154 },
			["Bdx|raden"] = { 3, 4, 7, 1139 },
			["Larvá|raden"] = { 4, 3, -19, 1376 },
			["Møønzx|galakras"] = { 2, 5, -47, 511 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1414 },
			["Drlovee|benediction"] = { 4, 2, 50, 1332 },
			["Genuinely|raden"] = { 6, 0, 37, 1363 },
			["Lockiecan|pagle"] = { 1, 5, 18, 1090 },
			["Lvl|raden"] = { 6, 0, 46, 972 },
			["Afekz|immerseus"] = { 2, 3, 2, 1322 },
			["Garnarin|galakras"] = { 0, 5, -10, 1354 },
			["Lunchmeat|nazgrim"] = { 1, 4, -19, 72 },
			["Fullcream|galakras"] = { 0, 4, -44, 883 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 1177 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 1262 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1414 },
			["Horniaf|pagle"] = { 1, 2, 1, 1194 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 671 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 586 },
			["Toest|pagle"] = { 0, 3, -11, 1414 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 972 },
			["Crepes|pagle"] = { 0, 2, -20, 1414 },
			["Ðmac|immerseus"] = { 0, 2, -8, 1071 },
			["Dzyx|pagle"] = { 1, 1, -6, 1152 },
			["Electabuzz|raden"] = { 0, 2, -19, 1300 },
			["Euspy|raden"] = { 2, 0, 48, 259 },
			["Kroun|raden"] = { 0, 2, -17, 1297 },
			["Longswôrd|pagle"] = { 2, 0, 31, 72 },
			["Spala|pagle"] = { 2, 0, 7, 612 },
			["Sugarbear|raden"] = { 2, 0, 0, 902 },
			["Averthery|pagle"] = { 0, 1, -2, 1094 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 1332 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 1106 },
			["Mangocart|pagle"] = { 0, 1, -9, 1414 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1395 },
			["Scorchtt|pagle"] = { 0, 1, -8, 1187 },
			["Survivorzx|raden"] = { 1, 0, 3, 512 },
		},
	},
}

