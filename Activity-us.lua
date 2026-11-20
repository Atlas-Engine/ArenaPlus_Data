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
	built = 1795197593,
	builtText = "2026-11-20 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 10, 4, 77, 140 },
			["Antartik|lei-shen"] = { 9, 0, 67, 162 },
			["Møønzx|galakras"] = { 0, 4, -42, 151 },
			["Survivorzx|raden"] = { 1, 0, 3, 152 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 140 },
			["Antartik|lei-shen"] = { 9, 0, 67, 162 },
			["Møønzx|galakras"] = { 2, 5, -47, 151 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 311 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 226 },
			["Spala|pagle"] = { 2, 0, 7, 252 },
			["Survivorzx|raden"] = { 1, 0, 3, 152 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heidrichs|pagle"] = { 12, 5, 89, 140 },
			["Slumpfoo|raden"] = { 9, 6, 15, 621 },
			["Statticw|arugal-au"] = { 9, 6, 11, 625 },
			["Nilio|raden"] = { 3, 9, -45, 537 },
			["Rëyy|raden"] = { 2, 10, -62, 687 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 702 },
			["Fctry|raden"] = { 9, 2, 145, 701 },
			["Suxatheals|pagle"] = { 3, 8, -49, 612 },
			["Antartik|lei-shen"] = { 9, 0, 67, 162 },
			["Ezfist|immerseus"] = { 6, 2, 35, 522 },
			["Livekirkly|raden"] = { 3, 5, 12, 537 },
			["Xunamated|raden"] = { 6, 2, 101, 530 },
			["Møønzx|galakras"] = { 2, 5, -47, 151 },
			["Lvl|raden"] = { 6, 0, 46, 612 },
			["Fullcream|galakras"] = { 0, 4, -44, 523 },
			["Bistwo|raden"] = { 3, 0, 24, 612 },
			["Poizøønzx|galakras"] = { 3, 0, 6, 311 },
			["Skeletonzx|galakras"] = { 2, 1, 6, 226 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 612 },
			["Ðmac|immerseus"] = { 0, 2, -8, 711 },
			["Spala|pagle"] = { 2, 0, 7, 252 },
			["Sugarbear|raden"] = { 2, 0, 0, 542 },
			["Survivorzx|raden"] = { 1, 0, 3, 152 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Musician|raden"] = { 13, 11, 29, 914 },
			["Stealurgirl|raden"] = { 13, 11, 29, 918 },
			["Speakington|raden"] = { 14, 7, 29, 774 },
			["Dankorbs|pagle"] = { 11, 9, 43, 792 },
			["Ivana|galakras"] = { 11, 9, 39, 805 },
			["Rëyy|raden"] = { 5, 15, -101, 687 },
			["Haolong|raden"] = { 11, 8, 46, 792 },
			["Tharealnerds|pagle"] = { 10, 9, 41, 804 },
			["Saintjuan|raden"] = { 10, 8, 80, 850 },
			["Fctry|raden"] = { 13, 4, 223, 701 },
			["Heidrichs|pagle"] = { 12, 5, 89, 140 },
			["Theweave|raden"] = { 12, 5, 103, 752 },
			["Youcutebb|raden"] = { 12, 5, 237, 750 },
			["Çlix|pagle"] = { 9, 7, 80, 881 },
			["Blunttraumah|immerseus"] = { 8, 7, 23, 894 },
			["Edshearin|pagle"] = { 4, 11, -91, 936 },
			["Guanyîn|raden"] = { 4, 11, -100, 935 },
			["Slumpfoo|raden"] = { 9, 6, 15, 621 },
			["Statticw|arugal-au"] = { 9, 6, 11, 625 },
			["Tamerak|raden"] = { 9, 6, 8, 738 },
			["Suxatheals|pagle"] = { 5, 9, -34, 612 },
			["Glinna|raden"] = { 2, 11, -134, 919 },
			["Nazmirr|pagle"] = { 1, 12, -95, 859 },
			["Efekz|immerseus"] = { 5, 7, -2, 741 },
			["Nilio|raden"] = { 3, 9, -45, 537 },
			["Syphonfiltèr|pagle"] = { 8, 4, 114, 893 },
			["Wowamazingcc|raden"] = { 2, 10, -73, 702 },
			["Bistwo|raden"] = { 10, 1, 59, 612 },
			["Polutropos|galakras"] = { 8, 3, 59, 740 },
			["Xntrixxz|arugal-au"] = { 10, 1, 13, 765 },
			["Jonwald|pagle"] = { 3, 7, 42, 759 },
			["Mcjeezyy|pagle"] = { 3, 7, 42, 761 },
			["Antartik|lei-shen"] = { 9, 0, 67, 162 },
			["Møønzx|galakras"] = { 4, 5, -39, 151 },
			["Xunamated|raden"] = { 6, 3, 101, 530 },
			["Ezfist|immerseus"] = { 6, 2, 35, 522 },
			["Goofygoofer|raden"] = { 3, 5, -14, 1039 },
			["Livekirkly|raden"] = { 3, 5, 12, 537 },
			["Trapfiendx|raden"] = { 3, 5, 48, 794 },
			["Bdx|raden"] = { 3, 4, 7, 779 },
			["Crepes|pagle"] = { 3, 4, -23, 1054 },
			["Heriberto|pagle"] = { 1, 6, -19, 1179 },
			["Larvá|raden"] = { 4, 3, -19, 1016 },
			["Splifftrauma|immerseus"] = { 3, 4, 4, 1054 },
			["Drlovee|benediction"] = { 4, 2, 50, 972 },
			["Genuinely|raden"] = { 6, 0, 37, 1003 },
			["Lockiecan|pagle"] = { 1, 5, 18, 730 },
			["Lvl|raden"] = { 6, 0, 46, 612 },
			["Skeletonzx|galakras"] = { 5, 1, 19, 226 },
			["Afekz|immerseus"] = { 2, 3, 2, 962 },
			["Garnarin|galakras"] = { 0, 5, -10, 994 },
			["Fullcream|galakras"] = { 0, 4, -44, 523 },
			["Holidayhamii|pagle"] = { 1, 3, -19, 817 },
			["Mangocart|pagle"] = { 1, 3, -25, 1054 },
			["Mòónfirebeam|raden"] = { 3, 1, 35, 902 },
			["Poizøønzx|galakras"] = { 4, 0, 8, 311 },
			["Boofed|raden"] = { 3, 0, 17, 1095 },
			["Ecafkcufhi|raden"] = { 3, 0, 30, 1054 },
			["Horniaf|pagle"] = { 1, 2, 1, 834 },
			["Toest|pagle"] = { 0, 3, -11, 1054 },
			["Blankisa|raden"] = { 0, 2, -10, 735 },
			["Chiokeme|arugal-au"] = { 2, 0, 17, 612 },
			["Crapes|raden"] = { 0, 2, -6, 1388 },
			["Darkdeamon|pagle"] = { 0, 2, -14, 1178 },
			["Ðmac|immerseus"] = { 0, 2, -8, 711 },
			["Dzyx|pagle"] = { 1, 1, -6, 792 },
			["Electabuzz|raden"] = { 0, 2, -19, 940 },
			["Hueland|raden"] = { 2, 0, 12, 1151 },
			["Kelaía|pagle"] = { 0, 2, -9, 1234 },
			["Kroun|raden"] = { 0, 2, -17, 937 },
			["Spala|pagle"] = { 2, 0, 7, 252 },
			["Sugarbear|raden"] = { 2, 0, 0, 542 },
			["Untaked|pagle"] = { 1, 1, -9, 1414 },
			["Averthery|pagle"] = { 0, 1, -2, 734 },
			["Bagahbonesx|pagle"] = { 0, 1, -5, 972 },
			["Highwaymanx|pagle"] = { 0, 1, -13, 746 },
			["Nvmxxtxx|raden"] = { 1, 0, 7, 1035 },
			["Scorchtt|pagle"] = { 0, 1, -8, 827 },
			["Survivorzx|raden"] = { 1, 0, 3, 152 },
		},
	},
}

