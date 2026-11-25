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
	built = 1795633192,
	builtText = "2026-11-25 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bouddha|raden"] = { 2, 0, 15, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bouddha|raden"] = { 2, 0, 15, 44 },
			["Møønzx|galakras"] = { 1, 0, 3, 153 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bdx|raden"] = { 2, 0, 2, 224 },
			["Bouddha|raden"] = { 2, 0, 15, 44 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 224 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 288 },
			["Møønzx|galakras"] = { 1, 0, 3, 153 },
			["Pinkisntwell|immerseus"] = { 0, 1, -3, 230 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 255 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 224 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Reflex|raden"] = { 10, 8, 212, 648 },
			["Nebuboom|nazgrim"] = { 9, 6, 1, 647 },
			["Dabddaddy|raden"] = { 5, 9, -13, 599 },
			["Dohrow|pagle"] = { 5, 9, 10, 647 },
			["Phöoba|pagle"] = { 5, 9, 10, 647 },
			["Slumpfoo|raden"] = { 8, 3, 32, 538 },
			["Statticw|arugal-au"] = { 8, 3, 48, 576 },
			["Prettigood|raden"] = { 3, 5, -47, 600 },
			["Fabermors|pagle"] = { 2, 4, -12, 584 },
			["Fingerplay|raden"] = { 2, 4, -18, 683 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 566 },
			["Anytips|pagle"] = { 4, 1, 34, 705 },
			["Weknwdatruth|pagle"] = { 4, 1, 36, 695 },
			["Boxershorts|pagle"] = { 0, 4, -13, 584 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 680 },
			["Bobertx|raden"] = { 3, 0, 10, 404 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 230 },
			["Bdx|raden"] = { 2, 0, 2, 224 },
			["Bouddha|raden"] = { 2, 0, 15, 44 },
			["Crepes|pagle"] = { 0, 2, -20, 622 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 224 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 288 },
			["Møønzx|galakras"] = { 1, 0, 3, 153 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 255 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 224 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nazmirr|pagle"] = { 11, 24, 24, 827 },
			["Radendznuts|raden"] = { 13, 15, 52, 820 },
			["Dohrow|pagle"] = { 9, 17, 19, 647 },
			["Nebuboom|nazgrim"] = { 14, 12, -3, 647 },
			["Phöoba|pagle"] = { 9, 17, 15, 647 },
			["Reflex|raden"] = { 13, 10, 351, 648 },
			["Questopresto|nazgrim"] = { 10, 11, -12, 737 },
			["Crepes|pagle"] = { 12, 8, 9, 622 },
			["Guanyîn|raden"] = { 7, 12, -66, 819 },
			["Reckington|raden"] = { 14, 5, -78, 764 },
			["Dabddaddy|raden"] = { 5, 9, -13, 599 },
			["Weknwdatruth|pagle"] = { 12, 2, 127, 695 },
			["Møonxz|raden"] = { 5, 8, 35, 1145 },
			["Fabermors|pagle"] = { 3, 9, -35, 584 },
			["Slumpfoo|raden"] = { 8, 3, 32, 538 },
			["Statticw|arugal-au"] = { 8, 3, 48, 576 },
			["Anytips|pagle"] = { 8, 2, 76, 705 },
			["Carnilumen|pagle"] = { 3, 7, -29, 764 },
			["Chiokeme|arugal-au"] = { 8, 2, 38, 849 },
			["Sombodee|pagle"] = { 6, 4, 29, 999 },
			["Tharealnerds|pagle"] = { 7, 3, 26, 965 },
			["Ðrizko|raden"] = { 8, 1, 131, 764 },
			["Ðßøzxs|raden"] = { 8, 1, 131, 902 },
			["Xntrixxz|arugal-au"] = { 6, 3, -45, 794 },
			["Blankisa|raden"] = { 5, 3, 32, 1067 },
			["Bluntsntits|pagle"] = { 5, 3, 8, 825 },
			["Dankenstein|lei-shen"] = { 5, 3, 21, 867 },
			["Lockiecan|pagle"] = { 3, 5, 60, 764 },
			["Prettigood|raden"] = { 3, 5, -47, 600 },
			["Rëyy|raden"] = { 3, 5, -24, 810 },
			["Polutropos|galakras"] = { 1, 6, -60, 764 },
			["Tamerak|raden"] = { 5, 2, 26, 852 },
			["Bdx|raden"] = { 6, 0, 19, 224 },
			["Fingerplay|raden"] = { 2, 4, -18, 683 },
			["Xntrixxs|arugal-au"] = { 6, 0, 14, 566 },
			["Iightz|raden"] = { 1, 4, -46, 857 },
			["Jumpercablez|raden"] = { 3, 2, 22, 729 },
			["Maddlexie|pagle"] = { 3, 2, 14, 730 },
			["Sandbunny|pagle"] = { 4, 1, 8, 824 },
			["Trojanbubble|pagle"] = { 5, 0, 14, 844 },
			["Boxershorts|pagle"] = { 0, 4, -13, 584 },
			["Darkdeamon|pagle"] = { 0, 4, -14, 944 },
			["Glinna|raden"] = { 0, 4, -48, 1035 },
			["Heriberto|pagle"] = { 0, 4, -8, 944 },
			["Mòónfirebeam|raden"] = { 0, 4, -66, 680 },
			["Xatica|pagle"] = { 2, 2, -7, 1167 },
			["Averthery|pagle"] = { 1, 2, -16, 912 },
			["Bobertx|raden"] = { 3, 0, 10, 404 },
			["Hueland|raden"] = { 1, 2, 0, 1087 },
			["Kamikylol|pagle"] = { 2, 1, 17, 944 },
			["Leddyx|pagle"] = { 1, 2, -23, 1204 },
			["Ohmsnothing|galakras"] = { 1, 2, 20, 964 },
			["Pinkisntwell|immerseus"] = { 0, 3, -22, 230 },
			["Pisch|arugal-au"] = { 2, 1, -4, 944 },
			["Xatyka|pagle"] = { 3, 0, 9, 1145 },
			["Annoyinghunt|immerseus"] = { 0, 2, -6, 764 },
			["Bouddha|raden"] = { 2, 0, 15, 44 },
			["Electabuzz|raden"] = { 1, 1, -4, 1022 },
			["Lunchmeat|nazgrim"] = { 0, 2, -2, 224 },
			["Poizøønzx|galakras"] = { 2, 0, 4, 288 },
			["Drlovee|benediction"] = { 0, 1, 0, 1374 },
			["Emanuely|pagle"] = { 0, 1, -4, 1007 },
			["Euspy|raden"] = { 1, 0, 23, 1259 },
			["Ifireinside|pagle"] = { 0, 1, -6, 1010 },
			["Killou|pagle"] = { 1, 0, 3, 764 },
			["Møønzx|galakras"] = { 1, 0, 3, 153 },
			["Skeletonzx|galakras"] = { 1, 0, 3, 255 },
			["Urukghâshob|immerseus"] = { 0, 1, -2, 224 },
		},
	},
}

