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
	built = 1795816792,
	builtText = "2026-11-27 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dankorbs|pagle"] = { 1, 3, -10, 51 },
			["Glinna|raden"] = { 1, 2, -7, 40 },
			["Kxle|raden"] = { 1, 2, -5, 44 },
			["Tharealnerds|pagle"] = { 0, 3, -13, 44 },
			["Jackelinc|pagle"] = { 0, 1, 0, 44 },
			["Nilio|raden"] = { 0, 1, -4, 29 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 44 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 44 },
			["Vp|immerseus"] = { 0, 1, 0, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tamerak|raden"] = { 2, 5, -30, 75 },
			["Dankorbs|pagle"] = { 1, 3, -10, 51 },
			["Glinna|raden"] = { 1, 2, -7, 40 },
			["Kxle|raden"] = { 1, 2, -5, 44 },
			["Tharealnerds|pagle"] = { 0, 3, -13, 44 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 175 },
			["Dankenshroom|lei-shen"] = { 0, 1, -3, 140 },
			["Jackelinc|pagle"] = { 0, 1, 0, 44 },
			["Nilio|raden"] = { 0, 1, -4, 29 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 44 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 44 },
			["Vp|immerseus"] = { 0, 1, 0, 44 },
			["Zappytits|galakras"] = { 0, 1, -6, 65 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tamerak|raden"] = { 3, 7, -42, 75 },
			["Kxle|raden"] = { 2, 3, -5, 44 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 140 },
			["Dankorbs|pagle"] = { 1, 3, -10, 51 },
			["Tharealnerds|pagle"] = { 0, 4, -16, 44 },
			["Glinna|raden"] = { 1, 2, -7, 40 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 175 },
			["Jackelinc|pagle"] = { 0, 1, 0, 44 },
			["Nilio|raden"] = { 0, 1, -4, 29 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 44 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 44 },
			["Vp|immerseus"] = { 0, 1, 0, 44 },
			["Zappytits|galakras"] = { 0, 1, -6, 65 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crepes|pagle"] = { 6, 5, 3, 630 },
			["Tamerak|raden"] = { 3, 7, -42, 75 },
			["Vp|immerseus"] = { 0, 7, -8, 44 },
			["Bobertx|raden"] = { 6, 0, 15, 584 },
			["Pisch|arugal-au"] = { 6, 0, 43, 584 },
			["Kxle|raden"] = { 2, 3, -5, 44 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 140 },
			["Dankorbs|pagle"] = { 1, 3, -10, 51 },
			["Tharealnerds|pagle"] = { 0, 4, -16, 44 },
			["Glinna|raden"] = { 1, 2, -7, 40 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 175 },
			["Jackelinc|pagle"] = { 0, 1, 0, 44 },
			["Nilio|raden"] = { 0, 1, -4, 29 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 44 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 44 },
			["Zappytits|galakras"] = { 0, 1, -6, 65 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Nf|raden"] = { 12, 15, 132, 1093 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 785 },
			["Ecafkcufhi|raden"] = { 14, 9, 5, 1020 },
			["Çlix|pagle"] = { 2, 17, -69, 1028 },
			["Tamerak|raden"] = { 8, 10, -29, 75 },
			["Bamboi|pagle"] = { 7, 9, -7, 976 },
			["Blankis|raden"] = { 10, 6, 146, 1021 },
			["Guanyîn|raden"] = { 9, 7, -5, 951 },
			["Nøved|pagle"] = { 3, 13, -9, 1124 },
			["Radendznuts|raden"] = { 9, 7, 12, 951 },
			["Dabddaddy|raden"] = { 7, 6, 29, 1147 },
			["Glinna|raden"] = { 7, 6, 57, 40 },
			["Darkferocity|pagle"] = { 4, 8, 73, 985 },
			["Fctry|raden"] = { 11, 1, 93, 976 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 789 },
			["Mistyxo|raden"] = { 11, 1, 64, 976 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 985 },
			["Vp|immerseus"] = { 1, 11, -17, 44 },
			["Crepes|pagle"] = { 6, 5, 3, 630 },
			["Kushgodx|raden"] = { 8, 3, 27, 935 },
			["Lockiecan|pagle"] = { 1, 10, 20, 838 },
			["Apechamp|raden"] = { 4, 6, -66, 1085 },
			["Horniaf|pagle"] = { 5, 4, 17, 960 },
			["Kxle|raden"] = { 3, 6, -20, 44 },
			["Nivatem|pagle"] = { 2, 6, 1, 764 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 1156 },
			["Slumpfoo|raden"] = { 2, 5, -18, 769 },
			["Spala|pagle"] = { 4, 3, -18, 764 },
			["Tharealnerds|pagle"] = { 0, 7, -51, 44 },
			["Thespot|pagle"] = { 2, 5, -31, 1155 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 1035 },
			["Bobertx|raden"] = { 6, 0, 15, 584 },
			["Pisch|arugal-au"] = { 6, 0, 43, 584 },
			["Youcutebb|raden"] = { 0, 6, -54, 944 },
			["Darknuns|pagle"] = { 2, 3, -19, 944 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1350 },
			["Seorigori|pagle"] = { 2, 3, -23, 944 },
			["Statticw|arugal-au"] = { 2, 3, 0, 769 },
			["Xunamated|raden"] = { 2, 3, 27, 1220 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 140 },
			["Dankorbs|pagle"] = { 1, 3, -10, 51 },
			["Miposhká|raden"] = { 4, 0, 17, 1304 },
			["Pinguisulina|galakras"] = { 0, 4, -4, 44 },
			["Reflex|raden"] = { 3, 1, 37, 848 },
			["ßxß|raden"] = { 4, 0, 39, 1304 },
			["Whhïte|raden"] = { 1, 3, 20, 1124 },
			["Bbatta|pagle"] = { 2, 1, 34, 944 },
			["Dat|raden"] = { 1, 2, 19, 802 },
			["Lichkinng|pagle"] = { 1, 2, -4, 862 },
			["Lvl|raden"] = { 3, 0, 23, 768 },
			["Moneymay|pagle"] = { 1, 2, -11, 1053 },
			["Nikotina|galakras"] = { 0, 3, 0, 1403 },
			["Prettigood|raden"] = { 3, 0, 10, 1310 },
			["Sponsor|raden"] = { 0, 3, -27, 1326 },
			["Spq|pagle"] = { 0, 3, -39, 811 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1312 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 1124 },
			["Boena|pagle"] = { 0, 2, -19, 945 },
			["Donceno|nazgrim"] = { 0, 2, -12, 1071 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1321 },
			["Smokinweedle|raden"] = { 0, 2, -24, 1020 },
			["Statt|arugal-au"] = { 0, 2, -19, 810 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 944 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 175 },
			["Fabermors|pagle"] = { 0, 1, -11, 944 },
			["Jackelinc|pagle"] = { 0, 1, 0, 44 },
			["Nilio|raden"] = { 0, 1, -4, 29 },
			["Palalazy|pagle"] = { 0, 1, -19, 1008 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 935 },
			["Rëyy|raden"] = { 0, 1, -18, 1014 },
			["Soulreap|raden"] = { 1, 0, 14, 1205 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 44 },
			["Theweave|raden"] = { 0, 1, -8, 1313 },
			["Zappytits|galakras"] = { 0, 1, -6, 65 },
		},
	},
}

