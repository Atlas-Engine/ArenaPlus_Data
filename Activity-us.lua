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
	built = 1795809590,
	builtText = "2026-11-27 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 55 },
			["Dankenshroom|lei-shen"] = { 0, 1, -3, 20 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 20 },
			["Tamerak|raden"] = { 1, 2, -12, 74 },
			["Kxle|raden"] = { 1, 1, 0, 71 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 55 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 20 },
			["Tamerak|raden"] = { 1, 2, -12, 74 },
			["Kxle|raden"] = { 1, 1, 0, 71 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 55 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 104 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Inkárri|arugal-au"] = { 10, 2, 90, 669 },
			["Mòónfirebeam|raden"] = { 10, 2, 40, 665 },
			["Crepes|pagle"] = { 6, 5, 3, 510 },
			["Vp|immerseus"] = { 1, 8, 1, 467 },
			["Nivatem|pagle"] = { 2, 6, 1, 644 },
			["Slumpfoo|raden"] = { 2, 5, -18, 649 },
			["Spala|pagle"] = { 4, 3, -18, 644 },
			["Bobertx|raden"] = { 6, 0, 15, 464 },
			["Pisch|arugal-au"] = { 6, 0, 43, 464 },
			["Statticw|arugal-au"] = { 2, 3, 0, 649 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 20 },
			["Spq|pagle"] = { 0, 3, -39, 691 },
			["Tamerak|raden"] = { 1, 2, -12, 74 },
			["Dat|raden"] = { 1, 1, 19, 682 },
			["Kxle|raden"] = { 1, 1, 0, 71 },
			["Lvl|raden"] = { 2, 0, 19, 648 },
			["Statt|arugal-au"] = { 0, 2, -19, 690 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 55 },
			["Lockiecan|pagle"] = { 0, 1, 0, 718 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 104 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nf|raden"] = { 12, 15, 132, 973 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 665 },
			["Ecafkcufhi|raden"] = { 14, 9, 5, 900 },
			["Çlix|pagle"] = { 2, 17, -69, 908 },
			["Tamerak|raden"] = { 14, 5, 64, 74 },
			["Bamboi|pagle"] = { 7, 9, -7, 856 },
			["Blankis|raden"] = { 10, 6, 146, 901 },
			["Guanyîn|raden"] = { 9, 7, -5, 831 },
			["Nøved|pagle"] = { 3, 13, -9, 1004 },
			["Radendznuts|raden"] = { 9, 7, 12, 831 },
			["Dabddaddy|raden"] = { 7, 6, 29, 1027 },
			["Darkferocity|pagle"] = { 4, 8, 73, 865 },
			["Fctry|raden"] = { 11, 1, 93, 856 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 669 },
			["Mistyxo|raden"] = { 11, 1, 64, 856 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 865 },
			["Crepes|pagle"] = { 6, 5, 3, 510 },
			["Kushgodx|raden"] = { 8, 3, 27, 815 },
			["Lockiecan|pagle"] = { 1, 10, 20, 718 },
			["Vp|immerseus"] = { 1, 10, -17, 467 },
			["Apechamp|raden"] = { 4, 6, -66, 965 },
			["Glinna|raden"] = { 6, 4, 64, 985 },
			["Horniaf|pagle"] = { 5, 4, 17, 840 },
			["Nivatem|pagle"] = { 2, 6, 1, 644 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 1036 },
			["Slumpfoo|raden"] = { 2, 5, -18, 649 },
			["Spala|pagle"] = { 4, 3, -18, 644 },
			["Thespot|pagle"] = { 2, 5, -31, 1035 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 915 },
			["Bobertx|raden"] = { 6, 0, 15, 464 },
			["Kxle|raden"] = { 2, 4, -15, 71 },
			["Pisch|arugal-au"] = { 6, 0, 43, 464 },
			["Youcutebb|raden"] = { 0, 6, -54, 824 },
			["Darknuns|pagle"] = { 2, 3, -19, 824 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1229 },
			["Seorigori|pagle"] = { 2, 3, -23, 824 },
			["Statticw|arugal-au"] = { 2, 3, 0, 649 },
			["Xunamated|raden"] = { 2, 3, 27, 1100 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 20 },
			["Miposhká|raden"] = { 4, 0, 17, 1184 },
			["Reflex|raden"] = { 3, 1, 37, 728 },
			["ßxß|raden"] = { 4, 0, 39, 1184 },
			["Tharealnerds|pagle"] = { 0, 4, -38, 104 },
			["Whhïte|raden"] = { 1, 3, 20, 1004 },
			["Bbatta|pagle"] = { 2, 1, 34, 824 },
			["Dat|raden"] = { 1, 2, 19, 682 },
			["Hueland|raden"] = { 0, 3, -9, 1421 },
			["Lichkinng|pagle"] = { 1, 2, -4, 742 },
			["Lvl|raden"] = { 3, 0, 23, 648 },
			["Moneymay|pagle"] = { 1, 2, -11, 933 },
			["Nikotina|galakras"] = { 0, 3, 0, 1283 },
			["Pinguisulina|galakras"] = { 0, 3, 0, 1276 },
			["Prettigood|raden"] = { 3, 0, 10, 1189 },
			["Sponsor|raden"] = { 0, 3, -27, 1206 },
			["Spq|pagle"] = { 0, 3, -39, 691 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1192 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 1004 },
			["Boena|pagle"] = { 0, 2, -19, 825 },
			["Donceno|nazgrim"] = { 0, 2, -12, 950 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1201 },
			["Smokinweedle|raden"] = { 0, 2, -24, 900 },
			["Statt|arugal-au"] = { 0, 2, -19, 690 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 824 },
			["Carnilumen|pagle"] = { 0, 1, -2, 1364 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 55 },
			["Fabermors|pagle"] = { 0, 1, -11, 824 },
			["Palalazy|pagle"] = { 0, 1, -19, 888 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 815 },
			["Rëyy|raden"] = { 0, 1, -18, 894 },
			["Soulreap|raden"] = { 1, 0, 14, 1085 },
			["Theweave|raden"] = { 0, 1, -8, 1193 },
		},
	},
}

