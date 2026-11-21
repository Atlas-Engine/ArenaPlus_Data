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
	built = 1795298394,
	builtText = "2026-11-21 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 4, 3, -5, 41 },
			["Ivoxygen|pagle"] = { 4, 2, 67, 36 },
			["Yvlxd|pagle"] = { 3, 1, 47, 39 },
			["Glinna|raden"] = { 3, 0, 18, 14 },
			["Tamerak|raden"] = { 2, 0, 15, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 12, 3, 38, 41 },
			["Ivoxygen|pagle"] = { 4, 2, 67, 36 },
			["Glinna|raden"] = { 4, 0, 28, 14 },
			["Yvlxd|pagle"] = { 3, 1, 47, 39 },
			["Xatica|pagle"] = { 3, 0, 25, 68 },
			["Tamerak|raden"] = { 2, 0, 15, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 12, 3, 38, 41 },
			["Ivoxygen|pagle"] = { 4, 2, 67, 36 },
			["Glinna|raden"] = { 4, 0, 28, 14 },
			["Yvlxd|pagle"] = { 3, 1, 47, 39 },
			["Xatica|pagle"] = { 3, 0, 25, 68 },
			["Bamboi|pagle"] = { 2, 0, 6, 287 },
			["Horniaf|pagle"] = { 2, 0, 6, 287 },
			["Tamerak|raden"] = { 2, 0, 15, 58 },
			["Firecano|raden"] = { 1, 0, 1, 217 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 12, 3, 38, 41 },
			["Ivoxygen|pagle"] = { 4, 2, 67, 36 },
			["Glinna|raden"] = { 4, 0, 28, 14 },
			["Livekirkly|raden"] = { 3, 1, 60, 492 },
			["Yvlxd|pagle"] = { 3, 1, 47, 39 },
			["Swlfty|raden"] = { 3, 0, 13, 672 },
			["Xatica|pagle"] = { 3, 0, 25, 68 },
			["Aarôn|raden"] = { 0, 2, -28, 500 },
			["Bamboi|pagle"] = { 2, 0, 6, 287 },
			["Carnilumen|pagle"] = { 1, 1, 9, 672 },
			["Horniaf|pagle"] = { 2, 0, 6, 287 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 651 },
			["Tamerak|raden"] = { 2, 0, 15, 58 },
			["Firecano|raden"] = { 1, 0, 1, 217 },
			["Lunchmeat|nazgrim"] = { 0, 1, -11, 672 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 650 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 1114 },
			["Kelmight|pagle"] = { 14, 21, 25, 1032 },
			["Poixon|pagle"] = { 14, 21, 20, 1032 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 1014 },
			["Blankisa|raden"] = { 11, 10, 91, 1006 },
			["Tamerak|raden"] = { 9, 9, -31, 58 },
			["Boena|pagle"] = { 7, 9, 4, 977 },
			["Jonwald|pagle"] = { 6, 9, 42, 1002 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 1001 },
			["Møønzx|galakras"] = { 12, 3, 38, 41 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 721 },
			["Monktty|lei-shen"] = { 7, 7, -29, 990 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 1129 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 939 },
			["Glinna|raden"] = { 8, 5, 75, 14 },
			["Tastydank|raden"] = { 4, 9, -38, 868 },
			["Teatable|raden"] = { 11, 2, -11, 1032 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 852 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 1032 },
			["Bamboi|pagle"] = { 7, 3, 40, 287 },
			["Cobrä|pagle"] = { 5, 5, 19, 973 },
			["Horniaf|pagle"] = { 7, 3, 40, 287 },
			["Lunchmeat|nazgrim"] = { 2, 8, -48, 672 },
			["Nurfme|raden"] = { 10, 0, 55, 1032 },
			["Skrylur|pagle"] = { 5, 5, 19, 973 },
			["Swlfty|raden"] = { 9, 1, 34, 672 },
			["Guanyîn|raden"] = { 6, 3, 10, 908 },
			["Livekirkly|raden"] = { 6, 3, 98, 492 },
			["Nilio|raden"] = { 6, 3, 42, 880 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 913 },
			["Sugarbear|raden"] = { 9, 0, 48, 1144 },
			["Branco|raden"] = { 6, 2, -10, 1032 },
			["Fctry|raden"] = { 3, 4, 46, 1105 },
			["Lvl|raden"] = { 3, 4, -14, 852 },
			["Tjax|raden"] = { 2, 5, 19, 1202 },
			["Verdex|raden"] = { 3, 4, 1, 852 },
			["Xzww|pagle"] = { 2, 5, 22, 1185 },
			["Youcutebb|raden"] = { 4, 3, 76, 1060 },
			["Çlix|pagle"] = { 1, 5, -1, 1339 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 1032 },
			["Ivoxygen|pagle"] = { 4, 2, 67, 36 },
			["Sheerwill|pagle"] = { 6, 0, 31, 804 },
			["Tharealnerds|pagle"] = { 1, 5, -4, 1340 },
			["Theweave|raden"] = { 4, 2, 32, 1120 },
			["Chotter|pagle"] = { 0, 5, -18, 919 },
			["Following|pagle"] = { 3, 2, 22, 759 },
			["Lockiecan|pagle"] = { 0, 5, 0, 934 },
			["Sponsorz|raden"] = { 1, 4, 16, 1088 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 742 },
			["Drgspit|pagle"] = { 2, 2, 16, 1212 },
			["Rettmonk|raden"] = { 0, 4, -61, 994 },
			["Saintjuan|raden"] = { 1, 3, -6, 1110 },
			["Slumpfoo|raden"] = { 1, 3, -17, 971 },
			["Stonêd|raden"] = { 2, 2, 42, 1215 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 992 },
			["Yvlxd|pagle"] = { 3, 1, 47, 39 },
			["Fullcream|galakras"] = { 1, 2, 0, 891 },
			["Technique|raden"] = { 1, 2, -10, 1127 },
			["Xatica|pagle"] = { 3, 0, 25, 68 },
			["Aarôn|raden"] = { 0, 2, -28, 500 },
			["Bistwo|raden"] = { 0, 2, -26, 1032 },
			["Booku|pagle"] = { 1, 1, 17, 978 },
			["Carnilumen|pagle"] = { 1, 1, 9, 672 },
			["Clayia|raden"] = { 1, 1, 2, 972 },
			["Drlovee|benediction"] = { 1, 1, 20, 1036 },
			["Electabuzz|raden"] = { 0, 2, -13, 1056 },
			["Imperïa|pagle"] = { 1, 1, 0, 1268 },
			["Longswôrd|pagle"] = { 2, 0, 31, 1392 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 651 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 1158 },
			["Polutropos|galakras"] = { 0, 2, -24, 852 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1303 },
			["Apechamp|raden"] = { 0, 1, -11, 1116 },
			["Blankis|raden"] = { 0, 1, -5, 1273 },
			["Firecano|raden"] = { 1, 0, 1, 217 },
			["Larvá|raden"] = { 0, 1, -10, 1159 },
			["Miposhká|raden"] = { 0, 1, -15, 1166 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 1110 },
			["Thebucket|raden"] = { 0, 1, 0, 1062 },
			["Trapfiendx|raden"] = { 1, 0, 11, 802 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 650 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 973 },
			["Tastydank|raden"] = { 1, 0, 95, 868 },
		},
	},
}

