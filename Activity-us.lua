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
	built = 1795651198,
	builtText = "2026-11-25 07:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møonxz|raden"] = { 1, 0, 12, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 284 },
			["Gooseus|pagle"] = { 2, 0, 27, 189 },
			["Møonxz|raden"] = { 1, 0, 12, 178 },
			["Survivorzx|raden"] = { 1, 0, 5, 256 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 284 },
			["Bdx|raden"] = { 2, 0, 2, 524 },
			["Gooseus|pagle"] = { 2, 0, 27, 189 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 524 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 588 },
			["Bobertx|raden"] = { 1, 0, 6, 704 },
			["Møonxz|raden"] = { 1, 0, 12, 178 },
			["Møønzx|galakras"] = { 1, 0, 3, 454 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 530 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 555 },
			["Survivorzx|raden"] = { 1, 0, 5, 256 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 524 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 1127 },
			["Radendznuts|raden"] = { 13, 15, 52, 1120 },
			["Dohrow|pagle"] = { 9, 17, 19, 947 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 947 },
			["Phöoba|pagle"] = { 9, 17, 15, 947 },
			["Reflex|raden"] = { 13, 10, 351, 948 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 1037 },
			["Crepes|pagle"] = { 12, 8, 9, 922 },
			["Guanyîn|raden"] = { 7, 12, -66, 1119 },
			["Reckington|raden"] = { 14, 5, -78, 1064 },
			["Dabddaddy|raden"] = { 5, 9, -13, 899 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 995 },
			["Fabermors|pagle"] = { 3, 9, -35, 884 },
			["Slumpfoo|raden"] = { 8, 3, 32, 838 },
			["Statticw|arugal-au"] = { 8, 3, 48, 876 },
			["Anytips|pagle"] = { 8, 2, 76, 1005 },
			["Carnilumen|pagle"] = { 3, 7, -29, 1064 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 1149 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1265 },
			["Ðrizko|raden"] = { 8, 1, 131, 1064 },
			["Sombodee|pagle"] = { 6, 3, 31, 1299 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 1094 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 1125 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 1167 },
			["Lockiecan|pagle"] = { 3, 5, 60, 1064 },
			["Prettigood|raden"] = { 3, 5, -47, 900 },
			["Rëyy|raden"] = { 3, 5, -24, 1110 },
			["Polutropos|galakras"] = { 1, 6, -60, 1064 },
			["Tamerak|raden"] = { 5, 2, 26, 1152 },
			["Ðßøzxs|raden"] = { 5, 1, 107, 1202 },
			["Fingerplay|raden"] = { 2, 4, -18, 983 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 866 },
			["Iightz|raden"] = { 1, 4, -46, 1157 },
			["Jumpercablez|raden"] = { 3, 2, 22, 1029 },
			["Maddlexie|pagle"] = { 3, 2, 14, 1030 },
			["Sandbunny|pagle"] = { 4, 1, 8, 1124 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 1144 },
			["Bouddha|raden"] = { 4, 0, 27, 284 },
			["Boxershorts|pagle"] = { 0, 4, -13, 884 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1244 },
			["Glinna|raden"] = { 0, 4, -48, 1335 },
			["Heriberto|pagle"] = { 0, 4, -8, 1244 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 980 },
			["Averthery|pagle"] = { 1, 2, -16, 1212 },
			["Bobertx|raden"] = { 3, 0, 10, 704 },
			["Hueland|raden"] = { 1, 2, 0, 1387 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1244 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1264 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 530 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1244 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 1064 },
			["Bdx|raden"] = { 2, 0, 2, 524 },
			["Blankisa|raden"] = { 0, 2, -12, 1368 },
			["Electabuzz|raden"] = { 1, 1, -4, 1322 },
			["Gooseus|pagle"] = { 2, 0, 27, 189 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 524 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 588 },
			["Emanuely|pagle"] = { 0, 1, -4, 1307 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1310 },
			["Killou|pagle"] = { 1, 0, 3, 1064 },
			["Møonxz|raden"] = { 1, 0, 12, 178 },
			["Møønzx|galakras"] = { 1, 0, 3, 454 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 555 },
			["Survivorzx|raden"] = { 1, 0, 5, 256 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 524 },
		},
	},
}

