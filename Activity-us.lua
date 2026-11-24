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
	built = 1795550395,
	builtText = "2026-11-24 03:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Carnilumen|pagle"] = { 0, 1, -6, 104 },
			["Dabddaddy|raden"] = { 1, 0, 6, 104 },
			["Lôukî|pagle"] = { 0, 1, -2, 104 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Radendznuts|raden"] = { 1, 4, -29, 284 },
			["Budamm|pagle"] = { 4, 0, 40, 284 },
			["Questopresto|nazgrim"] = { 4, 0, 48, 337 },
			["Carnilumen|pagle"] = { 0, 1, -6, 104 },
			["Dabddaddy|raden"] = { 1, 0, 6, 104 },
			["Lôukî|pagle"] = { 0, 1, -2, 104 },
			["Quelss|pagle"] = { 0, 1, -4, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ezfist|immerseus"] = { 11, 5, 109, 455 },
			["Questopresto|nazgrim"] = { 6, 10, -45, 337 },
			["Xunamated|raden"] = { 11, 4, 217, 519 },
			["Radendznuts|raden"] = { 1, 4, -29, 284 },
			["Budamm|pagle"] = { 4, 0, 40, 284 },
			["Gymsharkbadi|arugal-au"] = { 1, 3, -20, 542 },
			["Spala|pagle"] = { 3, 1, -2, 552 },
			["Statt|arugal-au"] = { 1, 3, -38, 602 },
			["Statticw|arugal-au"] = { 0, 4, -63, 643 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 508 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 507 },
			["Carnilumen|pagle"] = { 0, 1, -6, 104 },
			["Dabddaddy|raden"] = { 1, 0, 6, 104 },
			["Lôukî|pagle"] = { 0, 1, -2, 104 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 502 },
			["Quelss|pagle"] = { 0, 1, -4, 340 },
			["Suxatmage|immerseus"] = { 0, 1, -3, 719 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 20, 18, 26, 773 },
			["Stealurgirl|raden"] = { 20, 18, 26, 772 },
			["Guanyîn|raden"] = { 12, 16, -72, 753 },
			["Ezfist|immerseus"] = { 18, 9, 113, 455 },
			["Reckington|raden"] = { 20, 2, 11, 732 },
			["Xntrixxz|arugal-au"] = { 20, 2, 49, 770 },
			["Karelys|pagle"] = { 13, 7, 311, 1001 },
			["Rëyy|raden"] = { 9, 11, 4, 898 },
			["Raijinkumax|pagle"] = { 8, 11, -57, 757 },
			["Xunamated|raden"] = { 13, 6, 248, 519 },
			["Emanuely|pagle"] = { 6, 11, 30, 997 },
			["Marcão|pagle"] = { 6, 11, -35, 1003 },
			["Weknwdatruth|pagle"] = { 14, 3, 158, 950 },
			["Questopresto|nazgrim"] = { 6, 10, -45, 337 },
			["Tamerak|raden"] = { 9, 7, 34, 1008 },
			["Drzynphd|raden"] = { 13, 1, 51, 913 },
			["Dwl|raden"] = { 8, 6, 16, 894 },
			["Rompah|raden"] = { 8, 6, 16, 732 },
			["Sugarbear|raden"] = { 13, 1, 25, 912 },
			["Bettyrage|nazgrim"] = { 7, 6, 48, 727 },
			["Cconsequence|raden"] = { 5, 8, -27, 732 },
			["Glinna|raden"] = { 6, 7, -22, 900 },
			["Stàn|immerseus"] = { 8, 5, 41, 950 },
			["Fctry|raden"] = { 4, 8, 10, 804 },
			["Lôukî|pagle"] = { 7, 5, 93, 104 },
			["Xièxiè|raden"] = { 4, 8, 25, 804 },
			["Aronuti|lei-shen"] = { 2, 8, -39, 1006 },
			["Iloveyouxx|raden"] = { 4, 6, 32, 732 },
			["Plum|raden"] = { 5, 5, -5, 1018 },
			["Bamboi|pagle"] = { 5, 4, 12, 994 },
			["Lunchmeat|nazgrim"] = { 4, 5, -29, 1092 },
			["Zheani|raden"] = { 4, 5, 0, 909 },
			["Bluntsntits|pagle"] = { 5, 3, 18, 810 },
			["Gigasimpx|pagle"] = { 5, 3, 47, 805 },
			["Gymsharkbadi|arugal-au"] = { 2, 6, -28, 542 },
			["Mondozen|raden"] = { 5, 3, 68, 862 },
			["Nilio|raden"] = { 3, 5, -40, 785 },
			["Omnixide|raden"] = { 5, 3, 76, 869 },
			["Polutropos|galakras"] = { 3, 4, -8, 793 },
			["Wowamazingcc|raden"] = { 1, 6, -26, 899 },
			["Gkazz|lei-shen"] = { 1, 5, -21, 1033 },
			["Voiddotty|galakras"] = { 2, 4, 29, 744 },
			["Çlix|pagle"] = { 1, 4, -21, 968 },
			["Imperïa|pagle"] = { 4, 1, 27, 1130 },
			["Judaahh|arugal-au"] = { 3, 2, 5, 815 },
			["Radendznuts|raden"] = { 1, 4, -29, 284 },
			["Vseraphim|immerseus"] = { 4, 1, 27, 1101 },
			["Averthery|pagle"] = { 2, 2, 22, 798 },
			["Blankisa|raden"] = { 1, 3, -20, 928 },
			["Bouddha|raden"] = { 3, 1, 24, 1363 },
			["Budamm|pagle"] = { 4, 0, 40, 284 },
			["Elkaazz|lei-shen"] = { 1, 3, -12, 912 },
			["Ganggangg|immerseus"] = { 1, 3, -8, 806 },
			["Killshot|immerseus"] = { 1, 3, -32, 976 },
			["Leddyx|pagle"] = { 1, 3, -18, 732 },
			["Livingsteak|galakras"] = { 2, 2, 17, 972 },
			["Reckology|raden"] = { 1, 3, -46, 958 },
			["Skeletonzx|galakras"] = { 4, 0, 17, 1272 },
			["Spala|pagle"] = { 3, 1, -2, 552 },
			["Statt|arugal-au"] = { 1, 3, -38, 602 },
			["Statticw|arugal-au"] = { 0, 4, -63, 643 },
			["Blunttraumah|immerseus"] = { 1, 2, -5, 954 },
			["Chiokeme|arugal-au"] = { 3, 0, 19, 508 },
			["Chotter|pagle"] = { 0, 3, -14, 984 },
			["Daddichill|raden"] = { 1, 2, -4, 1175 },
			["Fabermors|pagle"] = { 2, 1, -4, 732 },
			["Nebupeach|nazgrim"] = { 3, 0, 24, 507 },
			["Syphonfiltèr|pagle"] = { 1, 2, 11, 955 },
			["Tharealnerds|pagle"] = { 2, 1, 6, 1047 },
			["Hueland|raden"] = { 2, 0, 17, 1372 },
			["Lockiecan|pagle"] = { 0, 2, 0, 742 },
			["Luker|lei-shen"] = { 0, 2, -14, 825 },
			["Smokinweedle|raden"] = { 0, 2, -11, 912 },
			["Youcutebb|raden"] = { 0, 2, 0, 1004 },
			["Amshelot|pagle"] = { 0, 1, 0, 1377 },
			["Bdx|raden"] = { 1, 0, 10, 1130 },
			["Carnilumen|pagle"] = { 0, 1, -6, 104 },
			["Dabddaddy|raden"] = { 1, 0, 6, 104 },
			["Dêêdaniels|lei-shen"] = { 0, 1, 0, 1093 },
			["Drgewch|raden"] = { 1, 0, 8, 1042 },
			["Hifukface|raden"] = { 1, 0, 14, 1385 },
			["Killa|immerseus"] = { 0, 1, -6, 967 },
			["Nazmirr|pagle"] = { 0, 1, -7, 827 },
			["Orcsamabin|pagle"] = { 0, 1, -2, 502 },
			["Qtx|raden"] = { 1, 0, 8, 1042 },
			["Quelss|pagle"] = { 0, 1, -4, 340 },
			["Rettek|raden"] = { 0, 1, 0, 1386 },
			["Slumpfoo|raden"] = { 1, 0, 15, 739 },
			["Suxatmage|immerseus"] = { 0, 1, -3, 719 },
			["Xander|raden"] = { 1, 0, 14, 787 },
		},
	},
}

