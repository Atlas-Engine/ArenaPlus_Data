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
	built = 1795640392,
	builtText = "2026-11-25 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gooseus|pagle"] = { 2, 0, 27, 9 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 104 },
			["Gooseus|pagle"] = { 2, 0, 27, 9 },
			["Survivorzx|raden"] = { 1, 0, 5, 76 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 104 },
			["Bdx|raden"] = { 2, 0, 2, 344 },
			["Gooseus|pagle"] = { 2, 0, 27, 9 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 344 },
			["Møønzx|galakras"] = { 1, 0, 3, 273 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 350 },
			["Survivorzx|raden"] = { 1, 0, 5, 76 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 344 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dabddaddy|raden"] = { 5, 9, -13, 719 },
			["Slumpfoo|raden"] = { 8, 3, 32, 658 },
			["Statticw|arugal-au"] = { 8, 3, 48, 696 },
			["Prettigood|raden"] = { 3, 5, -47, 720 },
			["Fabermors|pagle"] = { 2, 4, -12, 704 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 686 },
			["Bouddha|raden"] = { 4, 0, 27, 104 },
			["Boxershorts|pagle"] = { 0, 4, -13, 704 },
			["Bobertx|raden"] = { 3, 0, 10, 524 },
			["Bdx|raden"] = { 2, 0, 2, 344 },
			["Gooseus|pagle"] = { 2, 0, 27, 9 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 344 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 408 },
			["Møønzx|galakras"] = { 1, 0, 3, 273 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 350 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 375 },
			["Survivorzx|raden"] = { 1, 0, 5, 76 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 344 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 947 },
			["Radendznuts|raden"] = { 13, 15, 52, 940 },
			["Dohrow|pagle"] = { 9, 17, 19, 767 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 767 },
			["Phöoba|pagle"] = { 9, 17, 15, 767 },
			["Reflex|raden"] = { 13, 10, 351, 768 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 857 },
			["Crepes|pagle"] = { 12, 8, 9, 742 },
			["Guanyîn|raden"] = { 7, 12, -66, 939 },
			["Reckington|raden"] = { 14, 5, -78, 884 },
			["Dabddaddy|raden"] = { 5, 9, -13, 719 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 815 },
			["Møonxz|raden"] = { 5, 8, 35, 1265 },
			["Fabermors|pagle"] = { 3, 9, -35, 704 },
			["Slumpfoo|raden"] = { 8, 3, 32, 658 },
			["Statticw|arugal-au"] = { 8, 3, 48, 696 },
			["Anytips|pagle"] = { 8, 2, 76, 825 },
			["Carnilumen|pagle"] = { 3, 7, -29, 884 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 969 },
			["Sombodee|pagle"] = { 6, 4, 29, 1119 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1085 },
			["Ðrizko|raden"] = { 8, 1, 131, 884 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 1022 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 914 },
			["Blankisa|raden"] = { 5, 3, 32, 1187 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 945 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 987 },
			["Lockiecan|pagle"] = { 3, 5, 60, 884 },
			["Prettigood|raden"] = { 3, 5, -47, 720 },
			["Rëyy|raden"] = { 3, 5, -24, 930 },
			["Polutropos|galakras"] = { 1, 6, -60, 884 },
			["Tamerak|raden"] = { 5, 2, 26, 972 },
			["Fingerplay|raden"] = { 2, 4, -18, 803 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 686 },
			["Iightz|raden"] = { 1, 4, -46, 977 },
			["Jumpercablez|raden"] = { 3, 2, 22, 849 },
			["Maddlexie|pagle"] = { 3, 2, 14, 850 },
			["Sandbunny|pagle"] = { 4, 1, 8, 944 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 964 },
			["Bouddha|raden"] = { 4, 0, 27, 104 },
			["Boxershorts|pagle"] = { 0, 4, -13, 704 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1064 },
			["Glinna|raden"] = { 0, 4, -48, 1155 },
			["Heriberto|pagle"] = { 0, 4, -8, 1064 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 800 },
			["Xatica|pagle"] = { 2, 2, -7, 1287 },
			["Averthery|pagle"] = { 1, 2, -16, 1032 },
			["Bobertx|raden"] = { 3, 0, 10, 524 },
			["Hueland|raden"] = { 1, 2, 0, 1207 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1064 },
			["Leddyx|pagle"] = { 1, 2, -23, 1324 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1084 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 350 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1064 },
			["Xatyka|pagle"] = { 3, 0, 9, 1265 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 884 },
			["Bdx|raden"] = { 2, 0, 2, 344 },
			["Electabuzz|raden"] = { 1, 1, -4, 1142 },
			["Gooseus|pagle"] = { 2, 0, 27, 9 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 344 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 408 },
			["Emanuely|pagle"] = { 0, 1, -4, 1127 },
			["Euspy|raden"] = { 1, 0, 23, 1379 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1130 },
			["Killou|pagle"] = { 1, 0, 3, 884 },
			["Møønzx|galakras"] = { 1, 0, 3, 273 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 375 },
			["Survivorzx|raden"] = { 1, 0, 5, 76 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 344 },
		},
	},
}

