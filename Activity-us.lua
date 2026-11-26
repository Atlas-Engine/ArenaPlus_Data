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
	built = 1795654797,
	builtText = "2026-11-25 08:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kxle|raden"] = { 6, 1, -3, 44 },
			["Blunttraumah|immerseus"] = { 2, 0, 29, 44 },
			["Syphonfiltèr|pagle"] = { 2, 0, 35, 44 },
			["Imperïa|pagle"] = { 0, 1, -8, 44 },
			["Musician|raden"] = { 1, 0, 10, 44 },
			["Stealurgirl|raden"] = { 1, 0, 10, 44 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Kxle|raden"] = { 6, 1, -3, 44 },
			["Blunttraumah|immerseus"] = { 2, 0, 29, 44 },
			["Syphonfiltèr|pagle"] = { 2, 0, 35, 44 },
			["Imperïa|pagle"] = { 0, 1, -8, 44 },
			["Musician|raden"] = { 1, 0, 10, 44 },
			["Stealurgirl|raden"] = { 1, 0, 10, 44 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 44 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Kxle|raden"] = { 6, 1, -3, 44 },
			["Blunttraumah|immerseus"] = { 2, 0, 29, 44 },
			["Bouddha|raden"] = { 2, 0, 12, 344 },
			["Gooseus|pagle"] = { 2, 0, 27, 249 },
			["Syphonfiltèr|pagle"] = { 2, 0, 35, 44 },
			["Imperïa|pagle"] = { 0, 1, -8, 44 },
			["Møonxz|raden"] = { 1, 0, 12, 238 },
			["Musician|raden"] = { 1, 0, 10, 44 },
			["Stealurgirl|raden"] = { 1, 0, 10, 44 },
			["Survivorzx|raden"] = { 1, 0, 5, 316 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 44 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kxle|raden"] = { 6, 1, -3, 44 },
			["Bouddha|raden"] = { 4, 0, 27, 344 },
			["Bdx|raden"] = { 2, 0, 2, 584 },
			["Blunttraumah|immerseus"] = { 2, 0, 29, 44 },
			["Gooseus|pagle"] = { 2, 0, 27, 249 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 584 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 648 },
			["Syphonfiltèr|pagle"] = { 2, 0, 35, 44 },
			["Imperïa|pagle"] = { 0, 1, -8, 44 },
			["Møonxz|raden"] = { 1, 0, 12, 238 },
			["Møønzx|galakras"] = { 1, 0, 3, 514 },
			["Musician|raden"] = { 1, 0, 10, 44 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 590 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 615 },
			["Stealurgirl|raden"] = { 1, 0, 10, 44 },
			["Survivorzx|raden"] = { 1, 0, 5, 316 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 584 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 44 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Radendznuts|raden"] = { 13, 15, 52, 1180 },
			["Dohrow|pagle"] = { 9, 17, 19, 1007 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 1007 },
			["Phöoba|pagle"] = { 9, 17, 15, 1007 },
			["Reflex|raden"] = { 13, 10, 351, 1008 },
			["Nazmirr|pagle"] = { 6, 15, 11, 1187 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 1097 },
			["Crepes|pagle"] = { 12, 8, 9, 982 },
			["Guanyîn|raden"] = { 7, 12, -66, 1179 },
			["Reckington|raden"] = { 14, 5, -78, 1124 },
			["Dabddaddy|raden"] = { 5, 9, -13, 959 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 1055 },
			["Fabermors|pagle"] = { 3, 9, -35, 944 },
			["Slumpfoo|raden"] = { 8, 3, 32, 898 },
			["Statticw|arugal-au"] = { 8, 3, 48, 936 },
			["Anytips|pagle"] = { 8, 2, 76, 1065 },
			["Carnilumen|pagle"] = { 3, 7, -29, 1124 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 1209 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1325 },
			["Sombodee|pagle"] = { 6, 3, 31, 1359 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 1154 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 1185 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 1227 },
			["Lockiecan|pagle"] = { 3, 5, 60, 1124 },
			["Prettigood|raden"] = { 3, 5, -47, 960 },
			["Rëyy|raden"] = { 3, 5, -24, 1170 },
			["Kxle|raden"] = { 6, 1, -3, 44 },
			["Polutropos|galakras"] = { 1, 6, -60, 1124 },
			["Tamerak|raden"] = { 5, 2, 26, 1212 },
			["Ðrizko|raden"] = { 5, 1, 107, 1124 },
			["Ðßøzxs|raden"] = { 5, 1, 107, 1262 },
			["Fingerplay|raden"] = { 2, 4, -18, 1043 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 926 },
			["Iightz|raden"] = { 1, 4, -46, 1217 },
			["Jumpercablez|raden"] = { 3, 2, 22, 1089 },
			["Maddlexie|pagle"] = { 3, 2, 14, 1090 },
			["Sandbunny|pagle"] = { 4, 1, 8, 1184 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 1204 },
			["Bouddha|raden"] = { 4, 0, 27, 344 },
			["Boxershorts|pagle"] = { 0, 4, -13, 944 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1304 },
			["Heriberto|pagle"] = { 0, 4, -8, 1304 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 1040 },
			["Averthery|pagle"] = { 1, 2, -16, 1272 },
			["Bobertx|raden"] = { 3, 0, 10, 764 },
			["Glinna|raden"] = { 0, 3, -34, 1395 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1304 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1324 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 590 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1304 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 1124 },
			["Bdx|raden"] = { 2, 0, 2, 584 },
			["Blankisa|raden"] = { 0, 2, -12, 1428 },
			["Blunttraumah|immerseus"] = { 2, 0, 29, 44 },
			["Electabuzz|raden"] = { 1, 1, -4, 1382 },
			["Gooseus|pagle"] = { 2, 0, 27, 249 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 584 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 648 },
			["Syphonfiltèr|pagle"] = { 2, 0, 35, 44 },
			["Emanuely|pagle"] = { 0, 1, -4, 1367 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1370 },
			["Imperïa|pagle"] = { 0, 1, -8, 44 },
			["Killou|pagle"] = { 1, 0, 3, 1124 },
			["Møonxz|raden"] = { 1, 0, 12, 238 },
			["Møønzx|galakras"] = { 1, 0, 3, 514 },
			["Musician|raden"] = { 1, 0, 10, 44 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 615 },
			["Stealurgirl|raden"] = { 1, 0, 10, 44 },
			["Survivorzx|raden"] = { 1, 0, 5, 316 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 584 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 44 },
		},
	},
}

