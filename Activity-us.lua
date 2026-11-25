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
	built = 1795629597,
	builtText = "2026-11-25 01:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bdx|raden"] = { 2, 0, 2, 164 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 164 },
			["Møønzx|galakras"] = { 1, 0, 3, 94 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 170 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 164 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bdx|raden"] = { 2, 0, 2, 164 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 164 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 228 },
			["Bobertx|raden"] = { 1, 0, 6, 344 },
			["Møønzx|galakras"] = { 1, 0, 3, 94 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 170 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 195 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 164 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dohrow|pagle"] = { 9, 17, 19, 587 },
			["Phöoba|pagle"] = { 9, 17, 15, 587 },
			["Reflex|raden"] = { 13, 10, 351, 588 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 677 },
			["Reckington|raden"] = { 13, 3, -45, 704 },
			["Nebuboom|nazgrim"] = { 9, 6, 1, 587 },
			["Dabddaddy|raden"] = { 5, 9, -13, 539 },
			["Slumpfoo|raden"] = { 8, 3, 32, 478 },
			["Statticw|arugal-au"] = { 8, 3, 48, 516 },
			["Anytips|pagle"] = { 8, 2, 76, 645 },
			["Fabermors|pagle"] = { 3, 7, -16, 524 },
			["Weknwdatruth|pagle"] = { 8, 2, 81, 635 },
			["Prettigood|raden"] = { 3, 5, -47, 540 },
			["Polutropos|galakras"] = { 1, 6, -60, 704 },
			["Fingerplay|raden"] = { 2, 4, -18, 623 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 506 },
			["Jumpercablez|raden"] = { 3, 2, 22, 669 },
			["Maddlexie|pagle"] = { 3, 2, 14, 670 },
			["Boxershorts|pagle"] = { 0, 4, -13, 524 },
			["Carnilumen|pagle"] = { 0, 4, -31, 704 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 620 },
			["Bobertx|raden"] = { 3, 0, 10, 344 },
			["Ðrizko|raden"] = { 3, 0, 62, 704 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 170 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 704 },
			["Bdx|raden"] = { 2, 0, 2, 164 },
			["Crepes|pagle"] = { 0, 2, -20, 562 },
			["Lockiecan|pagle"] = { 0, 2, 0, 704 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 164 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 228 },
			["Killou|pagle"] = { 1, 0, 3, 704 },
			["Møønzx|galakras"] = { 1, 0, 3, 94 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 195 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 164 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 767 },
			["Radendznuts|raden"] = { 13, 15, 52, 760 },
			["Dohrow|pagle"] = { 9, 17, 19, 587 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 587 },
			["Phöoba|pagle"] = { 9, 17, 15, 587 },
			["Reflex|raden"] = { 13, 10, 351, 588 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 677 },
			["Crepes|pagle"] = { 12, 8, 9, 562 },
			["Guanyîn|raden"] = { 7, 12, -66, 759 },
			["Reckington|raden"] = { 14, 5, -78, 704 },
			["Dabddaddy|raden"] = { 6, 9, -7, 539 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 635 },
			["Møonxz|raden"] = { 5, 8, 35, 1085 },
			["Fabermors|pagle"] = { 3, 9, -35, 524 },
			["Carnilumen|pagle"] = { 3, 8, -35, 704 },
			["Slumpfoo|raden"] = { 8, 3, 32, 478 },
			["Statticw|arugal-au"] = { 8, 3, 48, 516 },
			["Anytips|pagle"] = { 8, 2, 76, 645 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 789 },
			["Sombodee|pagle"] = { 6, 4, 29, 939 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 905 },
			["Ðrizko|raden"] = { 8, 1, 131, 704 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 842 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 734 },
			["Blankisa|raden"] = { 5, 3, 32, 1008 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 765 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 807 },
			["Lockiecan|pagle"] = { 3, 5, 60, 704 },
			["Prettigood|raden"] = { 3, 5, -47, 540 },
			["Rëyy|raden"] = { 3, 5, -24, 750 },
			["Polutropos|galakras"] = { 1, 6, -60, 704 },
			["Tamerak|raden"] = { 5, 2, 26, 792 },
			["Bdx|raden"] = { 6, 0, 19, 164 },
			["Fingerplay|raden"] = { 2, 4, -18, 623 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 506 },
			["Iightz|raden"] = { 1, 4, -46, 797 },
			["Jumpercablez|raden"] = { 3, 2, 22, 669 },
			["Maddlexie|pagle"] = { 3, 2, 14, 670 },
			["Sandbunny|pagle"] = { 4, 1, 8, 764 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 784 },
			["Boxershorts|pagle"] = { 0, 4, -13, 524 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 884 },
			["Glinna|raden"] = { 0, 4, -48, 975 },
			["Heriberto|pagle"] = { 0, 4, -8, 884 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 620 },
			["Xatica|pagle"] = { 2, 2, -7, 1107 },
			["Averthery|pagle"] = { 1, 2, -16, 852 },
			["Bobertx|raden"] = { 3, 0, 10, 344 },
			["Hueland|raden"] = { 1, 2, 0, 1027 },
			["Kamikylol|pagle"] = { 2, 1, 17, 884 },
			["Leddyx|pagle"] = { 1, 2, -23, 1144 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 904 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 170 },
			["Pisch|arugal-au"] = { 2, 1, -4, 884 },
			["Xatyka|pagle"] = { 3, 0, 9, 1085 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 704 },
			["Electabuzz|raden"] = { 1, 1, -4, 962 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 164 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 228 },
			["Drlovee|benediction"] = { 0, 1, 0, 1314 },
			["Emanuely|pagle"] = { 0, 1, -4, 947 },
			["Euspy|raden"] = { 1, 0, 23, 1199 },
			["Ifireinside|pagle"] = { 0, 1, -6, 950 },
			["Killou|pagle"] = { 1, 0, 3, 704 },
			["Lôukî|pagle"] = { 0, 1, -2, 1424 },
			["Møønzx|galakras"] = { 1, 0, 3, 94 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 195 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 164 },
		},
	},
}

