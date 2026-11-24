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
	built = 1795553990,
	builtText = "2026-11-24 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bdx|raden"] = { 4, 0, 17, 37 },
			["Drlovee|benediction"] = { 0, 1, 0, 54 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bdx|raden"] = { 4, 0, 17, 37 },
			["Carnilumen|pagle"] = { 0, 1, -6, 164 },
			["Dabddaddy|raden"] = { 1, 0, 6, 164 },
			["Drlovee|benediction"] = { 0, 1, 0, 54 },
			["Lôukî|pagle"] = { 0, 1, -2, 164 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Radendznuts|raden"] = { 1, 4, -29, 344 },
			["Bdx|raden"] = { 4, 0, 17, 37 },
			["Budamm|pagle"] = { 4, 0, 40, 344 },
			["Carnilumen|pagle"] = { 0, 1, -6, 164 },
			["Dabddaddy|raden"] = { 1, 0, 6, 164 },
			["Drlovee|benediction"] = { 0, 1, 0, 54 },
			["Lôukî|pagle"] = { 0, 1, -2, 164 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ezfist|immerseus"] = { 11, 5, 109, 515 },
			["Questopresto|nazgrim"] = { 6, 10, -45, 397 },
			["Xunamated|raden"] = { 11, 4, 217, 579 },
			["Radendznuts|raden"] = { 1, 4, -29, 344 },
			["Bdx|raden"] = { 4, 0, 17, 37 },
			["Budamm|pagle"] = { 4, 0, 40, 344 },
			["Gymsharkbadi|arugal-au"] = { 1, 3, -20, 602 },
			["Spala|pagle"] = { 3, 1, -2, 612 },
			["Statt|arugal-au"] = { 1, 3, -38, 662 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 568 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 567 },
			["Statticw|arugal-au"] = { 0, 2, -29, 703 },
			["Carnilumen|pagle"] = { 0, 1, -6, 164 },
			["Dabddaddy|raden"] = { 1, 0, 6, 164 },
			["Drlovee|benediction"] = { 0, 1, 0, 54 },
			["Lôukî|pagle"] = { 0, 1, -2, 164 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 562 },
			["Quelss|pagle"] = { 0, 1, -4, 400 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 20, 18, 26, 833 },
			["Stealurgirl|raden"] = { 20, 18, 26, 832 },
			["Guanyîn|raden"] = { 12, 16, -72, 813 },
			["Ezfist|immerseus"] = { 18, 9, 113, 515 },
			["Reckington|raden"] = { 20, 2, 11, 792 },
			["Xntrixxz|arugal-au"] = { 20, 2, 49, 830 },
			["Karelys|pagle"] = { 13, 7, 311, 1061 },
			["Rëyy|raden"] = { 9, 11, 4, 958 },
			["Raijinkumax|pagle"] = { 8, 11, -57, 817 },
			["Xunamated|raden"] = { 13, 6, 248, 579 },
			["Emanuely|pagle"] = { 6, 11, 30, 1057 },
			["Marcão|pagle"] = { 6, 11, -35, 1063 },
			["Weknwdatruth|pagle"] = { 14, 3, 158, 1010 },
			["Questopresto|nazgrim"] = { 6, 10, -45, 397 },
			["Tamerak|raden"] = { 9, 7, 34, 1067 },
			["Drzynphd|raden"] = { 13, 1, 51, 973 },
			["Dwl|raden"] = { 8, 6, 16, 954 },
			["Rompah|raden"] = { 8, 6, 16, 792 },
			["Sugarbear|raden"] = { 13, 1, 25, 971 },
			["Bettyrage|nazgrim"] = { 7, 6, 48, 787 },
			["Cconsequence|raden"] = { 5, 8, -27, 792 },
			["Glinna|raden"] = { 6, 7, -22, 960 },
			["Stàn|immerseus"] = { 8, 5, 41, 1010 },
			["Fctry|raden"] = { 4, 8, 10, 864 },
			["Xièxiè|raden"] = { 4, 8, 25, 864 },
			["Aronuti|lei-shen"] = { 2, 8, -39, 1066 },
			["Iloveyouxx|raden"] = { 4, 6, 32, 792 },
			["Lôukî|pagle"] = { 6, 4, 74, 164 },
			["Plum|raden"] = { 5, 5, -5, 1078 },
			["Bamboi|pagle"] = { 5, 4, 12, 1053 },
			["Lunchmeat|nazgrim"] = { 4, 5, -29, 1152 },
			["Zheani|raden"] = { 4, 5, 0, 969 },
			["Bluntsntits|pagle"] = { 5, 3, 18, 870 },
			["Gigasimpx|pagle"] = { 5, 3, 47, 865 },
			["Gymsharkbadi|arugal-au"] = { 2, 6, -28, 602 },
			["Mondozen|raden"] = { 5, 3, 68, 922 },
			["Nilio|raden"] = { 3, 5, -40, 845 },
			["Omnixide|raden"] = { 5, 3, 76, 929 },
			["Polutropos|galakras"] = { 3, 4, -8, 853 },
			["Wowamazingcc|raden"] = { 1, 6, -26, 959 },
			["Gkazz|lei-shen"] = { 1, 5, -21, 1093 },
			["Voiddotty|galakras"] = { 2, 4, 29, 804 },
			["Bdx|raden"] = { 5, 0, 27, 37 },
			["Çlix|pagle"] = { 1, 4, -21, 1028 },
			["Imperïa|pagle"] = { 4, 1, 27, 1190 },
			["Judaahh|arugal-au"] = { 3, 2, 5, 875 },
			["Radendznuts|raden"] = { 1, 4, -29, 344 },
			["Vseraphim|immerseus"] = { 4, 1, 27, 1161 },
			["Averthery|pagle"] = { 2, 2, 22, 858 },
			["Blankisa|raden"] = { 1, 3, -20, 988 },
			["Bouddha|raden"] = { 3, 1, 24, 1423 },
			["Budamm|pagle"] = { 4, 0, 40, 344 },
			["Elkaazz|lei-shen"] = { 1, 3, -12, 972 },
			["Ganggangg|immerseus"] = { 1, 3, -8, 865 },
			["Killshot|immerseus"] = { 1, 3, -32, 1036 },
			["Leddyx|pagle"] = { 1, 3, -18, 792 },
			["Livingsteak|galakras"] = { 2, 2, 17, 1032 },
			["Reckology|raden"] = { 1, 3, -46, 1018 },
			["Skeletonzx|galakras"] = { 4, 0, 17, 1332 },
			["Spala|pagle"] = { 3, 1, -2, 612 },
			["Statt|arugal-au"] = { 1, 3, -38, 662 },
			["Statticw|arugal-au"] = { 0, 4, -63, 703 },
			["Blunttraumah|immerseus"] = { 1, 2, -5, 1014 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 568 },
			["Chotter|pagle"] = { 0, 3, -14, 1044 },
			["Daddichill|raden"] = { 1, 2, -4, 1235 },
			["Fabermors|pagle"] = { 2, 1, -4, 792 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 567 },
			["Syphonfiltèr|pagle"] = { 1, 2, 11, 1015 },
			["Tharealnerds|pagle"] = { 2, 1, 6, 1107 },
			["Hueland|raden"] = { 2, 0, 17, 1432 },
			["Lockiecan|pagle"] = { 0, 2, 0, 802 },
			["Luker|lei-shen"] = { 0, 2, -14, 885 },
			["Smokinweedle|raden"] = { 0, 2, -11, 972 },
			["Youcutebb|raden"] = { 0, 2, 0, 1064 },
			["Amshelot|pagle"] = { 0, 1, 0, 1437 },
			["Carnilumen|pagle"] = { 0, 1, -6, 164 },
			["Dabddaddy|raden"] = { 1, 0, 6, 164 },
			["Dêêdaniels|lei-shen"] = { 0, 1, 0, 1153 },
			["Drgewch|raden"] = { 1, 0, 8, 1102 },
			["Drlovee|benediction"] = { 0, 1, 0, 54 },
			["Killa|immerseus"] = { 0, 1, -6, 1027 },
			["Nazmirr|pagle"] = { 0, 1, -7, 887 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 562 },
			["Qtx|raden"] = { 1, 0, 8, 1102 },
			["Quelss|pagle"] = { 0, 1, -4, 400 },
			["Slumpfoo|raden"] = { 1, 0, 15, 799 },
			["Suxatmage|immerseus"] = { 0, 1, -3, 779 },
			["Xander|raden"] = { 1, 0, 14, 847 },
		},
	},
}

