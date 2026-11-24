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
	built = 1795557592,
	builtText = "2026-11-24 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Sombodee|pagle"] = { 0, 1, -2, 29 },
			["Xatica|pagle"] = { 0, 1, -2, 30 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bdx|raden"] = { 4, 0, 17, 97 },
			["Drlovee|benediction"] = { 0, 1, 0, 114 },
			["Sombodee|pagle"] = { 0, 1, -2, 29 },
			["Xatica|pagle"] = { 0, 1, -2, 30 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bdx|raden"] = { 4, 0, 17, 97 },
			["Carnilumen|pagle"] = { 0, 1, -6, 224 },
			["Dabddaddy|raden"] = { 1, 0, 6, 224 },
			["Drlovee|benediction"] = { 0, 1, 0, 114 },
			["Lôukî|pagle"] = { 0, 1, -2, 224 },
			["Sombodee|pagle"] = { 0, 1, -2, 29 },
			["Xatica|pagle"] = { 0, 1, -2, 30 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ezfist|immerseus"] = { 11, 5, 109, 575 },
			["Xunamated|raden"] = { 11, 4, 217, 639 },
			["Questopresto|nazgrim"] = { 5, 3, 40, 457 },
			["Radendznuts|raden"] = { 1, 4, -29, 404 },
			["Bdx|raden"] = { 4, 0, 17, 97 },
			["Budamm|pagle"] = { 4, 0, 40, 404 },
			["Gymsharkbadi|arugal-au"] = { 1, 3, -20, 662 },
			["Spala|pagle"] = { 3, 1, -2, 672 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 628 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 627 },
			["Carnilumen|pagle"] = { 0, 1, -6, 224 },
			["Dabddaddy|raden"] = { 1, 0, 6, 224 },
			["Drlovee|benediction"] = { 0, 1, 0, 114 },
			["Lôukî|pagle"] = { 0, 1, -2, 224 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 622 },
			["Quelss|pagle"] = { 0, 1, -4, 460 },
			["Sombodee|pagle"] = { 0, 1, -2, 29 },
			["Xatica|pagle"] = { 0, 1, -2, 30 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 20, 18, 26, 893 },
			["Stealurgirl|raden"] = { 20, 18, 26, 892 },
			["Guanyîn|raden"] = { 12, 16, -72, 873 },
			["Ezfist|immerseus"] = { 18, 9, 113, 575 },
			["Reckington|raden"] = { 20, 2, 11, 852 },
			["Xntrixxz|arugal-au"] = { 20, 2, 49, 890 },
			["Karelys|pagle"] = { 13, 7, 311, 1121 },
			["Rëyy|raden"] = { 9, 11, 4, 1018 },
			["Raijinkumax|pagle"] = { 8, 11, -57, 877 },
			["Xunamated|raden"] = { 13, 6, 248, 639 },
			["Emanuely|pagle"] = { 6, 11, 30, 1117 },
			["Marcão|pagle"] = { 6, 11, -35, 1123 },
			["Weknwdatruth|pagle"] = { 14, 3, 158, 1070 },
			["Questopresto|nazgrim"] = { 6, 10, -45, 457 },
			["Tamerak|raden"] = { 9, 7, 34, 1127 },
			["Drzynphd|raden"] = { 13, 1, 51, 1033 },
			["Dwl|raden"] = { 8, 6, 16, 1014 },
			["Rompah|raden"] = { 8, 6, 16, 852 },
			["Sugarbear|raden"] = { 13, 1, 25, 1031 },
			["Bettyrage|nazgrim"] = { 7, 6, 48, 847 },
			["Cconsequence|raden"] = { 5, 8, -27, 852 },
			["Glinna|raden"] = { 6, 7, -22, 1020 },
			["Stàn|immerseus"] = { 8, 5, 41, 1070 },
			["Fctry|raden"] = { 4, 8, 10, 924 },
			["Xièxiè|raden"] = { 4, 8, 25, 924 },
			["Aronuti|lei-shen"] = { 2, 8, -39, 1126 },
			["Iloveyouxx|raden"] = { 4, 6, 32, 852 },
			["Lôukî|pagle"] = { 6, 4, 74, 224 },
			["Plum|raden"] = { 5, 5, -5, 1138 },
			["Bamboi|pagle"] = { 5, 4, 12, 1114 },
			["Lunchmeat|nazgrim"] = { 4, 5, -29, 1212 },
			["Zheani|raden"] = { 4, 5, 0, 1029 },
			["Bluntsntits|pagle"] = { 5, 3, 18, 930 },
			["Gigasimpx|pagle"] = { 5, 3, 47, 925 },
			["Gymsharkbadi|arugal-au"] = { 2, 6, -28, 662 },
			["Mondozen|raden"] = { 5, 3, 68, 982 },
			["Nilio|raden"] = { 3, 5, -40, 905 },
			["Omnixide|raden"] = { 5, 3, 76, 989 },
			["Polutropos|galakras"] = { 3, 4, -8, 913 },
			["Wowamazingcc|raden"] = { 1, 6, -26, 1019 },
			["Gkazz|lei-shen"] = { 1, 5, -21, 1153 },
			["Voiddotty|galakras"] = { 2, 4, 29, 864 },
			["Bdx|raden"] = { 5, 0, 27, 97 },
			["Çlix|pagle"] = { 1, 4, -21, 1088 },
			["Imperïa|pagle"] = { 4, 1, 27, 1250 },
			["Judaahh|arugal-au"] = { 3, 2, 5, 935 },
			["Radendznuts|raden"] = { 1, 4, -29, 404 },
			["Vseraphim|immerseus"] = { 4, 1, 27, 1221 },
			["Averthery|pagle"] = { 2, 2, 22, 918 },
			["Blankisa|raden"] = { 1, 3, -20, 1048 },
			["Budamm|pagle"] = { 4, 0, 40, 404 },
			["Elkaazz|lei-shen"] = { 1, 3, -12, 1032 },
			["Ganggangg|immerseus"] = { 1, 3, -8, 925 },
			["Killshot|immerseus"] = { 1, 3, -32, 1096 },
			["Leddyx|pagle"] = { 1, 3, -18, 852 },
			["Livingsteak|galakras"] = { 2, 2, 17, 1092 },
			["Reckology|raden"] = { 1, 3, -46, 1078 },
			["Skeletonzx|galakras"] = { 4, 0, 17, 1392 },
			["Spala|pagle"] = { 3, 1, -2, 672 },
			["Statt|arugal-au"] = { 1, 3, -38, 722 },
			["Statticw|arugal-au"] = { 0, 4, -63, 763 },
			["Blunttraumah|immerseus"] = { 1, 2, -5, 1074 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 628 },
			["Chotter|pagle"] = { 0, 3, -14, 1104 },
			["Daddichill|raden"] = { 1, 2, -4, 1295 },
			["Fabermors|pagle"] = { 2, 1, -4, 852 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 627 },
			["Syphonfiltèr|pagle"] = { 1, 2, 11, 1075 },
			["Tharealnerds|pagle"] = { 2, 1, 6, 1167 },
			["Lockiecan|pagle"] = { 0, 2, 0, 862 },
			["Luker|lei-shen"] = { 0, 2, -14, 945 },
			["Smokinweedle|raden"] = { 0, 2, -11, 1032 },
			["Youcutebb|raden"] = { 0, 2, 0, 1124 },
			["Carnilumen|pagle"] = { 0, 1, -6, 224 },
			["Dabddaddy|raden"] = { 1, 0, 6, 224 },
			["Dêêdaniels|lei-shen"] = { 0, 1, 0, 1213 },
			["Drgewch|raden"] = { 1, 0, 8, 1162 },
			["Drlovee|benediction"] = { 0, 1, 0, 114 },
			["Killa|immerseus"] = { 0, 1, -6, 1087 },
			["Nazmirr|pagle"] = { 0, 1, -7, 947 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 622 },
			["Qtx|raden"] = { 1, 0, 8, 1162 },
			["Quelss|pagle"] = { 0, 1, -4, 460 },
			["Slumpfoo|raden"] = { 1, 0, 15, 859 },
			["Sombodee|pagle"] = { 0, 1, -2, 29 },
			["Suxatmage|immerseus"] = { 0, 1, -3, 839 },
			["Xander|raden"] = { 1, 0, 14, 907 },
			["Xatica|pagle"] = { 0, 1, -2, 30 },
		},
	},
}

