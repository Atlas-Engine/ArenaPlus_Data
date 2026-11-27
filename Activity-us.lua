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
	built = 1795813195,
	builtText = "2026-11-27 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tamerak|raden"] = { 2, 5, -30, 15 },
			["Zappytits|galakras"] = { 0, 1, -6, 5 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tamerak|raden"] = { 3, 7, -42, 15 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 80 },
			["Kxle|raden"] = { 1, 1, 0, 131 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 115 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 164 },
			["Zappytits|galakras"] = { 0, 1, -6, 5 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tamerak|raden"] = { 3, 7, -42, 15 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 80 },
			["Kxle|raden"] = { 1, 1, 0, 131 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 115 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 164 },
			["Zappytits|galakras"] = { 0, 1, -6, 5 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crepes|pagle"] = { 6, 5, 3, 570 },
			["Tamerak|raden"] = { 3, 7, -42, 15 },
			["Nivatem|pagle"] = { 2, 6, 1, 704 },
			["Slumpfoo|raden"] = { 2, 5, -18, 709 },
			["Spala|pagle"] = { 4, 3, -18, 704 },
			["Bobertx|raden"] = { 6, 0, 15, 524 },
			["Pisch|arugal-au"] = { 6, 0, 43, 524 },
			["Vp|immerseus"] = { 0, 6, -8, 527 },
			["Statticw|arugal-au"] = { 2, 3, 0, 709 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 80 },
			["Kxle|raden"] = { 1, 1, 0, 131 },
			["Lvl|raden"] = { 2, 0, 19, 708 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 115 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 164 },
			["Zappytits|galakras"] = { 0, 1, -6, 5 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nf|raden"] = { 12, 15, 132, 1033 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 725 },
			["Ecafkcufhi|raden"] = { 14, 9, 5, 960 },
			["Çlix|pagle"] = { 2, 17, -69, 969 },
			["Tamerak|raden"] = { 8, 10, -29, 15 },
			["Bamboi|pagle"] = { 7, 9, -7, 916 },
			["Blankis|raden"] = { 10, 6, 146, 961 },
			["Guanyîn|raden"] = { 9, 7, -5, 891 },
			["Nøved|pagle"] = { 3, 13, -9, 1064 },
			["Radendznuts|raden"] = { 9, 7, 12, 891 },
			["Dabddaddy|raden"] = { 7, 6, 29, 1087 },
			["Darkferocity|pagle"] = { 4, 8, 73, 925 },
			["Fctry|raden"] = { 11, 1, 93, 916 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 729 },
			["Mistyxo|raden"] = { 11, 1, 64, 916 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 925 },
			["Crepes|pagle"] = { 6, 5, 3, 570 },
			["Kushgodx|raden"] = { 8, 3, 27, 875 },
			["Lockiecan|pagle"] = { 1, 10, 20, 778 },
			["Vp|immerseus"] = { 1, 10, -17, 527 },
			["Apechamp|raden"] = { 4, 6, -66, 1025 },
			["Glinna|raden"] = { 6, 4, 64, 1046 },
			["Horniaf|pagle"] = { 5, 4, 17, 900 },
			["Nivatem|pagle"] = { 2, 6, 1, 704 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 1096 },
			["Slumpfoo|raden"] = { 2, 5, -18, 709 },
			["Spala|pagle"] = { 4, 3, -18, 704 },
			["Thespot|pagle"] = { 2, 5, -31, 1095 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 975 },
			["Bobertx|raden"] = { 6, 0, 15, 524 },
			["Kxle|raden"] = { 2, 4, -15, 131 },
			["Pisch|arugal-au"] = { 6, 0, 43, 524 },
			["Youcutebb|raden"] = { 0, 6, -54, 884 },
			["Darknuns|pagle"] = { 2, 3, -19, 884 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1290 },
			["Seorigori|pagle"] = { 2, 3, -23, 884 },
			["Statticw|arugal-au"] = { 2, 3, 0, 709 },
			["Xunamated|raden"] = { 2, 3, 27, 1160 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 80 },
			["Miposhká|raden"] = { 4, 0, 17, 1244 },
			["Reflex|raden"] = { 3, 1, 37, 789 },
			["ßxß|raden"] = { 4, 0, 39, 1244 },
			["Tharealnerds|pagle"] = { 0, 4, -38, 164 },
			["Whhïte|raden"] = { 1, 3, 20, 1064 },
			["Bbatta|pagle"] = { 2, 1, 34, 884 },
			["Dat|raden"] = { 1, 2, 19, 742 },
			["Lichkinng|pagle"] = { 1, 2, -4, 802 },
			["Lvl|raden"] = { 3, 0, 23, 708 },
			["Moneymay|pagle"] = { 1, 2, -11, 993 },
			["Nikotina|galakras"] = { 0, 3, 0, 1344 },
			["Pinguisulina|galakras"] = { 0, 3, 0, 1336 },
			["Prettigood|raden"] = { 3, 0, 10, 1250 },
			["Sponsor|raden"] = { 0, 3, -27, 1266 },
			["Spq|pagle"] = { 0, 3, -39, 751 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1252 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 1064 },
			["Boena|pagle"] = { 0, 2, -19, 885 },
			["Donceno|nazgrim"] = { 0, 2, -12, 1011 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1261 },
			["Smokinweedle|raden"] = { 0, 2, -24, 960 },
			["Statt|arugal-au"] = { 0, 2, -19, 750 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 884 },
			["Carnilumen|pagle"] = { 0, 1, -2, 1424 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 115 },
			["Fabermors|pagle"] = { 0, 1, -11, 884 },
			["Palalazy|pagle"] = { 0, 1, -19, 948 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 875 },
			["Rëyy|raden"] = { 0, 1, -18, 954 },
			["Soulreap|raden"] = { 1, 0, 14, 1145 },
			["Theweave|raden"] = { 0, 1, -8, 1253 },
			["Zappytits|galakras"] = { 0, 1, -6, 5 },
		},
	},
}

