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
	built = 1795820392,
	builtText = "2026-11-27 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ecafkcufhi|raden"] = { 3, 4, -29, 27 },
			["Sheerwill|pagle"] = { 3, 4, 7, 30 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 53 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ecafkcufhi|raden"] = { 3, 4, -29, 27 },
			["Sheerwill|pagle"] = { 3, 4, 7, 30 },
			["Tamerak|raden"] = { 2, 5, -30, 135 },
			["Dankorbs|pagle"] = { 1, 3, -10, 111 },
			["Glinna|raden"] = { 1, 2, -7, 100 },
			["Kxle|raden"] = { 1, 2, -5, 104 },
			["Tharealnerds|pagle"] = { 0, 3, -13, 104 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 53 },
			["Jackelinc|pagle"] = { 0, 1, 0, 104 },
			["Nilio|raden"] = { 0, 1, -4, 89 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 104 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 104 },
			["Vp|immerseus"] = { 0, 1, 0, 104 },
			["Zappytits|galakras"] = { 0, 1, -6, 125 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tamerak|raden"] = { 3, 7, -42, 135 },
			["Ecafkcufhi|raden"] = { 3, 4, -29, 27 },
			["Sheerwill|pagle"] = { 3, 4, 7, 30 },
			["Kxle|raden"] = { 2, 3, -5, 104 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 200 },
			["Dankorbs|pagle"] = { 1, 3, -10, 111 },
			["Tharealnerds|pagle"] = { 0, 4, -16, 104 },
			["Glinna|raden"] = { 1, 2, -7, 100 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 53 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 235 },
			["Jackelinc|pagle"] = { 0, 1, 0, 104 },
			["Nilio|raden"] = { 0, 1, -4, 89 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 104 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 104 },
			["Vp|immerseus"] = { 0, 1, 0, 104 },
			["Zappytits|galakras"] = { 0, 1, -6, 125 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Crepes|pagle"] = { 6, 5, 3, 690 },
			["Tamerak|raden"] = { 3, 7, -42, 135 },
			["Ecafkcufhi|raden"] = { 3, 4, -29, 27 },
			["Sheerwill|pagle"] = { 3, 4, 7, 30 },
			["Vp|immerseus"] = { 0, 7, -8, 104 },
			["Bobertx|raden"] = { 6, 0, 15, 644 },
			["Pisch|arugal-au"] = { 6, 0, 43, 644 },
			["Kxle|raden"] = { 2, 3, -5, 104 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 200 },
			["Dankorbs|pagle"] = { 1, 3, -10, 111 },
			["Tharealnerds|pagle"] = { 0, 4, -16, 104 },
			["Glinna|raden"] = { 1, 2, -7, 100 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 53 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 235 },
			["Jackelinc|pagle"] = { 0, 1, 0, 104 },
			["Nilio|raden"] = { 0, 1, -4, 89 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 104 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 104 },
			["Zappytits|galakras"] = { 0, 1, -6, 125 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ecafkcufhi|raden"] = { 17, 13, -24, 27 },
			["Nf|raden"] = { 12, 15, 132, 1153 },
			["Mòónfirebeam|raden"] = { 17, 8, 18, 845 },
			["Çlix|pagle"] = { 2, 17, -69, 1088 },
			["Tamerak|raden"] = { 8, 10, -29, 135 },
			["Bamboi|pagle"] = { 7, 9, -7, 1036 },
			["Blankis|raden"] = { 10, 6, 146, 1081 },
			["Guanyîn|raden"] = { 9, 7, -5, 1011 },
			["Nøved|pagle"] = { 3, 13, -9, 1184 },
			["Radendznuts|raden"] = { 9, 7, 12, 1011 },
			["Dabddaddy|raden"] = { 7, 6, 29, 1207 },
			["Glinna|raden"] = { 7, 6, 57, 100 },
			["Darkferocity|pagle"] = { 4, 8, 73, 1045 },
			["Fctry|raden"] = { 11, 1, 93, 1036 },
			["Inkárri|arugal-au"] = { 10, 2, 90, 849 },
			["Mistyxo|raden"] = { 11, 1, 64, 1036 },
			["Oneeightsèvn|pagle"] = { 4, 8, 72, 1045 },
			["Vp|immerseus"] = { 1, 11, -17, 104 },
			["Crepes|pagle"] = { 6, 5, 3, 690 },
			["Kushgodx|raden"] = { 8, 3, 27, 995 },
			["Lockiecan|pagle"] = { 1, 10, 20, 898 },
			["Apechamp|raden"] = { 4, 6, -66, 1145 },
			["Horniaf|pagle"] = { 5, 4, 17, 1020 },
			["Kxle|raden"] = { 3, 6, -20, 104 },
			["Nivatem|pagle"] = { 2, 6, 1, 824 },
			["Dirtydiaperz|pagle"] = { 2, 5, -31, 1216 },
			["Sheerwill|pagle"] = { 3, 4, 7, 30 },
			["Slumpfoo|raden"] = { 2, 5, -18, 829 },
			["Spala|pagle"] = { 4, 3, -18, 824 },
			["Tharealnerds|pagle"] = { 0, 7, -51, 104 },
			["Thespot|pagle"] = { 2, 5, -31, 1215 },
			["Weknwdatruth|pagle"] = { 4, 3, 58, 1095 },
			["Bobertx|raden"] = { 6, 0, 15, 644 },
			["Pisch|arugal-au"] = { 6, 0, 43, 644 },
			["Youcutebb|raden"] = { 0, 6, -54, 1004 },
			["Darknuns|pagle"] = { 2, 3, -19, 1004 },
			["Pausewaitwai|raden"] = { 2, 3, 35, 1410 },
			["Seorigori|pagle"] = { 2, 3, -23, 1004 },
			["Statticw|arugal-au"] = { 2, 3, 0, 829 },
			["Xunamated|raden"] = { 2, 3, 27, 1280 },
			["Dankenshroom|lei-shen"] = { 0, 4, -8, 200 },
			["Dankorbs|pagle"] = { 1, 3, -10, 111 },
			["Miposhká|raden"] = { 4, 0, 17, 1364 },
			["Reflex|raden"] = { 3, 1, 37, 908 },
			["ßxß|raden"] = { 4, 0, 39, 1364 },
			["Whhïte|raden"] = { 1, 3, 20, 1184 },
			["Bbatta|pagle"] = { 2, 1, 34, 1004 },
			["Dat|raden"] = { 1, 2, 19, 862 },
			["Lichkinng|pagle"] = { 1, 2, -4, 922 },
			["Lvl|raden"] = { 3, 0, 23, 828 },
			["Moneymay|pagle"] = { 1, 2, -11, 1113 },
			["Prettigood|raden"] = { 3, 0, 10, 1370 },
			["Sponsor|raden"] = { 0, 3, -27, 1386 },
			["Spq|pagle"] = { 0, 3, -39, 871 },
			["Tastetheshot|raden"] = { 3, 0, 13, 1372 },
			["Blunttraumah|immerseus"] = { 0, 2, -10, 1184 },
			["Boena|pagle"] = { 0, 2, -19, 1005 },
			["Donceno|nazgrim"] = { 0, 2, -12, 1131 },
			["Monktty|lei-shen"] = { 0, 2, -14, 1381 },
			["Prototypeceo|pagle"] = { 1, 1, 19, 53 },
			["Smokinweedle|raden"] = { 0, 2, -24, 1080 },
			["Statt|arugal-au"] = { 0, 2, -19, 870 },
			["Wilynnithan|pagle"] = { 0, 2, 0, 1004 },
			["Dankenbrew|lei-shen"] = { 1, 0, 9, 235 },
			["Fabermors|pagle"] = { 0, 1, -11, 1004 },
			["Jackelinc|pagle"] = { 0, 1, 0, 104 },
			["Nilio|raden"] = { 0, 1, -4, 89 },
			["Palalazy|pagle"] = { 0, 1, -19, 1068 },
			["Pinguisulina|galakras"] = { 0, 1, -4, 104 },
			["Ptrgladiator|pagle"] = { 1, 0, 2, 995 },
			["Rëyy|raden"] = { 0, 1, -18, 1074 },
			["Soulreap|raden"] = { 1, 0, 14, 1265 },
			["Soyinfelíz|raden"] = { 1, 0, 5, 104 },
			["Theweave|raden"] = { 0, 1, -8, 1373 },
			["Zappytits|galakras"] = { 0, 1, -6, 125 },
		},
	},
}

