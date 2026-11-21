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
	built = 1795294793,
	builtText = "2026-11-21 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Xatica|pagle"] = { 3, 0, 25, 8 },
			["Glinna|raden"] = { 1, 0, 10, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 8, 0, 43, 72 },
			["Xatica|pagle"] = { 3, 0, 25, 8 },
			["Firecano|raden"] = { 1, 0, 1, 157 },
			["Glinna|raden"] = { 1, 0, 10, 49 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 8, 0, 43, 72 },
			["Xatica|pagle"] = { 3, 0, 25, 8 },
			["Bamboi|pagle"] = { 2, 0, 6, 227 },
			["Horniaf|pagle"] = { 2, 0, 6, 227 },
			["Firecano|raden"] = { 1, 0, 1, 157 },
			["Glinna|raden"] = { 1, 0, 10, 49 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Skeletonzx|galakras"] = { 12, 3, 41, 661 },
			["Møønzx|galakras"] = { 8, 0, 43, 72 },
			["Following|pagle"] = { 3, 2, 22, 699 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 682 },
			["Livekirkly|raden"] = { 3, 1, 60, 432 },
			["Swlfty|raden"] = { 3, 0, 13, 612 },
			["Xatica|pagle"] = { 3, 0, 25, 8 },
			["Aarôn|raden"] = { 0, 2, -28, 440 },
			["Bamboi|pagle"] = { 2, 0, 6, 227 },
			["Carnilumen|pagle"] = { 1, 1, 9, 612 },
			["Horniaf|pagle"] = { 2, 0, 6, 227 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 591 },
			["Firecano|raden"] = { 1, 0, 1, 157 },
			["Glinna|raden"] = { 1, 0, 10, 49 },
			["Lunchmeat|nazgrim"] = { 0, 1, -11, 612 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 590 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 1054 },
			["Kelmight|pagle"] = { 14, 21, 25, 972 },
			["Poixon|pagle"] = { 14, 21, 20, 972 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 954 },
			["Blankisa|raden"] = { 11, 10, 91, 946 },
			["Boena|pagle"] = { 7, 9, 4, 917 },
			["Tamerak|raden"] = { 7, 9, -46, 954 },
			["Jonwald|pagle"] = { 6, 9, 42, 942 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 941 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 661 },
			["Monktty|lei-shen"] = { 7, 7, -29, 930 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 1069 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 879 },
			["Tastydank|raden"] = { 4, 9, -38, 808 },
			["Teatable|raden"] = { 11, 2, -11, 972 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 792 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 972 },
			["Bamboi|pagle"] = { 7, 3, 40, 227 },
			["Cobrä|pagle"] = { 5, 5, 19, 913 },
			["Glinna|raden"] = { 5, 5, 57, 49 },
			["Horniaf|pagle"] = { 7, 3, 40, 227 },
			["Lunchmeat|nazgrim"] = { 2, 8, -48, 612 },
			["Nurfme|raden"] = { 10, 0, 55, 972 },
			["Skrylur|pagle"] = { 5, 5, 19, 913 },
			["Swlfty|raden"] = { 9, 1, 34, 612 },
			["Guanyîn|raden"] = { 6, 3, 10, 848 },
			["Livekirkly|raden"] = { 6, 3, 98, 432 },
			["Nilio|raden"] = { 6, 3, 42, 820 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 853 },
			["Sugarbear|raden"] = { 9, 0, 48, 1084 },
			["Branco|raden"] = { 6, 2, -10, 972 },
			["Møønzx|galakras"] = { 8, 0, 43, 72 },
			["Fctry|raden"] = { 3, 4, 46, 1045 },
			["Lvl|raden"] = { 3, 4, -14, 792 },
			["Tjax|raden"] = { 2, 5, 19, 1142 },
			["Verdex|raden"] = { 3, 4, 1, 792 },
			["Xzww|pagle"] = { 2, 5, 22, 1125 },
			["Youcutebb|raden"] = { 4, 3, 76, 1000 },
			["Çlix|pagle"] = { 1, 5, -1, 1279 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 972 },
			["Sheerwill|pagle"] = { 6, 0, 31, 744 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1280 },
			["Theweave|raden"] = { 4, 2, 32, 1060 },
			["Chotter|pagle"] = { 0, 5, -18, 859 },
			["Following|pagle"] = { 3, 2, 22, 699 },
			["Lockiecan|pagle"] = { 0, 5, 0, 874 },
			["Sponsorz|raden"] = { 1, 4, 16, 1028 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 682 },
			["Drgspit|pagle"] = { 2, 2, 16, 1152 },
			["Rettmonk|raden"] = { 0, 4, -61, 934 },
			["Saintjuan|raden"] = { 1, 3, -6, 1050 },
			["Slumpfoo|raden"] = { 1, 3, -17, 911 },
			["Stonêd|raden"] = { 2, 2, 42, 1154 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 932 },
			["Fullcream|galakras"] = { 1, 2, 0, 831 },
			["Technique|raden"] = { 1, 2, -10, 1067 },
			["Xatica|pagle"] = { 3, 0, 25, 8 },
			["Aarôn|raden"] = { 0, 2, -28, 440 },
			["Bistwo|raden"] = { 0, 2, -26, 972 },
			["Booku|pagle"] = { 1, 1, 17, 918 },
			["Carnilumen|pagle"] = { 1, 1, 9, 612 },
			["Clayia|raden"] = { 1, 1, 2, 912 },
			["Drlovee|benediction"] = { 1, 1, 20, 976 },
			["Electabuzz|raden"] = { 0, 2, -13, 996 },
			["Imperïa|pagle"] = { 1, 1, 0, 1208 },
			["Longswôrd|pagle"] = { 2, 0, 31, 1332 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 591 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 1098 },
			["Polutropos|galakras"] = { 0, 2, -24, 792 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1243 },
			["Apechamp|raden"] = { 0, 1, -11, 1056 },
			["Blankis|raden"] = { 0, 1, -5, 1213 },
			["Firecano|raden"] = { 1, 0, 1, 157 },
			["Larvá|raden"] = { 0, 1, -10, 1099 },
			["Miposhká|raden"] = { 0, 1, -15, 1106 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 1050 },
			["Thebucket|raden"] = { 0, 1, 0, 1002 },
			["Trapfiendx|raden"] = { 1, 0, 11, 742 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 590 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 913 },
			["Tastydank|raden"] = { 1, 0, 95, 808 },
		},
	},
}

