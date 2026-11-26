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
	built = 1795658393,
	builtText = "2026-11-25 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Blunttraumah|immerseus"] = { 2, 6, -15, 51 },
			["Syphonfiltèr|pagle"] = { 2, 6, 8, 33 },
			["Xatica|pagle"] = { 3, 3, 11, 49 },
			["Hueland|raden"] = { 2, 1, 24, 44 },
			["Blacksiide|pagle"] = { 0, 1, -12, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Blunttraumah|immerseus"] = { 4, 6, 14, 51 },
			["Syphonfiltèr|pagle"] = { 4, 6, 43, 33 },
			["Kxle|raden"] = { 6, 1, -3, 104 },
			["Xatica|pagle"] = { 3, 3, 11, 49 },
			["Hueland|raden"] = { 2, 1, 24, 44 },
			["Blacksiide|pagle"] = { 0, 1, -12, 49 },
			["Imperïa|pagle"] = { 0, 1, -8, 104 },
			["Musician|raden"] = { 1, 0, 10, 104 },
			["Stealurgirl|raden"] = { 1, 0, 10, 104 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Blunttraumah|immerseus"] = { 4, 6, 14, 51 },
			["Syphonfiltèr|pagle"] = { 4, 6, 43, 33 },
			["Kxle|raden"] = { 6, 1, -3, 104 },
			["Xatica|pagle"] = { 3, 3, 11, 49 },
			["Hueland|raden"] = { 2, 1, 24, 44 },
			["Gooseus|pagle"] = { 2, 0, 27, 309 },
			["Blacksiide|pagle"] = { 0, 1, -12, 49 },
			["Imperïa|pagle"] = { 0, 1, -8, 104 },
			["Møonxz|raden"] = { 1, 0, 12, 297 },
			["Musician|raden"] = { 1, 0, 10, 104 },
			["Stealurgirl|raden"] = { 1, 0, 10, 104 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 104 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Blunttraumah|immerseus"] = { 4, 6, 14, 51 },
			["Syphonfiltèr|pagle"] = { 4, 6, 43, 33 },
			["Kxle|raden"] = { 6, 1, -3, 104 },
			["Xatica|pagle"] = { 3, 3, 11, 49 },
			["Bouddha|raden"] = { 4, 0, 27, 404 },
			["Hueland|raden"] = { 2, 1, 24, 44 },
			["Bdx|raden"] = { 2, 0, 2, 644 },
			["Gooseus|pagle"] = { 2, 0, 27, 309 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 644 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 708 },
			["Blacksiide|pagle"] = { 0, 1, -12, 49 },
			["Imperïa|pagle"] = { 0, 1, -8, 104 },
			["Møonxz|raden"] = { 1, 0, 12, 297 },
			["Møønzx|galakras"] = { 1, 0, 3, 573 },
			["Musician|raden"] = { 1, 0, 10, 104 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 650 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 675 },
			["Stealurgirl|raden"] = { 1, 0, 10, 104 },
			["Survivorzx|raden"] = { 1, 0, 5, 376 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 644 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 104 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Radendznuts|raden"] = { 13, 15, 52, 1240 },
			["Dohrow|pagle"] = { 9, 17, 19, 1067 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 1067 },
			["Phöoba|pagle"] = { 9, 17, 15, 1067 },
			["Reflex|raden"] = { 13, 10, 351, 1068 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 1157 },
			["Crepes|pagle"] = { 12, 8, 9, 1042 },
			["Guanyîn|raden"] = { 7, 12, -66, 1239 },
			["Reckington|raden"] = { 14, 5, -78, 1184 },
			["Nazmirr|pagle"] = { 5, 11, 17, 1247 },
			["Dabddaddy|raden"] = { 5, 9, -13, 1019 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 1115 },
			["Fabermors|pagle"] = { 3, 9, -35, 1004 },
			["Slumpfoo|raden"] = { 8, 3, 32, 958 },
			["Statticw|arugal-au"] = { 8, 3, 48, 996 },
			["Anytips|pagle"] = { 8, 2, 76, 1125 },
			["Blunttraumah|immerseus"] = { 4, 6, 14, 51 },
			["Carnilumen|pagle"] = { 3, 7, -29, 1184 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 1269 },
			["Syphonfiltèr|pagle"] = { 4, 6, 43, 33 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1385 },
			["Sombodee|pagle"] = { 6, 3, 31, 1419 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 1214 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 1245 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 1287 },
			["Lockiecan|pagle"] = { 3, 5, 60, 1184 },
			["Prettigood|raden"] = { 3, 5, -47, 1020 },
			["Rëyy|raden"] = { 3, 5, -24, 1230 },
			["Kxle|raden"] = { 6, 1, -3, 104 },
			["Polutropos|galakras"] = { 1, 6, -60, 1184 },
			["Ðrizko|raden"] = { 5, 1, 107, 1184 },
			["Ðßøzxs|raden"] = { 5, 1, 107, 1322 },
			["Fingerplay|raden"] = { 2, 4, -18, 1103 },
			["Xatica|pagle"] = { 3, 3, 11, 49 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 986 },
			["Iightz|raden"] = { 1, 4, -46, 1277 },
			["Jumpercablez|raden"] = { 3, 2, 22, 1149 },
			["Maddlexie|pagle"] = { 3, 2, 14, 1150 },
			["Sandbunny|pagle"] = { 4, 1, 8, 1244 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 1264 },
			["Bouddha|raden"] = { 4, 0, 27, 404 },
			["Boxershorts|pagle"] = { 0, 4, -13, 1004 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1364 },
			["Heriberto|pagle"] = { 0, 4, -8, 1364 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 1100 },
			["Averthery|pagle"] = { 1, 2, -16, 1332 },
			["Bobertx|raden"] = { 3, 0, 10, 824 },
			["Hueland|raden"] = { 2, 1, 24, 44 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1364 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1384 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 650 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1364 },
			["Tamerak|raden"] = { 1, 2, 0, 1272 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 1184 },
			["Bdx|raden"] = { 2, 0, 2, 644 },
			["Gooseus|pagle"] = { 2, 0, 27, 309 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 644 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 708 },
			["Blacksiide|pagle"] = { 0, 1, -12, 49 },
			["Emanuely|pagle"] = { 0, 1, -4, 1427 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1430 },
			["Imperïa|pagle"] = { 0, 1, -8, 104 },
			["Killou|pagle"] = { 1, 0, 3, 1184 },
			["Møonxz|raden"] = { 1, 0, 12, 297 },
			["Møønzx|galakras"] = { 1, 0, 3, 573 },
			["Musician|raden"] = { 1, 0, 10, 104 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 675 },
			["Stealurgirl|raden"] = { 1, 0, 10, 104 },
			["Survivorzx|raden"] = { 1, 0, 5, 376 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 644 },
			["Vseraphim|immerseus"] = { 0, 1, -8, 104 },
		},
	},
}

