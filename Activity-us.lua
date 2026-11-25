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
	built = 1795643994,
	builtText = "2026-11-25 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Møonxz|raden"] = { 1, 0, 12, 57 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bouddha|raden"] = { 2, 0, 12, 164 },
			["Gooseus|pagle"] = { 2, 0, 27, 69 },
			["Møonxz|raden"] = { 1, 0, 12, 57 },
			["Survivorzx|raden"] = { 1, 0, 5, 136 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 164 },
			["Gooseus|pagle"] = { 2, 0, 27, 69 },
			["Møonxz|raden"] = { 1, 0, 12, 57 },
			["Møønzx|galakras"] = { 1, 0, 3, 333 },
			["Survivorzx|raden"] = { 1, 0, 5, 136 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 164 },
			["Bdx|raden"] = { 2, 0, 2, 404 },
			["Gooseus|pagle"] = { 2, 0, 27, 69 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 404 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 468 },
			["Bobertx|raden"] = { 1, 0, 6, 584 },
			["Møonxz|raden"] = { 1, 0, 12, 57 },
			["Møønzx|galakras"] = { 1, 0, 3, 333 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 410 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 435 },
			["Slumpfoo|raden"] = { 0, 1, -5, 718 },
			["Survivorzx|raden"] = { 1, 0, 5, 136 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 404 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 1007 },
			["Radendznuts|raden"] = { 13, 15, 52, 1000 },
			["Dohrow|pagle"] = { 9, 17, 19, 827 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 827 },
			["Phöoba|pagle"] = { 9, 17, 15, 827 },
			["Reflex|raden"] = { 13, 10, 351, 828 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 917 },
			["Crepes|pagle"] = { 12, 8, 9, 802 },
			["Guanyîn|raden"] = { 7, 12, -66, 999 },
			["Reckington|raden"] = { 14, 5, -78, 944 },
			["Dabddaddy|raden"] = { 5, 9, -13, 779 },
			["Møonxz|raden"] = { 6, 8, 47, 57 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 875 },
			["Fabermors|pagle"] = { 3, 9, -35, 764 },
			["Slumpfoo|raden"] = { 8, 3, 32, 718 },
			["Statticw|arugal-au"] = { 8, 3, 48, 756 },
			["Anytips|pagle"] = { 8, 2, 76, 885 },
			["Carnilumen|pagle"] = { 3, 7, -29, 944 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 1029 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1145 },
			["Ðrizko|raden"] = { 8, 1, 131, 944 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 1082 },
			["Sombodee|pagle"] = { 6, 3, 31, 1179 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 974 },
			["Blankisa|raden"] = { 5, 3, 32, 1247 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 1005 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 1047 },
			["Lockiecan|pagle"] = { 3, 5, 60, 944 },
			["Prettigood|raden"] = { 3, 5, -47, 780 },
			["Rëyy|raden"] = { 3, 5, -24, 990 },
			["Polutropos|galakras"] = { 1, 6, -60, 944 },
			["Tamerak|raden"] = { 5, 2, 26, 1032 },
			["Fingerplay|raden"] = { 2, 4, -18, 863 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 746 },
			["Iightz|raden"] = { 1, 4, -46, 1037 },
			["Jumpercablez|raden"] = { 3, 2, 22, 909 },
			["Maddlexie|pagle"] = { 3, 2, 14, 910 },
			["Sandbunny|pagle"] = { 4, 1, 8, 1004 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 1024 },
			["Bouddha|raden"] = { 4, 0, 27, 164 },
			["Boxershorts|pagle"] = { 0, 4, -13, 764 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1124 },
			["Glinna|raden"] = { 0, 4, -48, 1215 },
			["Heriberto|pagle"] = { 0, 4, -8, 1124 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 860 },
			["Averthery|pagle"] = { 1, 2, -16, 1092 },
			["Bobertx|raden"] = { 3, 0, 10, 584 },
			["Hueland|raden"] = { 1, 2, 0, 1267 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1124 },
			["Leddyx|pagle"] = { 1, 2, -23, 1384 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1144 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 410 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1124 },
			["Xatica|pagle"] = { 2, 1, -5, 1347 },
			["Xatyka|pagle"] = { 3, 0, 9, 1325 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 944 },
			["Bdx|raden"] = { 2, 0, 2, 404 },
			["Electabuzz|raden"] = { 1, 1, -4, 1202 },
			["Gooseus|pagle"] = { 2, 0, 27, 69 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 404 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 468 },
			["Emanuely|pagle"] = { 0, 1, -4, 1187 },
			["Euspy|raden"] = { 1, 0, 23, 1439 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1190 },
			["Killou|pagle"] = { 1, 0, 3, 944 },
			["Møønzx|galakras"] = { 1, 0, 3, 333 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 435 },
			["Survivorzx|raden"] = { 1, 0, 5, 136 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 404 },
		},
	},
}

