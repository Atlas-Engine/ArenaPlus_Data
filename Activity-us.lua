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
	built = 1795287591,
	builtText = "2026-11-21 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Firecano|raden"] = { 1, 0, 1, 37 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bamboi|pagle"] = { 2, 0, 6, 107 },
			["Horniaf|pagle"] = { 2, 0, 6, 107 },
			["Firecano|raden"] = { 1, 0, 1, 37 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Aarôn|raden"] = { 0, 2, -28, 320 },
			["Bamboi|pagle"] = { 2, 0, 6, 107 },
			["Horniaf|pagle"] = { 2, 0, 6, 107 },
			["Livekirkly|raden"] = { 2, 0, 43, 312 },
			["Firecano|raden"] = { 1, 0, 1, 37 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skeletonzx|galakras"] = { 12, 3, 41, 541 },
			["Tastydank|raden"] = { 4, 9, -38, 688 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 672 },
			["Nilio|raden"] = { 6, 3, 42, 700 },
			["Lvl|raden"] = { 3, 4, -14, 672 },
			["Swlfty|raden"] = { 6, 1, 12, 492 },
			["Verdex|raden"] = { 3, 4, 1, 672 },
			["Sheerwill|pagle"] = { 6, 0, 31, 624 },
			["Following|pagle"] = { 3, 2, 22, 579 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 562 },
			["Livekirkly|raden"] = { 3, 1, 60, 312 },
			["Lunchmeat|nazgrim"] = { 1, 3, -19, 492 },
			["Fullcream|galakras"] = { 1, 2, 0, 711 },
			["Aarôn|raden"] = { 0, 2, -28, 320 },
			["Bamboi|pagle"] = { 2, 0, 6, 107 },
			["Carnilumen|pagle"] = { 1, 1, 9, 492 },
			["Horniaf|pagle"] = { 2, 0, 6, 107 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 471 },
			["Polutropos|galakras"] = { 0, 2, -24, 672 },
			["Firecano|raden"] = { 1, 0, 1, 37 },
			["Trapfiendx|raden"] = { 1, 0, 11, 622 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 470 },
		},
		[2] = {
			["Tastydank|raden"] = { 1, 0, 95, 688 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 934 },
			["Kelmight|pagle"] = { 14, 21, 25, 852 },
			["Poixon|pagle"] = { 14, 21, 20, 852 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 834 },
			["Blankisa|raden"] = { 11, 10, 91, 826 },
			["Boena|pagle"] = { 7, 9, 4, 797 },
			["Tamerak|raden"] = { 7, 9, -46, 834 },
			["Jonwald|pagle"] = { 6, 9, 42, 822 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 821 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 541 },
			["Monktty|lei-shen"] = { 7, 7, -29, 810 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 949 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 759 },
			["Tastydank|raden"] = { 4, 9, -38, 688 },
			["Teatable|raden"] = { 11, 2, -11, 852 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 672 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 852 },
			["Guanyîn|raden"] = { 6, 5, 4, 728 },
			["Bamboi|pagle"] = { 7, 3, 40, 107 },
			["Cobrä|pagle"] = { 5, 5, 19, 793 },
			["Horniaf|pagle"] = { 7, 3, 40, 107 },
			["Lunchmeat|nazgrim"] = { 2, 8, -48, 492 },
			["Nurfme|raden"] = { 10, 0, 55, 852 },
			["Skrylur|pagle"] = { 5, 5, 19, 793 },
			["Swlfty|raden"] = { 9, 1, 34, 492 },
			["Glinna|raden"] = { 4, 5, 47, 866 },
			["Livekirkly|raden"] = { 6, 3, 98, 312 },
			["Nilio|raden"] = { 6, 3, 42, 700 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 733 },
			["Sugarbear|raden"] = { 9, 0, 48, 964 },
			["Branco|raden"] = { 6, 2, -10, 852 },
			["Fctry|raden"] = { 3, 4, 46, 925 },
			["Lvl|raden"] = { 3, 4, -14, 672 },
			["Tjax|raden"] = { 2, 5, 19, 1022 },
			["Verdex|raden"] = { 3, 4, 1, 672 },
			["Xzww|pagle"] = { 2, 5, 22, 1005 },
			["Youcutebb|raden"] = { 4, 3, 76, 880 },
			["Çlix|pagle"] = { 1, 5, -1, 1159 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 852 },
			["Sheerwill|pagle"] = { 6, 0, 31, 624 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1160 },
			["Theweave|raden"] = { 4, 2, 32, 940 },
			["Chotter|pagle"] = { 0, 5, -18, 739 },
			["Following|pagle"] = { 3, 2, 22, 579 },
			["Lockiecan|pagle"] = { 0, 5, 0, 754 },
			["Sponsorz|raden"] = { 1, 4, 16, 908 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 562 },
			["Drgspit|pagle"] = { 2, 2, 16, 1032 },
			["Rettmonk|raden"] = { 0, 4, -61, 814 },
			["Saintjuan|raden"] = { 1, 3, -6, 930 },
			["Slumpfoo|raden"] = { 1, 3, -17, 791 },
			["Stonêd|raden"] = { 2, 2, 42, 1034 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 812 },
			["Fullcream|galakras"] = { 1, 2, 0, 711 },
			["Technique|raden"] = { 1, 2, -10, 947 },
			["Aarôn|raden"] = { 0, 2, -28, 320 },
			["Bistwo|raden"] = { 0, 2, -26, 852 },
			["Booku|pagle"] = { 1, 1, 17, 798 },
			["Carnilumen|pagle"] = { 1, 1, 9, 492 },
			["Clayia|raden"] = { 1, 1, 2, 792 },
			["Drlovee|benediction"] = { 1, 1, 20, 856 },
			["Edshearin|pagle"] = { 0, 2, -6, 1415 },
			["Electabuzz|raden"] = { 0, 2, -13, 876 },
			["Euspy|raden"] = { 2, 0, 48, 1399 },
			["Imperïa|pagle"] = { 1, 1, 0, 1088 },
			["Longswôrd|pagle"] = { 2, 0, 31, 1212 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 471 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 978 },
			["Polutropos|galakras"] = { 0, 2, -24, 672 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1123 },
			["Apechamp|raden"] = { 0, 1, -11, 936 },
			["Blankis|raden"] = { 0, 1, -5, 1093 },
			["Firecano|raden"] = { 1, 0, 1, 37 },
			["Larvá|raden"] = { 0, 1, -10, 979 },
			["Miposhká|raden"] = { 0, 1, -15, 986 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 930 },
			["Thebucket|raden"] = { 0, 1, 0, 882 },
			["Trapfiendx|raden"] = { 1, 0, 11, 622 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 470 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 793 },
			["Tastydank|raden"] = { 1, 0, 95, 688 },
		},
	},
}

