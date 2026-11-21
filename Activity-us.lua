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
	built = 1795291196,
	builtText = "2026-11-21 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 8, 0, 43, 12 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 8, 0, 43, 12 },
			["Bamboi|pagle"] = { 1, 0, 3, 167 },
			["Firecano|raden"] = { 1, 0, 1, 97 },
			["Horniaf|pagle"] = { 1, 0, 3, 167 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 8, 0, 43, 12 },
			["Bamboi|pagle"] = { 2, 0, 6, 167 },
			["Horniaf|pagle"] = { 2, 0, 6, 167 },
			["Firecano|raden"] = { 1, 0, 1, 97 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skeletonzx|galakras"] = { 12, 3, 41, 601 },
			["Møønzx|galakras"] = { 8, 0, 43, 12 },
			["Sheerwill|pagle"] = { 6, 0, 31, 684 },
			["Following|pagle"] = { 3, 2, 22, 639 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 622 },
			["Livekirkly|raden"] = { 3, 1, 60, 372 },
			["Swlfty|raden"] = { 3, 0, 13, 552 },
			["Aarôn|raden"] = { 0, 2, -28, 380 },
			["Bamboi|pagle"] = { 2, 0, 6, 167 },
			["Carnilumen|pagle"] = { 1, 1, 9, 552 },
			["Horniaf|pagle"] = { 2, 0, 6, 167 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 531 },
			["Firecano|raden"] = { 1, 0, 1, 97 },
			["Lunchmeat|nazgrim"] = { 0, 1, -11, 552 },
			["Trapfiendx|raden"] = { 1, 0, 11, 682 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 530 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 994 },
			["Kelmight|pagle"] = { 14, 21, 25, 912 },
			["Poixon|pagle"] = { 14, 21, 20, 912 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 894 },
			["Blankisa|raden"] = { 11, 10, 91, 886 },
			["Boena|pagle"] = { 7, 9, 4, 857 },
			["Tamerak|raden"] = { 7, 9, -46, 894 },
			["Jonwald|pagle"] = { 6, 9, 42, 882 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 881 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 601 },
			["Monktty|lei-shen"] = { 7, 7, -29, 870 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 1009 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 819 },
			["Tastydank|raden"] = { 4, 9, -38, 748 },
			["Teatable|raden"] = { 11, 2, -11, 912 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 732 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 912 },
			["Bamboi|pagle"] = { 7, 3, 40, 167 },
			["Cobrä|pagle"] = { 5, 5, 19, 853 },
			["Horniaf|pagle"] = { 7, 3, 40, 167 },
			["Lunchmeat|nazgrim"] = { 2, 8, -48, 552 },
			["Nurfme|raden"] = { 10, 0, 55, 912 },
			["Skrylur|pagle"] = { 5, 5, 19, 853 },
			["Swlfty|raden"] = { 9, 1, 34, 552 },
			["Glinna|raden"] = { 4, 5, 47, 926 },
			["Guanyîn|raden"] = { 6, 3, 10, 788 },
			["Livekirkly|raden"] = { 6, 3, 98, 372 },
			["Nilio|raden"] = { 6, 3, 42, 760 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 793 },
			["Sugarbear|raden"] = { 9, 0, 48, 1024 },
			["Branco|raden"] = { 6, 2, -10, 912 },
			["Møønzx|galakras"] = { 8, 0, 43, 12 },
			["Fctry|raden"] = { 3, 4, 46, 985 },
			["Lvl|raden"] = { 3, 4, -14, 732 },
			["Tjax|raden"] = { 2, 5, 19, 1082 },
			["Verdex|raden"] = { 3, 4, 1, 732 },
			["Xzww|pagle"] = { 2, 5, 22, 1065 },
			["Youcutebb|raden"] = { 4, 3, 76, 940 },
			["Çlix|pagle"] = { 1, 5, -1, 1219 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 912 },
			["Sheerwill|pagle"] = { 6, 0, 31, 684 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1220 },
			["Theweave|raden"] = { 4, 2, 32, 1000 },
			["Chotter|pagle"] = { 0, 5, -18, 799 },
			["Following|pagle"] = { 3, 2, 22, 639 },
			["Lockiecan|pagle"] = { 0, 5, 0, 814 },
			["Sponsorz|raden"] = { 1, 4, 16, 968 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 622 },
			["Drgspit|pagle"] = { 2, 2, 16, 1092 },
			["Rettmonk|raden"] = { 0, 4, -61, 874 },
			["Saintjuan|raden"] = { 1, 3, -6, 990 },
			["Slumpfoo|raden"] = { 1, 3, -17, 851 },
			["Stonêd|raden"] = { 2, 2, 42, 1095 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 872 },
			["Fullcream|galakras"] = { 1, 2, 0, 771 },
			["Technique|raden"] = { 1, 2, -10, 1008 },
			["Aarôn|raden"] = { 0, 2, -28, 380 },
			["Bistwo|raden"] = { 0, 2, -26, 912 },
			["Booku|pagle"] = { 1, 1, 17, 858 },
			["Carnilumen|pagle"] = { 1, 1, 9, 552 },
			["Clayia|raden"] = { 1, 1, 2, 852 },
			["Drlovee|benediction"] = { 1, 1, 20, 916 },
			["Electabuzz|raden"] = { 0, 2, -13, 936 },
			["Imperïa|pagle"] = { 1, 1, 0, 1148 },
			["Longswôrd|pagle"] = { 2, 0, 31, 1272 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 531 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 1038 },
			["Polutropos|galakras"] = { 0, 2, -24, 732 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1183 },
			["Apechamp|raden"] = { 0, 1, -11, 996 },
			["Blankis|raden"] = { 0, 1, -5, 1153 },
			["Firecano|raden"] = { 1, 0, 1, 97 },
			["Larvá|raden"] = { 0, 1, -10, 1039 },
			["Miposhká|raden"] = { 0, 1, -15, 1047 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 990 },
			["Thebucket|raden"] = { 0, 1, 0, 942 },
			["Trapfiendx|raden"] = { 1, 0, 11, 682 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 530 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 853 },
			["Tastydank|raden"] = { 1, 0, 95, 748 },
		},
	},
}

