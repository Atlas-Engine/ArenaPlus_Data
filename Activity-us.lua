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
	built = 1795561190,
	builtText = "2026-11-24 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Leddyx|pagle"] = { 1, 2, -23, 4 },
			["Euspy|raden"] = { 1, 0, 23, 59 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bdx|raden"] = { 4, 0, 17, 157 },
			["Leddyx|pagle"] = { 1, 2, -23, 4 },
			["Drlovee|benediction"] = { 0, 1, 0, 174 },
			["Euspy|raden"] = { 1, 0, 23, 59 },
			["Sombodee|pagle"] = { 0, 1, -2, 89 },
			["Xatica|pagle"] = { 0, 1, -2, 90 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bdx|raden"] = { 4, 0, 17, 157 },
			["Leddyx|pagle"] = { 1, 2, -23, 4 },
			["Carnilumen|pagle"] = { 0, 1, -6, 284 },
			["Dabddaddy|raden"] = { 1, 0, 6, 284 },
			["Drlovee|benediction"] = { 0, 1, 0, 174 },
			["Euspy|raden"] = { 1, 0, 23, 59 },
			["Lôukî|pagle"] = { 0, 1, -2, 284 },
			["Sombodee|pagle"] = { 0, 1, -2, 89 },
			["Xatica|pagle"] = { 0, 1, -2, 90 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Questopresto|nazgrim"] = { 4, 1, 40, 517 },
			["Radendznuts|raden"] = { 1, 4, -29, 464 },
			["Bdx|raden"] = { 4, 0, 17, 157 },
			["Budamm|pagle"] = { 4, 0, 40, 464 },
			["Ezfist|immerseus"] = { 1, 3, -7, 635 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 688 },
			["Leddyx|pagle"] = { 1, 2, -23, 4 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 687 },
			["Xunamated|raden"] = { 1, 2, 18, 699 },
			["Carnilumen|pagle"] = { 0, 1, -6, 284 },
			["Dabddaddy|raden"] = { 1, 0, 6, 284 },
			["Drlovee|benediction"] = { 0, 1, 0, 174 },
			["Euspy|raden"] = { 1, 0, 23, 59 },
			["Lôukî|pagle"] = { 0, 1, -2, 284 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 682 },
			["Quelss|pagle"] = { 0, 1, -4, 520 },
			["Sombodee|pagle"] = { 0, 1, -2, 89 },
			["Xatica|pagle"] = { 0, 1, -2, 90 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 20, 18, 26, 953 },
			["Stealurgirl|raden"] = { 20, 18, 26, 952 },
			["Guanyîn|raden"] = { 12, 16, -72, 933 },
			["Ezfist|immerseus"] = { 18, 9, 113, 635 },
			["Reckington|raden"] = { 20, 2, 11, 912 },
			["Xntrixxz|arugal-au"] = { 20, 2, 49, 950 },
			["Rëyy|raden"] = { 9, 11, 4, 1078 },
			["Raijinkumax|pagle"] = { 8, 11, -57, 937 },
			["Xunamated|raden"] = { 13, 6, 248, 699 },
			["Emanuely|pagle"] = { 6, 11, 30, 1177 },
			["Marcão|pagle"] = { 6, 11, -35, 1183 },
			["Questopresto|nazgrim"] = { 6, 10, -45, 517 },
			["Tamerak|raden"] = { 9, 7, 34, 1187 },
			["Drzynphd|raden"] = { 13, 1, 51, 1093 },
			["Dwl|raden"] = { 8, 6, 16, 1074 },
			["Rompah|raden"] = { 8, 6, 16, 912 },
			["Sugarbear|raden"] = { 13, 1, 25, 1091 },
			["Bettyrage|nazgrim"] = { 7, 6, 48, 907 },
			["Cconsequence|raden"] = { 5, 8, -27, 912 },
			["Glinna|raden"] = { 6, 7, -22, 1080 },
			["Karelys|pagle"] = { 9, 4, 160, 1181 },
			["Stàn|immerseus"] = { 8, 5, 41, 1130 },
			["Weknwdatruth|pagle"] = { 10, 3, 124, 1130 },
			["Fctry|raden"] = { 4, 8, 10, 984 },
			["Xièxiè|raden"] = { 4, 8, 25, 984 },
			["Aronuti|lei-shen"] = { 2, 8, -39, 1186 },
			["Iloveyouxx|raden"] = { 4, 6, 32, 912 },
			["Lôukî|pagle"] = { 6, 4, 74, 284 },
			["Plum|raden"] = { 5, 5, -5, 1198 },
			["Bamboi|pagle"] = { 5, 4, 12, 1173 },
			["Zheani|raden"] = { 4, 5, 0, 1089 },
			["Bluntsntits|pagle"] = { 5, 3, 18, 990 },
			["Gigasimpx|pagle"] = { 5, 3, 47, 985 },
			["Gymsharkbadi|arugal-au"] = { 2, 6, -28, 722 },
			["Mondozen|raden"] = { 5, 3, 68, 1042 },
			["Nilio|raden"] = { 3, 5, -40, 965 },
			["Omnixide|raden"] = { 5, 3, 76, 1049 },
			["Leddyx|pagle"] = { 2, 5, -41, 4 },
			["Polutropos|galakras"] = { 3, 4, -8, 973 },
			["Wowamazingcc|raden"] = { 1, 6, -26, 1079 },
			["Gkazz|lei-shen"] = { 1, 5, -21, 1213 },
			["Voiddotty|galakras"] = { 2, 4, 29, 924 },
			["Bdx|raden"] = { 5, 0, 27, 157 },
			["Çlix|pagle"] = { 1, 4, -21, 1148 },
			["Imperïa|pagle"] = { 4, 1, 27, 1310 },
			["Judaahh|arugal-au"] = { 3, 2, 5, 995 },
			["Radendznuts|raden"] = { 1, 4, -29, 464 },
			["Vseraphim|immerseus"] = { 4, 1, 27, 1281 },
			["Averthery|pagle"] = { 2, 2, 22, 978 },
			["Blankisa|raden"] = { 1, 3, -20, 1108 },
			["Budamm|pagle"] = { 4, 0, 40, 464 },
			["Elkaazz|lei-shen"] = { 1, 3, -12, 1092 },
			["Ganggangg|immerseus"] = { 1, 3, -8, 985 },
			["Killshot|immerseus"] = { 1, 3, -32, 1156 },
			["Livingsteak|galakras"] = { 2, 2, 17, 1152 },
			["Reckology|raden"] = { 1, 3, -46, 1138 },
			["Spala|pagle"] = { 3, 1, -2, 732 },
			["Statt|arugal-au"] = { 1, 3, -38, 782 },
			["Statticw|arugal-au"] = { 0, 4, -63, 823 },
			["Blunttraumah|immerseus"] = { 1, 2, -5, 1134 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 688 },
			["Chotter|pagle"] = { 0, 3, -14, 1164 },
			["Daddichill|raden"] = { 1, 2, -4, 1355 },
			["Fabermors|pagle"] = { 2, 1, -4, 912 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 687 },
			["Syphonfiltèr|pagle"] = { 1, 2, 11, 1135 },
			["Tharealnerds|pagle"] = { 2, 1, 6, 1227 },
			["Lockiecan|pagle"] = { 0, 2, 0, 922 },
			["Luker|lei-shen"] = { 0, 2, -14, 1005 },
			["Lunchmeat|nazgrim"] = { 0, 2, -23, 1272 },
			["Smokinweedle|raden"] = { 0, 2, -11, 1092 },
			["Youcutebb|raden"] = { 0, 2, 0, 1184 },
			["Carnilumen|pagle"] = { 0, 1, -6, 284 },
			["Dabddaddy|raden"] = { 1, 0, 6, 284 },
			["Dêêdaniels|lei-shen"] = { 0, 1, 0, 1273 },
			["Drgewch|raden"] = { 1, 0, 8, 1222 },
			["Drlovee|benediction"] = { 0, 1, 0, 174 },
			["Euspy|raden"] = { 1, 0, 23, 59 },
			["Killa|immerseus"] = { 0, 1, -6, 1147 },
			["Nazmirr|pagle"] = { 0, 1, -7, 1007 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 682 },
			["Qtx|raden"] = { 1, 0, 8, 1222 },
			["Quelss|pagle"] = { 0, 1, -4, 520 },
			["Slumpfoo|raden"] = { 1, 0, 15, 919 },
			["Sombodee|pagle"] = { 0, 1, -2, 89 },
			["Suxatmage|immerseus"] = { 0, 1, -3, 899 },
			["Xander|raden"] = { 1, 0, 14, 967 },
			["Xatica|pagle"] = { 0, 1, -2, 90 },
		},
	},
}

