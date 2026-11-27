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
	built = 1795798797,
	builtText = "2026-11-27 12:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Crepes|pagle"] = { 6, 5, 3, 331 },
			["Bobertx|raden"] = { 6, 0, 15, 284 },
			["Pisch|arugal-au"] = { 6, 0, 43, 284 },
			["Vp|immerseus"] = { 0, 6, -8, 287 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Guanyîn|raden"] = { 9, 6, 10, 651 },
			["Radendznuts|raden"] = { 9, 6, 25, 651 },
			["Darkferocity|pagle"] = { 4, 8, 73, 685 },
			["Fctry|raden"] = { 11, 1, 93, 676 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 489 },
			["Mistyxo|raden"] = { 11, 1, 64, 676 },
			["Mòónfirebeam|raden"] = { 10, 2, 40, 485 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 685 },
			["Crepes|pagle"] = { 6, 5, 3, 331 },
			["Vp|immerseus"] = { 1, 9, -12, 287 },
			["Bamboi|pagle"] = { 5, 4, 25, 676 },
			["Horniaf|pagle"] = { 5, 4, 17, 660 },
			["Lockiecan|pagle"] = { 1, 8, 20, 538 },
			["Nivatem|pagle"] = { 2, 6, 1, 464 },
			["Slumpfoo|raden"] = { 2, 5, -18, 469 },
			["Spala|pagle"] = { 4, 3, -18, 464 },
			["Bobertx|raden"] = { 6, 0, 15, 284 },
			["Pisch|arugal-au"] = { 6, 0, 43, 284 },
			["Darknuns|pagle"] = { 2, 3, -19, 644 },
			["Seorigori|pagle"] = { 2, 3, -23, 644 },
			["Statticw|arugal-au"] = { 2, 3, 0, 469 },
			["Reflex|raden"] = { 3, 1, 37, 549 },
			["Bbatta|pagle"] = { 2, 1, 34, 644 },
			["Dat|raden"] = { 1, 2, 19, 502 },
			["Lichkinng|pagle"] = { 1, 2, -4, 562 },
			["Spq|pagle"] = { 0, 3, -39, 511 },
			["Boena|pagle"] = { 0, 2, -19, 645 },
			["Kushgodx|raden"] = { 2, 0, 2, 636 },
			["Lvl|raden"] = { 2, 0, 19, 468 },
			["Smokinweedle|raden"] = { 0, 2, -24, 720 },
			["Statt|arugal-au"] = { 0, 2, -19, 510 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 644 },
			["Youcutebb|raden"] = { 0, 2, -26, 644 },
			["Fabermors|pagle"] = { 0, 1, -11, 644 },
			["Palalazy|pagle"] = { 0, 1, -19, 708 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 635 },
			["Rëyy|raden"] = { 0, 1, -18, 714 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nf|raden"] = { 12, 15, 132, 793 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 485 },
			["Ecafkcufhi|raden"] = { 14, 9, 5, 720 },
			["Tamerak|raden"] = { 18, 3, 123, 882 },
			["Çlix|pagle"] = { 2, 17, -69, 729 },
			["Crepes|pagle"] = { 8, 10, -12, 331 },
			["Bamboi|pagle"] = { 7, 9, -7, 676 },
			["Blankis|raden"] = { 10, 6, 146, 721 },
			["Guanyîn|raden"] = { 9, 7, -5, 651 },
			["Nøved|pagle"] = { 3, 13, -9, 824 },
			["Radendznuts|raden"] = { 9, 7, 12, 651 },
			["Dabddaddy|raden"] = { 7, 6, 29, 847 },
			["Darkferocity|pagle"] = { 4, 8, 73, 685 },
			["Fctry|raden"] = { 11, 1, 93, 676 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 489 },
			["Mistyxo|raden"] = { 11, 1, 64, 676 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 685 },
			["Glinna|raden"] = { 6, 5, 56, 806 },
			["Kushgodx|raden"] = { 8, 3, 27, 636 },
			["Lockiecan|pagle"] = { 1, 10, 20, 538 },
			["Vp|immerseus"] = { 1, 10, -17, 287 },
			["Apechamp|raden"] = { 4, 6, -66, 785 },
			["Horniaf|pagle"] = { 5, 4, 17, 660 },
			["Nivatem|pagle"] = { 2, 6, 1, 464 },
			["Dankenstein|lei-shen"] = { 2, 5, -16, 1340 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 856 },
			["Slumpfoo|raden"] = { 2, 5, -18, 469 },
			["Spala|pagle"] = { 4, 3, -18, 464 },
			["Thespot|pagle"] = { 2, 5, -31, 855 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 735 },
			["Bobertx|raden"] = { 6, 0, 15, 284 },
			["Pisch|arugal-au"] = { 6, 0, 43, 284 },
			["Youcutebb|raden"] = { 0, 6, -54, 644 },
			["Darknuns|pagle"] = { 2, 3, -19, 644 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1050 },
			["Seorigori|pagle"] = { 2, 3, -23, 644 },
			["Statticw|arugal-au"] = { 2, 3, 0, 469 },
			["Xunamated|raden"] = { 2, 3, 27, 920 },
			["Dankorbs|pagle"] = { 0, 4, -38, 1278 },
			["Kxle|raden"] = { 1, 3, -15, 913 },
			["Miposhká|raden"] = { 4, 0, 17, 1004 },
			["Reflex|raden"] = { 3, 1, 37, 549 },
			["Retmainxd|raden"] = { 0, 4, -38, 1279 },
			["ßxß|raden"] = { 4, 0, 39, 1004 },
			["Whhïte|raden"] = { 1, 3, 20, 824 },
			["Bbatta|pagle"] = { 2, 1, 34, 644 },
			["Dat|raden"] = { 1, 2, 19, 502 },
			["Hueland|raden"] = { 0, 3, -9, 1241 },
			["Lichkinng|pagle"] = { 1, 2, -4, 562 },
			["Lvl|raden"] = { 3, 0, 23, 468 },
			["Moneymay|pagle"] = { 1, 2, -11, 753 },
			["Nikotina|galakras"] = { 0, 3, 0, 1104 },
			["Pinguisulina|galakras"] = { 0, 3, 0, 1097 },
			["Prettigood|raden"] = { 3, 0, 10, 1010 },
			["Sponsor|raden"] = { 0, 3, -27, 1026 },
			["Spq|pagle"] = { 0, 3, -39, 511 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1012 },
			["Tharealnerds|pagle"] = { 0, 3, -35, 727 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 824 },
			["Boena|pagle"] = { 0, 2, -19, 645 },
			["Donceno|nazgrim"] = { 0, 2, -12, 771 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1021 },
			["Smokinweedle|raden"] = { 0, 2, -24, 720 },
			["Statt|arugal-au"] = { 0, 2, -19, 510 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 644 },
			["Carnilumen|pagle"] = { 0, 1, -2, 1184 },
			["Fabermors|pagle"] = { 0, 1, -11, 644 },
			["Nilio|raden"] = { 0, 1, -2, 1399 },
			["Palalazy|pagle"] = { 0, 1, -19, 708 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 635 },
			["Rëyy|raden"] = { 0, 1, -18, 714 },
			["Sombodee|pagle"] = { 1, 0, 18, 1424 },
			["Soulreap|raden"] = { 1, 0, 14, 905 },
			["Theweave|raden"] = { 0, 1, -8, 1013 },
			["Wowamazingcc|raden"] = { 1, 0, 16, 1425 },
		},
	},
}

