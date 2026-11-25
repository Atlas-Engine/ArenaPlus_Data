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
	built = 1795626002,
	builtText = "2026-11-25 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 1, 0, 3, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bdx|raden"] = { 2, 0, 2, 104 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 104 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 168 },
			["Møønzx|galakras"] = { 1, 0, 3, 34 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 110 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 135 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bdx|raden"] = { 2, 0, 2, 104 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 104 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 168 },
			["Bobertx|raden"] = { 1, 0, 6, 284 },
			["Møønzx|galakras"] = { 1, 0, 3, 34 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 110 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 135 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 104 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dohrow|pagle"] = { 9, 17, 19, 527 },
			["Phöoba|pagle"] = { 9, 17, 15, 527 },
			["Reflex|raden"] = { 13, 10, 351, 528 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 617 },
			["Reckington|raden"] = { 13, 3, -45, 644 },
			["Nebuboom|nazgrim"] = { 9, 6, 1, 528 },
			["Dabddaddy|raden"] = { 5, 9, -13, 479 },
			["Guanyîn|raden"] = { 5, 9, -54, 699 },
			["Radendznuts|raden"] = { 5, 9, 9, 700 },
			["Nazmirr|pagle"] = { 4, 9, 37, 707 },
			["Slumpfoo|raden"] = { 8, 3, 32, 419 },
			["Statticw|arugal-au"] = { 8, 3, 48, 456 },
			["Anytips|pagle"] = { 8, 2, 76, 585 },
			["Fabermors|pagle"] = { 3, 7, -16, 464 },
			["Weknwdatruth|pagle"] = { 8, 2, 81, 575 },
			["Prettigood|raden"] = { 3, 5, -47, 480 },
			["Rëyy|raden"] = { 3, 5, -24, 690 },
			["Polutropos|galakras"] = { 1, 6, -60, 644 },
			["Fingerplay|raden"] = { 2, 4, -18, 563 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 446 },
			["Bluntsntits|pagle"] = { 4, 1, 14, 705 },
			["Jumpercablez|raden"] = { 3, 2, 22, 609 },
			["Maddlexie|pagle"] = { 3, 2, 14, 610 },
			["Sandbunny|pagle"] = { 4, 1, 8, 704 },
			["Xntrixxz|arugal-au"] = { 5, 0, 0, 674 },
			["Boxershorts|pagle"] = { 0, 4, -13, 464 },
			["Carnilumen|pagle"] = { 0, 4, -31, 644 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 560 },
			["Bobertx|raden"] = { 3, 0, 10, 284 },
			["Ðrizko|raden"] = { 3, 0, 62, 644 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 110 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 644 },
			["Bdx|raden"] = { 2, 0, 2, 104 },
			["Crepes|pagle"] = { 0, 2, -20, 502 },
			["Lockiecan|pagle"] = { 0, 2, 0, 644 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 104 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 168 },
			["Killou|pagle"] = { 1, 0, 3, 644 },
			["Møønzx|galakras"] = { 1, 0, 3, 34 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 135 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 104 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 707 },
			["Radendznuts|raden"] = { 13, 15, 52, 700 },
			["Dohrow|pagle"] = { 9, 17, 19, 527 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 528 },
			["Phöoba|pagle"] = { 9, 17, 15, 527 },
			["Reflex|raden"] = { 13, 10, 351, 528 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 617 },
			["Crepes|pagle"] = { 12, 8, 9, 502 },
			["Guanyîn|raden"] = { 7, 12, -66, 699 },
			["Reckington|raden"] = { 14, 5, -78, 644 },
			["Dabddaddy|raden"] = { 6, 9, -7, 479 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 575 },
			["Møonxz|raden"] = { 5, 8, 35, 1025 },
			["Fabermors|pagle"] = { 3, 9, -35, 464 },
			["Carnilumen|pagle"] = { 3, 8, -35, 644 },
			["Slumpfoo|raden"] = { 8, 3, 32, 419 },
			["Statticw|arugal-au"] = { 8, 3, 48, 456 },
			["Anytips|pagle"] = { 8, 2, 76, 585 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 729 },
			["Sombodee|pagle"] = { 6, 4, 29, 879 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 845 },
			["Ðrizko|raden"] = { 8, 1, 131, 644 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 783 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 674 },
			["Blankisa|raden"] = { 5, 3, 32, 948 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 705 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 747 },
			["Lockiecan|pagle"] = { 3, 5, 60, 644 },
			["Prettigood|raden"] = { 3, 5, -47, 480 },
			["Rëyy|raden"] = { 3, 5, -24, 690 },
			["Polutropos|galakras"] = { 1, 6, -60, 644 },
			["Tamerak|raden"] = { 5, 2, 26, 732 },
			["Bdx|raden"] = { 6, 0, 19, 104 },
			["Fingerplay|raden"] = { 2, 4, -18, 563 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 446 },
			["Iightz|raden"] = { 1, 4, -46, 737 },
			["Jumpercablez|raden"] = { 3, 2, 22, 609 },
			["Maddlexie|pagle"] = { 3, 2, 14, 610 },
			["Sandbunny|pagle"] = { 4, 1, 8, 704 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 724 },
			["Boxershorts|pagle"] = { 0, 4, -13, 464 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 824 },
			["Glinna|raden"] = { 0, 4, -48, 915 },
			["Heriberto|pagle"] = { 0, 4, -8, 824 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 560 },
			["Xatica|pagle"] = { 2, 2, -7, 1047 },
			["Averthery|pagle"] = { 1, 2, -16, 792 },
			["Bobertx|raden"] = { 3, 0, 10, 284 },
			["Hueland|raden"] = { 1, 2, 0, 967 },
			["Kamikylol|pagle"] = { 2, 1, 17, 824 },
			["Leddyx|pagle"] = { 1, 2, -23, 1084 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 844 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 110 },
			["Pisch|arugal-au"] = { 2, 1, -4, 824 },
			["Xatyka|pagle"] = { 3, 0, 9, 1025 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 644 },
			["Electabuzz|raden"] = { 1, 1, -4, 902 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 104 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 168 },
			["Drlovee|benediction"] = { 0, 1, 0, 1254 },
			["Emanuely|pagle"] = { 0, 1, -4, 887 },
			["Euspy|raden"] = { 1, 0, 23, 1140 },
			["Ifireinside|pagle"] = { 0, 1, -6, 890 },
			["Killou|pagle"] = { 1, 0, 3, 644 },
			["Lôukî|pagle"] = { 0, 1, -2, 1364 },
			["Møønzx|galakras"] = { 1, 0, 3, 34 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 135 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 104 },
		},
	},
}

