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

ns.ACTIVITY_BY_REGION["eu"] = {
	built = 1795874438,
	builtText = "2026-11-28 09:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[2] = {
			["Atamal|shekzeer"] = { 9, 0, 53, 17 },
			["Gnomidge|hoptallus"] = { 9, 0, 46, 56 },
			["Melatonin|everlook"] = { 9, 0, 41, 56 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[2] = {
			["Atamal|shekzeer"] = { 9, 0, 53, 17 },
			["Gnomidge|hoptallus"] = { 9, 0, 46, 56 },
			["Melatonin|everlook"] = { 9, 0, 41, 56 },
			["Голмаш|flamegor"] = { 0, 5, -6, 168 },
			["Рыкай|flamegor"] = { 0, 5, -15, 168 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[2] = {
			["Gnomidge|hoptallus"] = { 14, 1, 76, 56 },
			["Melatonin|everlook"] = { 14, 1, 69, 56 },
			["Atamal|shekzeer"] = { 9, 0, 53, 17 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 235 },
			["Голмаш|flamegor"] = { 0, 5, -6, 168 },
			["Рыкай|flamegor"] = { 0, 5, -15, 168 },
			["Batix|shekzeer"] = { 1, 0, 17, 216 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 218 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 218 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Frannkytv|shekzeer"] = { 7, 3, 130, 708 },
			["Grumpyolbaby|shekzeer"] = { 2, 5, -15, 708 },
			["Cherryontop|shekzeer"] = { 4, 0, 51, 708 },
			["Kennyk|shekzeer"] = { 0, 4, -27, 708 },
			["Phsydon|everlook"] = { 1, 1, -10, 708 },
			["Rogunjaknoha|norushen"] = { 0, 2, 0, 705 },
			["Diskotrisko|norushen"] = { 0, 1, -6, 708 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 14, 1, 76, 56 },
			["Melatonin|everlook"] = { 14, 1, 69, 56 },
			["Atamal|shekzeer"] = { 9, 0, 53, 17 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 235 },
			["Голмаш|flamegor"] = { 0, 5, -6, 168 },
			["Рыкай|flamegor"] = { 0, 5, -15, 168 },
			["Batix|shekzeer"] = { 1, 0, 17, 216 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 218 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 218 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Weaverok|shekzeer"] = { 11, 13, 22, 889 },
			["Jakamaestro|shekzeer"] = { 17, 6, 99, 754 },
			["ßonnießlue|shekzeer"] = { 17, 6, -10, 762 },
			["Ayvara|shekzeer"] = { 8, 14, -32, 840 },
			["Frannkytv|shekzeer"] = { 9, 13, 175, 708 },
			["Grumpyolbaby|shekzeer"] = { 11, 11, 34, 708 },
			["Mythrugun|shekzeer"] = { 8, 14, -32, 835 },
			["Zok|shekzeer"] = { 11, 11, 10, 804 },
			["Ivonsa|garalon"] = { 10, 11, -27, 881 },
			["Brazqrx|shekzeer"] = { 7, 11, -34, 969 },
			["Kalreth|shekzeer"] = { 14, 1, 124, 760 },
			["Numanuxna|shekzeer"] = { 8, 5, 0, 1046 },
			["Conservé|shekzeer"] = { 5, 6, -13, 882 },
			["Idontflinch|garalon"] = { 8, 2, 52, 888 },
			["Xddðð|shekzeer"] = { 7, 3, 48, 1066 },
			["Angrywife|shekzeer"] = { 7, 2, 13, 1286 },
			["Keyoo|shekzeer"] = { 7, 2, 6, 1264 },
			["Сочныиочень|flamegor"] = { 5, 4, -8, 938 },
			["Эрмантраутх|flamegor"] = { 5, 4, -11, 938 },
			["Brazqr|shekzeer"] = { 3, 5, -57, 924 },
			["Marlk|shekzeer"] = { 2, 6, -16, 1075 },
			["ßlinkd|shekzeer"] = { 3, 5, -50, 888 },
			["Bakomba|shekzeer"] = { 3, 4, 3, 970 },
			["Bðring|shekzeer"] = { 1, 6, -32, 837 },
			["Gódx|shekzeer"] = { 2, 5, -33, 829 },
			["Mists|shekzeer"] = { 7, 0, 16, 789 },
			["Reflectiøn|shekzeer"] = { 2, 5, -1, 830 },
			["Vrctx|shekzeer"] = { 6, 1, 22, 963 },
			["Zéus|shekzeer"] = { 1, 6, -31, 840 },
			["Flárín|shekzeer"] = { 3, 3, 48, 1019 },
			["Supai|shekzeer"] = { 4, 2, 15, 888 },
			["Cherryontop|shekzeer"] = { 4, 1, 51, 708 },
			["Ineo|shekzeer"] = { 0, 5, -11, 900 },
			["Satåna|garalon"] = { 4, 1, 14, 963 },
			["Dóris|ook-ook"] = { 1, 3, -7, 740 },
			["Kakalocko|shekzeer"] = { 1, 3, -4, 1399 },
			["Kennyk|shekzeer"] = { 0, 4, -27, 708 },
			["Orestis|norushen"] = { 1, 3, 20, 900 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 1423 },
			["Satåntrapbot|shekzeer"] = { 4, 0, 5, 858 },
			["Bernadeta|shekzeer"] = { 0, 3, -27, 1103 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 1248 },
			["Jäckynkôô|hoptallus"] = { 0, 3, -30, 1103 },
			["Lëvî|shekzeer"] = { 1, 2, -3, 1046 },
			["Lukelittler|everlook"] = { 0, 3, -11, 1248 },
			["Lúná|ook-ook"] = { 1, 2, 16, 741 },
			["Tastemydmg|shekzeer"] = { 1, 2, 9, 1335 },
			["Tyralíon|shekzeer"] = { 1, 2, 9, 1335 },
			["Adesanya|shekzeer"] = { 2, 0, 21, 878 },
			["Anadosova|shekzeer"] = { 2, 0, 21, 1392 },
			["Crazyskiill|shekzeer"] = { 1, 1, 5, 1248 },
			["Crazyskill|shekzeer"] = { 0, 2, -17, 1266 },
			["Diskotrisko|norushen"] = { 0, 2, -13, 708 },
			["Hopedieslast|shekzeer"] = { 0, 2, -27, 888 },
			["Kasuny|everlook"] = { 1, 1, 0, 1293 },
			["Lácana|everlook"] = { 1, 1, -6, 1293 },
			["Makkezi|shekzeer"] = { 1, 1, 13, 1220 },
			["Phsydon|everlook"] = { 1, 1, -10, 708 },
			["Remedy|shekzeer"] = { 2, 0, 21, 875 },
			["Rogunjaknoha|norushen"] = { 0, 2, 0, 705 },
			["Skyráw|shekzeer"] = { 0, 2, -29, 934 },
			["ßráhmálølz|shekzeer"] = { 1, 1, 7, 1248 },
			["Ziggemaster|shekzeer"] = { 1, 1, 14, 1210 },
			["Cavitaas|ook-ook"] = { 1, 0, 16, 983 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 1328 },
			["Durianlover|shekzeer"] = { 0, 1, -8, 1068 },
			["Holyknightlx|shekzeer"] = { 0, 1, -5, 827 },
			["Lunkkaa|hoptallus"] = { 0, 1, -1, 1308 },
			["Roels|shekzeer"] = { 0, 1, -4, 825 },
			["Satånaz|shekzeer"] = { 1, 0, 2, 819 },
			["Sixtyzen|everlook"] = { 1, 0, 16, 888 },
			["Sossos|hoptallus"] = { 0, 1, -2, 1299 },
			["Wingsfuhrer|shekzeer"] = { 0, 1, 0, 1093 },
			["Winkáy|shekzeer"] = { 0, 1, -5, 966 },
			["Wutàngclan|ook-ook"] = { 0, 1, -9, 778 },
			["Zhili|hoptallus"] = { 0, 1, -5, 1248 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 14, 1, 76, 56 },
			["Melatonin|everlook"] = { 14, 1, 69, 56 },
			["Crazyskiill|shekzeer"] = { 8, 3, 170, 1182 },
			["Atamal|shekzeer"] = { 9, 0, 53, 17 },
			["Ineo|shekzeer"] = { 1, 7, 96, 1068 },
			["Orestis|norushen"] = { 1, 7, 96, 1184 },
			["Xasos|mirage-raceway"] = { 1, 7, 96, 1066 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 235 },
			["Голмаш|flamegor"] = { 0, 5, -6, 168 },
			["Рыкай|flamegor"] = { 0, 5, -15, 168 },
			["Павлорион|flamegor"] = { 2, 1, 36, 1179 },
			["Цианидвектор|flamegor"] = { 2, 1, 43, 1183 },
			["Batix|shekzeer"] = { 1, 0, 17, 216 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 218 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 218 },
		},
	},
}

