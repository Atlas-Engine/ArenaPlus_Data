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
	built = 1795802388,
	builtText = "2026-11-27 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bobertx|raden"] = { 6, 0, 15, 344 },
			["Pisch|arugal-au"] = { 6, 0, 43, 344 },
			["Vp|immerseus"] = { 0, 6, -8, 346 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Guanyîn|raden"] = { 9, 6, 10, 711 },
			["Radendznuts|raden"] = { 9, 6, 25, 711 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 549 },
			["Mòónfirebeam|raden"] = { 10, 2, 40, 545 },
			["Crepes|pagle"] = { 6, 5, 3, 390 },
			["Lockiecan|pagle"] = { 1, 8, 20, 598 },
			["Vp|immerseus"] = { 1, 8, 1, 346 },
			["Nivatem|pagle"] = { 2, 6, 1, 524 },
			["Slumpfoo|raden"] = { 2, 5, -18, 529 },
			["Spala|pagle"] = { 4, 3, -18, 524 },
			["Bobertx|raden"] = { 6, 0, 15, 344 },
			["Pisch|arugal-au"] = { 6, 0, 43, 344 },
			["Darknuns|pagle"] = { 2, 3, -19, 704 },
			["Seorigori|pagle"] = { 2, 3, -23, 704 },
			["Statticw|arugal-au"] = { 2, 3, 0, 529 },
			["Reflex|raden"] = { 3, 1, 37, 608 },
			["Bbatta|pagle"] = { 2, 1, 34, 704 },
			["Dat|raden"] = { 1, 2, 19, 562 },
			["Lichkinng|pagle"] = { 1, 2, -4, 622 },
			["Spq|pagle"] = { 0, 3, -39, 571 },
			["Boena|pagle"] = { 0, 2, -19, 705 },
			["Kushgodx|raden"] = { 2, 0, 2, 695 },
			["Lvl|raden"] = { 2, 0, 19, 528 },
			["Statt|arugal-au"] = { 0, 2, -19, 570 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 704 },
			["Youcutebb|raden"] = { 0, 2, -26, 704 },
			["Fabermors|pagle"] = { 0, 1, -11, 704 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 695 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nf|raden"] = { 12, 15, 132, 853 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 545 },
			["Ecafkcufhi|raden"] = { 14, 9, 5, 780 },
			["Tamerak|raden"] = { 18, 3, 123, 941 },
			["Çlix|pagle"] = { 2, 17, -69, 788 },
			["Crepes|pagle"] = { 8, 10, -12, 390 },
			["Bamboi|pagle"] = { 7, 9, -7, 735 },
			["Blankis|raden"] = { 10, 6, 146, 781 },
			["Guanyîn|raden"] = { 9, 7, -5, 711 },
			["Nøved|pagle"] = { 3, 13, -9, 884 },
			["Radendznuts|raden"] = { 9, 7, 12, 711 },
			["Dabddaddy|raden"] = { 7, 6, 29, 907 },
			["Darkferocity|pagle"] = { 4, 8, 73, 745 },
			["Fctry|raden"] = { 11, 1, 93, 736 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 549 },
			["Mistyxo|raden"] = { 11, 1, 64, 736 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 745 },
			["Glinna|raden"] = { 6, 5, 56, 865 },
			["Kushgodx|raden"] = { 8, 3, 27, 695 },
			["Lockiecan|pagle"] = { 1, 10, 20, 598 },
			["Vp|immerseus"] = { 1, 10, -17, 346 },
			["Apechamp|raden"] = { 4, 6, -66, 845 },
			["Horniaf|pagle"] = { 5, 4, 17, 720 },
			["Nivatem|pagle"] = { 2, 6, 1, 524 },
			["Dankenstein|lei-shen"] = { 2, 5, -16, 1400 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 916 },
			["Slumpfoo|raden"] = { 2, 5, -18, 529 },
			["Spala|pagle"] = { 4, 3, -18, 524 },
			["Thespot|pagle"] = { 2, 5, -31, 915 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 795 },
			["Bobertx|raden"] = { 6, 0, 15, 344 },
			["Pisch|arugal-au"] = { 6, 0, 43, 344 },
			["Youcutebb|raden"] = { 0, 6, -54, 704 },
			["Darknuns|pagle"] = { 2, 3, -19, 704 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1109 },
			["Seorigori|pagle"] = { 2, 3, -23, 704 },
			["Statticw|arugal-au"] = { 2, 3, 0, 529 },
			["Xunamated|raden"] = { 2, 3, 27, 980 },
			["Dankorbs|pagle"] = { 0, 4, -38, 1338 },
			["Kxle|raden"] = { 1, 3, -15, 973 },
			["Miposhká|raden"] = { 4, 0, 17, 1064 },
			["Reflex|raden"] = { 3, 1, 37, 608 },
			["Retmainxd|raden"] = { 0, 4, -38, 1338 },
			["ßxß|raden"] = { 4, 0, 39, 1064 },
			["Whhïte|raden"] = { 1, 3, 20, 884 },
			["Bbatta|pagle"] = { 2, 1, 34, 704 },
			["Dat|raden"] = { 1, 2, 19, 562 },
			["Hueland|raden"] = { 0, 3, -9, 1301 },
			["Lichkinng|pagle"] = { 1, 2, -4, 622 },
			["Lvl|raden"] = { 3, 0, 23, 528 },
			["Moneymay|pagle"] = { 1, 2, -11, 813 },
			["Nikotina|galakras"] = { 0, 3, 0, 1163 },
			["Pinguisulina|galakras"] = { 0, 3, 0, 1156 },
			["Prettigood|raden"] = { 3, 0, 10, 1069 },
			["Sponsor|raden"] = { 0, 3, -27, 1086 },
			["Spq|pagle"] = { 0, 3, -39, 571 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1072 },
			["Tharealnerds|pagle"] = { 0, 3, -35, 787 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 884 },
			["Boena|pagle"] = { 0, 2, -19, 705 },
			["Donceno|nazgrim"] = { 0, 2, -12, 830 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1081 },
			["Smokinweedle|raden"] = { 0, 2, -24, 780 },
			["Statt|arugal-au"] = { 0, 2, -19, 570 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 704 },
			["Carnilumen|pagle"] = { 0, 1, -2, 1244 },
			["Fabermors|pagle"] = { 0, 1, -11, 704 },
			["Palalazy|pagle"] = { 0, 1, -19, 767 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 695 },
			["Rëyy|raden"] = { 0, 1, -18, 774 },
			["Soulreap|raden"] = { 1, 0, 14, 965 },
			["Theweave|raden"] = { 0, 1, -8, 1073 },
		},
	},
}

