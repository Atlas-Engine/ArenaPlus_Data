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
	built = 1795647597,
	builtText = "2026-11-25 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gooseus|pagle"] = { 2, 0, 27, 129 },
			["Møonxz|raden"] = { 1, 0, 12, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 224 },
			["Gooseus|pagle"] = { 2, 0, 27, 129 },
			["Møonxz|raden"] = { 1, 0, 12, 118 },
			["Survivorzx|raden"] = { 1, 0, 5, 196 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 224 },
			["Bdx|raden"] = { 2, 0, 2, 464 },
			["Gooseus|pagle"] = { 2, 0, 27, 129 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 464 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 528 },
			["Bobertx|raden"] = { 1, 0, 6, 644 },
			["Møonxz|raden"] = { 1, 0, 12, 118 },
			["Møønzx|galakras"] = { 1, 0, 3, 394 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 470 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 495 },
			["Survivorzx|raden"] = { 1, 0, 5, 196 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 464 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 1067 },
			["Radendznuts|raden"] = { 13, 15, 52, 1060 },
			["Dohrow|pagle"] = { 9, 17, 19, 887 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 887 },
			["Phöoba|pagle"] = { 9, 17, 15, 887 },
			["Reflex|raden"] = { 13, 10, 351, 888 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 977 },
			["Crepes|pagle"] = { 12, 8, 9, 862 },
			["Guanyîn|raden"] = { 7, 12, -66, 1059 },
			["Reckington|raden"] = { 14, 5, -78, 1004 },
			["Dabddaddy|raden"] = { 5, 9, -13, 839 },
			["Møonxz|raden"] = { 6, 8, 47, 118 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 935 },
			["Fabermors|pagle"] = { 3, 9, -35, 824 },
			["Slumpfoo|raden"] = { 8, 3, 32, 778 },
			["Statticw|arugal-au"] = { 8, 3, 48, 816 },
			["Anytips|pagle"] = { 8, 2, 76, 945 },
			["Carnilumen|pagle"] = { 3, 7, -29, 1004 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 1089 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1205 },
			["Ðrizko|raden"] = { 8, 1, 131, 1004 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 1142 },
			["Sombodee|pagle"] = { 6, 3, 31, 1239 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 1034 },
			["Blankisa|raden"] = { 5, 3, 32, 1308 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 1065 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 1107 },
			["Lockiecan|pagle"] = { 3, 5, 60, 1004 },
			["Prettigood|raden"] = { 3, 5, -47, 840 },
			["Rëyy|raden"] = { 3, 5, -24, 1050 },
			["Polutropos|galakras"] = { 1, 6, -60, 1004 },
			["Tamerak|raden"] = { 5, 2, 26, 1092 },
			["Fingerplay|raden"] = { 2, 4, -18, 923 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 806 },
			["Iightz|raden"] = { 1, 4, -46, 1097 },
			["Jumpercablez|raden"] = { 3, 2, 22, 969 },
			["Maddlexie|pagle"] = { 3, 2, 14, 970 },
			["Sandbunny|pagle"] = { 4, 1, 8, 1064 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 1084 },
			["Bouddha|raden"] = { 4, 0, 27, 224 },
			["Boxershorts|pagle"] = { 0, 4, -13, 824 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1184 },
			["Glinna|raden"] = { 0, 4, -48, 1275 },
			["Heriberto|pagle"] = { 0, 4, -8, 1184 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 920 },
			["Averthery|pagle"] = { 1, 2, -16, 1152 },
			["Bobertx|raden"] = { 3, 0, 10, 644 },
			["Hueland|raden"] = { 1, 2, 0, 1327 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1184 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1204 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 470 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1184 },
			["Xatica|pagle"] = { 2, 1, -5, 1407 },
			["Xatyka|pagle"] = { 3, 0, 9, 1385 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 1004 },
			["Bdx|raden"] = { 2, 0, 2, 464 },
			["Electabuzz|raden"] = { 1, 1, -4, 1262 },
			["Gooseus|pagle"] = { 2, 0, 27, 129 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 464 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 528 },
			["Emanuely|pagle"] = { 0, 1, -4, 1247 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1250 },
			["Killou|pagle"] = { 1, 0, 3, 1004 },
			["Møønzx|galakras"] = { 1, 0, 3, 394 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 495 },
			["Survivorzx|raden"] = { 1, 0, 5, 196 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 464 },
		},
	},
}

