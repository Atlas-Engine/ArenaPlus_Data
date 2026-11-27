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
	built = 1795805991,
	builtText = "2026-11-27 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dankenshroom|lei-shen"] = { 0, 3, -5, 22 },
			["Tamerak|raden"] = { 1, 2, -12, 14 },
			["Kxle|raden"] = { 1, 1, 0, 11 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dankenshroom|lei-shen"] = { 0, 3, -5, 22 },
			["Tamerak|raden"] = { 1, 2, -12, 14 },
			["Kxle|raden"] = { 1, 1, 0, 11 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 44 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dankenshroom|lei-shen"] = { 0, 3, -5, 22 },
			["Tamerak|raden"] = { 1, 2, -12, 14 },
			["Kxle|raden"] = { 1, 1, 0, 11 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 44 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Inkárri|arugal-au"] = { 10, 2, 90, 609 },
			["Mòónfirebeam|raden"] = { 10, 2, 40, 605 },
			["Crepes|pagle"] = { 6, 5, 3, 450 },
			["Vp|immerseus"] = { 1, 8, 1, 407 },
			["Nivatem|pagle"] = { 2, 6, 1, 584 },
			["Slumpfoo|raden"] = { 2, 5, -18, 589 },
			["Spala|pagle"] = { 4, 3, -18, 584 },
			["Bobertx|raden"] = { 6, 0, 15, 404 },
			["Pisch|arugal-au"] = { 6, 0, 43, 404 },
			["Statticw|arugal-au"] = { 2, 3, 0, 589 },
			["Reflex|raden"] = { 3, 1, 37, 668 },
			["Dankenshroom|lei-shen"] = { 0, 3, -5, 22 },
			["Dat|raden"] = { 1, 2, 19, 622 },
			["Lichkinng|pagle"] = { 1, 2, -4, 682 },
			["Spq|pagle"] = { 0, 3, -39, 631 },
			["Tamerak|raden"] = { 1, 2, -12, 14 },
			["Kxle|raden"] = { 1, 1, 0, 11 },
			["Lvl|raden"] = { 2, 0, 19, 588 },
			["Statt|arugal-au"] = { 0, 2, -19, 630 },
			["Lockiecan|pagle"] = { 0, 1, 0, 658 },
			["Tharealnerds|pagle"] = { 0, 1, -3, 44 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nf|raden"] = { 12, 15, 132, 913 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 605 },
			["Ecafkcufhi|raden"] = { 14, 9, 5, 840 },
			["Çlix|pagle"] = { 2, 17, -69, 848 },
			["Tamerak|raden"] = { 14, 5, 64, 14 },
			["Bamboi|pagle"] = { 7, 9, -7, 796 },
			["Blankis|raden"] = { 10, 6, 146, 841 },
			["Guanyîn|raden"] = { 9, 7, -5, 771 },
			["Nøved|pagle"] = { 3, 13, -9, 944 },
			["Radendznuts|raden"] = { 9, 7, 12, 771 },
			["Dabddaddy|raden"] = { 7, 6, 29, 967 },
			["Darkferocity|pagle"] = { 4, 8, 73, 805 },
			["Fctry|raden"] = { 11, 1, 93, 796 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 609 },
			["Mistyxo|raden"] = { 11, 1, 64, 796 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 805 },
			["Crepes|pagle"] = { 6, 5, 3, 450 },
			["Kushgodx|raden"] = { 8, 3, 27, 755 },
			["Lockiecan|pagle"] = { 1, 10, 20, 658 },
			["Vp|immerseus"] = { 1, 10, -17, 407 },
			["Apechamp|raden"] = { 4, 6, -66, 905 },
			["Glinna|raden"] = { 6, 4, 64, 925 },
			["Horniaf|pagle"] = { 5, 4, 17, 780 },
			["Nivatem|pagle"] = { 2, 6, 1, 584 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 976 },
			["Slumpfoo|raden"] = { 2, 5, -18, 589 },
			["Spala|pagle"] = { 4, 3, -18, 584 },
			["Thespot|pagle"] = { 2, 5, -31, 975 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 855 },
			["Bobertx|raden"] = { 6, 0, 15, 404 },
			["Kxle|raden"] = { 2, 4, -15, 11 },
			["Pisch|arugal-au"] = { 6, 0, 43, 404 },
			["Youcutebb|raden"] = { 0, 6, -54, 764 },
			["Darknuns|pagle"] = { 2, 3, -19, 764 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1169 },
			["Seorigori|pagle"] = { 2, 3, -23, 764 },
			["Statticw|arugal-au"] = { 2, 3, 0, 589 },
			["Xunamated|raden"] = { 2, 3, 27, 1040 },
			["Dankorbs|pagle"] = { 0, 4, -38, 1398 },
			["Miposhká|raden"] = { 4, 0, 17, 1124 },
			["Reflex|raden"] = { 3, 1, 37, 668 },
			["Retmainxd|raden"] = { 0, 4, -38, 1398 },
			["ßxß|raden"] = { 4, 0, 39, 1124 },
			["Tharealnerds|pagle"] = { 0, 4, -38, 44 },
			["Whhïte|raden"] = { 1, 3, 20, 944 },
			["Bbatta|pagle"] = { 2, 1, 34, 764 },
			["Dankenshroom|lei-shen"] = { 0, 3, -5, 22 },
			["Dat|raden"] = { 1, 2, 19, 622 },
			["Hueland|raden"] = { 0, 3, -9, 1361 },
			["Lichkinng|pagle"] = { 1, 2, -4, 682 },
			["Lvl|raden"] = { 3, 0, 23, 588 },
			["Moneymay|pagle"] = { 1, 2, -11, 873 },
			["Nikotina|galakras"] = { 0, 3, 0, 1223 },
			["Pinguisulina|galakras"] = { 0, 3, 0, 1216 },
			["Prettigood|raden"] = { 3, 0, 10, 1129 },
			["Sponsor|raden"] = { 0, 3, -27, 1146 },
			["Spq|pagle"] = { 0, 3, -39, 631 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1132 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 944 },
			["Boena|pagle"] = { 0, 2, -19, 765 },
			["Donceno|nazgrim"] = { 0, 2, -12, 891 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1141 },
			["Smokinweedle|raden"] = { 0, 2, -24, 840 },
			["Statt|arugal-au"] = { 0, 2, -19, 630 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 764 },
			["Carnilumen|pagle"] = { 0, 1, -2, 1304 },
			["Fabermors|pagle"] = { 0, 1, -11, 764 },
			["Palalazy|pagle"] = { 0, 1, -19, 828 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 755 },
			["Rëyy|raden"] = { 0, 1, -18, 834 },
			["Soulreap|raden"] = { 1, 0, 14, 1025 },
			["Theweave|raden"] = { 0, 1, -8, 1133 },
		},
	},
}

