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
	built = 1795636791,
	builtText = "2026-11-25 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bouddha|raden"] = { 2, 0, 12, 44 },
			["Survivorzx|raden"] = { 1, 0, 5, 16 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 44 },
			["Survivorzx|raden"] = { 1, 0, 5, 16 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bouddha|raden"] = { 4, 0, 27, 44 },
			["Bdx|raden"] = { 2, 0, 2, 284 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 284 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 348 },
			["Møønzx|galakras"] = { 1, 0, 3, 213 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 290 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 315 },
			["Survivorzx|raden"] = { 1, 0, 5, 16 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 284 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Reflex|raden"] = { 10, 8, 212, 708 },
			["Nebuboom|nazgrim"] = { 9, 6, 1, 707 },
			["Dabddaddy|raden"] = { 5, 9, -13, 659 },
			["Dohrow|pagle"] = { 5, 9, 10, 707 },
			["Phöoba|pagle"] = { 5, 9, 10, 707 },
			["Slumpfoo|raden"] = { 8, 3, 32, 598 },
			["Statticw|arugal-au"] = { 8, 3, 48, 636 },
			["Prettigood|raden"] = { 3, 5, -47, 660 },
			["Fabermors|pagle"] = { 2, 4, -12, 644 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 626 },
			["Bouddha|raden"] = { 4, 0, 27, 44 },
			["Boxershorts|pagle"] = { 0, 4, -13, 644 },
			["Bobertx|raden"] = { 3, 0, 10, 464 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 290 },
			["Bdx|raden"] = { 2, 0, 2, 284 },
			["Crepes|pagle"] = { 0, 2, -20, 682 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 284 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 348 },
			["Møønzx|galakras"] = { 1, 0, 3, 213 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 315 },
			["Survivorzx|raden"] = { 1, 0, 5, 16 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 284 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 887 },
			["Radendznuts|raden"] = { 13, 15, 52, 880 },
			["Dohrow|pagle"] = { 9, 17, 19, 707 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 707 },
			["Phöoba|pagle"] = { 9, 17, 15, 707 },
			["Reflex|raden"] = { 13, 10, 351, 708 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 797 },
			["Crepes|pagle"] = { 12, 8, 9, 682 },
			["Guanyîn|raden"] = { 7, 12, -66, 879 },
			["Reckington|raden"] = { 14, 5, -78, 824 },
			["Dabddaddy|raden"] = { 5, 9, -13, 659 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 755 },
			["Møonxz|raden"] = { 5, 8, 35, 1205 },
			["Fabermors|pagle"] = { 3, 9, -35, 644 },
			["Slumpfoo|raden"] = { 8, 3, 32, 598 },
			["Statticw|arugal-au"] = { 8, 3, 48, 636 },
			["Anytips|pagle"] = { 8, 2, 76, 765 },
			["Carnilumen|pagle"] = { 3, 7, -29, 824 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 909 },
			["Sombodee|pagle"] = { 6, 4, 29, 1059 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 1025 },
			["Ðrizko|raden"] = { 8, 1, 131, 824 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 962 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 854 },
			["Blankisa|raden"] = { 5, 3, 32, 1127 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 885 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 927 },
			["Lockiecan|pagle"] = { 3, 5, 60, 824 },
			["Prettigood|raden"] = { 3, 5, -47, 660 },
			["Rëyy|raden"] = { 3, 5, -24, 870 },
			["Polutropos|galakras"] = { 1, 6, -60, 824 },
			["Tamerak|raden"] = { 5, 2, 26, 912 },
			["Bdx|raden"] = { 6, 0, 19, 284 },
			["Fingerplay|raden"] = { 2, 4, -18, 743 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 626 },
			["Iightz|raden"] = { 1, 4, -46, 917 },
			["Jumpercablez|raden"] = { 3, 2, 22, 789 },
			["Maddlexie|pagle"] = { 3, 2, 14, 790 },
			["Sandbunny|pagle"] = { 4, 1, 8, 884 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 904 },
			["Bouddha|raden"] = { 4, 0, 27, 44 },
			["Boxershorts|pagle"] = { 0, 4, -13, 644 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 1004 },
			["Glinna|raden"] = { 0, 4, -48, 1095 },
			["Heriberto|pagle"] = { 0, 4, -8, 1004 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 740 },
			["Xatica|pagle"] = { 2, 2, -7, 1227 },
			["Averthery|pagle"] = { 1, 2, -16, 972 },
			["Bobertx|raden"] = { 3, 0, 10, 464 },
			["Hueland|raden"] = { 1, 2, 0, 1147 },
			["Kamikylol|pagle"] = { 2, 1, 17, 1004 },
			["Leddyx|pagle"] = { 1, 2, -23, 1264 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 1024 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 290 },
			["Pisch|arugal-au"] = { 2, 1, -4, 1004 },
			["Xatyka|pagle"] = { 3, 0, 9, 1205 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 824 },
			["Electabuzz|raden"] = { 1, 1, -4, 1082 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 284 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 348 },
			["Drlovee|benediction"] = { 0, 1, 0, 1434 },
			["Emanuely|pagle"] = { 0, 1, -4, 1067 },
			["Euspy|raden"] = { 1, 0, 23, 1319 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1070 },
			["Killou|pagle"] = { 1, 0, 3, 824 },
			["Møønzx|galakras"] = { 1, 0, 3, 213 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 315 },
			["Survivorzx|raden"] = { 1, 0, 5, 16 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 284 },
		},
	},
}

