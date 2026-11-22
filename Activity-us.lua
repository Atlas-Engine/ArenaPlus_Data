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
	built = 1795305590,
	builtText = "2026-11-21 07:00 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Tamerak|raden"] = { 5, 3, -18, 16 },
			["Glinna|raden"] = { 0, 1, -13, 8 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Clomar|nazgrim"] = { 7, 3, 43, 72 },
			["Møønzx|galakras"] = { 5, 5, -26, 72 },
			["Saintarmor|pagle"] = { 7, 3, 27, 72 },
			["Tamerak|raden"] = { 7, 3, -3, 16 },
			["Ivoxygen|pagle"] = { 5, 2, 77, 112 },
			["Glinna|raden"] = { 3, 1, 5, 8 },
			["Yvlxd|pagle"] = { 3, 1, 47, 158 },
			["Rankonewarz|benediction"] = { 1, 2, -16, 72 },
			["Healyee|immerseus"] = { 1, 1, 11, 72 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 13, 5, 17, 72 },
			["Clomar|nazgrim"] = { 7, 3, 43, 72 },
			["Saintarmor|pagle"] = { 7, 3, 27, 72 },
			["Tamerak|raden"] = { 7, 3, -3, 16 },
			["Ivoxygen|pagle"] = { 5, 2, 77, 112 },
			["Glinna|raden"] = { 4, 1, 15, 8 },
			["Yvlxd|pagle"] = { 3, 1, 47, 158 },
			["Rankonewarz|benediction"] = { 1, 2, -16, 72 },
			["Xatica|pagle"] = { 3, 0, 25, 188 },
			["Healyee|immerseus"] = { 1, 1, 11, 72 },
			["Firecano|raden"] = { 1, 0, 1, 337 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Møønzx|galakras"] = { 13, 5, 17, 72 },
			["Clomar|nazgrim"] = { 7, 3, 43, 72 },
			["Saintarmor|pagle"] = { 7, 3, 27, 72 },
			["Tamerak|raden"] = { 7, 3, -3, 16 },
			["Ivoxygen|pagle"] = { 5, 2, 77, 112 },
			["Glinna|raden"] = { 4, 1, 15, 8 },
			["Yvlxd|pagle"] = { 3, 1, 47, 158 },
			["Rankonewarz|benediction"] = { 1, 2, -16, 72 },
			["Xatica|pagle"] = { 3, 0, 25, 188 },
			["Aarôn|raden"] = { 0, 2, -28, 620 },
			["Bamboi|pagle"] = { 2, 0, 6, 407 },
			["Healyee|immerseus"] = { 1, 1, 11, 72 },
			["Horniaf|pagle"] = { 2, 0, 6, 407 },
			["Livekirkly|raden"] = { 2, 0, 43, 612 },
			["Firecano|raden"] = { 1, 0, 1, 337 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Jugganar|raden"] = { 22, 14, 100, 1234 },
			["Kelmight|pagle"] = { 14, 21, 25, 1152 },
			["Poixon|pagle"] = { 14, 21, 20, 1152 },
			["Highwaymanx|pagle"] = { 13, 14, 41, 1134 },
			["Tamerak|raden"] = { 14, 12, -49, 16 },
			["Møønzx|galakras"] = { 13, 5, 17, 72 },
			["Boena|pagle"] = { 7, 9, 4, 1097 },
			["Jonwald|pagle"] = { 6, 9, 42, 1122 },
			["Mcjeezyy|pagle"] = { 6, 9, 42, 1121 },
			["Skeletonzx|galakras"] = { 12, 3, 41, 840 },
			["Glinna|raden"] = { 8, 6, 62, 8 },
			["Monktty|lei-shen"] = { 7, 7, -29, 1110 },
			["Nebuboom|nazgrim"] = { 7, 7, 47, 1249 },
			["Paulmanafort|pagle"] = { 10, 4, 30, 1059 },
			["Blankisa|raden"] = { 6, 7, 73, 1126 },
			["Tastydank|raden"] = { 4, 9, -38, 988 },
			["Teatable|raden"] = { 11, 2, -11, 1152 },
			["Unknownlegx|pagle"] = { 5, 8, 82, 972 },
			["Dankshots|lei-shen"] = { 10, 1, 96, 1152 },
			["Bamboi|pagle"] = { 7, 3, 40, 407 },
			["Clomar|nazgrim"] = { 7, 3, 43, 72 },
			["Cobrä|pagle"] = { 5, 5, 19, 1093 },
			["Horniaf|pagle"] = { 7, 3, 40, 407 },
			["Nurfme|raden"] = { 10, 0, 55, 1152 },
			["Saintarmor|pagle"] = { 7, 3, 27, 72 },
			["Skrylur|pagle"] = { 5, 5, 19, 1093 },
			["Swlfty|raden"] = { 9, 1, 34, 792 },
			["Guanyîn|raden"] = { 6, 3, 10, 1028 },
			["Livekirkly|raden"] = { 6, 3, 98, 612 },
			["Nilio|raden"] = { 6, 3, 42, 1000 },
			["Raijinkumax|pagle"] = { 6, 3, 27, 1033 },
			["Sugarbear|raden"] = { 9, 0, 48, 1264 },
			["Branco|raden"] = { 6, 2, -10, 1152 },
			["Fctry|raden"] = { 3, 4, 46, 1225 },
			["Ivoxygen|pagle"] = { 5, 2, 77, 112 },
			["Lvl|raden"] = { 3, 4, -14, 972 },
			["Tjax|raden"] = { 2, 5, 19, 1322 },
			["Verdex|raden"] = { 3, 4, 1, 972 },
			["Xzww|pagle"] = { 2, 5, 22, 1305 },
			["Youcutebb|raden"] = { 4, 3, 76, 1180 },
			["Fatmanscoop|raden"] = { 2, 4, -6, 1152 },
			["Sheerwill|pagle"] = { 6, 0, 31, 924 },
			["Theweave|raden"] = { 4, 2, 32, 1240 },
			["Chotter|pagle"] = { 0, 5, -18, 1039 },
			["Following|pagle"] = { 3, 2, 22, 879 },
			["Lockiecan|pagle"] = { 0, 5, 0, 1054 },
			["Lunchmeat|nazgrim"] = { 1, 4, -29, 792 },
			["Sponsorz|raden"] = { 1, 4, 16, 1208 },
			["Chiokeme|arugal-au"] = { 4, 0, 15, 862 },
			["Drgspit|pagle"] = { 2, 2, 16, 1332 },
			["Rettmonk|raden"] = { 0, 4, -61, 1114 },
			["Saintjuan|raden"] = { 1, 3, -6, 1230 },
			["Slumpfoo|raden"] = { 1, 3, -17, 1091 },
			["Stonêd|raden"] = { 2, 2, 42, 1334 },
			["Xntrixxz|arugal-au"] = { 0, 4, -63, 1112 },
			["Yvlxd|pagle"] = { 3, 1, 47, 158 },
			["Fullcream|galakras"] = { 1, 2, 0, 1011 },
			["Rankonewarz|benediction"] = { 1, 2, -16, 72 },
			["Technique|raden"] = { 1, 2, -10, 1247 },
			["Xatica|pagle"] = { 3, 0, 25, 188 },
			["Aarôn|raden"] = { 0, 2, -28, 620 },
			["Bistwo|raden"] = { 0, 2, -26, 1152 },
			["Booku|pagle"] = { 1, 1, 17, 1098 },
			["Carnilumen|pagle"] = { 1, 1, 9, 792 },
			["Clayia|raden"] = { 1, 1, 2, 1092 },
			["Drlovee|benediction"] = { 1, 1, 20, 1156 },
			["Electabuzz|raden"] = { 0, 2, -13, 1176 },
			["Healyee|immerseus"] = { 1, 1, 11, 72 },
			["Imperïa|pagle"] = { 1, 1, 0, 1388 },
			["Mòónfirebeam|raden"] = { 2, 0, 10, 771 },
			["Nvmxxtxx|raden"] = { 0, 2, -17, 1278 },
			["Polutropos|galakras"] = { 0, 2, -24, 972 },
			["Vseraphim|immerseus"] = { 1, 1, 0, 1423 },
			["Apechamp|raden"] = { 0, 1, -11, 1236 },
			["Blankis|raden"] = { 0, 1, -5, 1393 },
			["Firecano|raden"] = { 1, 0, 1, 337 },
			["Larvá|raden"] = { 0, 1, -10, 1279 },
			["Miposhká|raden"] = { 0, 1, -15, 1286 },
			["Nebupeach|nazgrim"] = { 0, 1, -7, 1230 },
			["Thebucket|raden"] = { 0, 1, 0, 1182 },
			["Trapfiendx|raden"] = { 1, 0, 11, 922 },
			["Xanacs|nazgrim"] = { 0, 1, 0, 770 },
		},
		[2] = {
			["Leownaa|pagle"] = { 1, 0, 21, 1093 },
			["Tastydank|raden"] = { 1, 0, 95, 988 },
		},
	},
}

