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
	built = 1795870823,
	builtText = "2026-11-28 08:00 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[2] = {
			["Gnomidge|hoptallus"] = { 5, 1, 30, 142 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 174 },
			["Melatonin|everlook"] = { 5, 1, 28, 139 },
			["Голмаш|flamegor"] = { 0, 5, -6, 107 },
			["Рыкай|flamegor"] = { 0, 5, -15, 107 },
			["Batix|shekzeer"] = { 1, 0, 17, 156 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 157 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 157 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[2] = {
			["Gnomidge|hoptallus"] = { 5, 1, 30, 142 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 174 },
			["Melatonin|everlook"] = { 5, 1, 28, 139 },
			["Голмаш|flamegor"] = { 0, 5, -6, 107 },
			["Рыкай|flamegor"] = { 0, 5, -15, 107 },
			["Batix|shekzeer"] = { 1, 0, 17, 156 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 157 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 157 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Frannkytv|shekzeer"] = { 7, 3, 130, 647 },
			["Kalreth|shekzeer"] = { 8, 1, 75, 699 },
			["Grumpyolbaby|shekzeer"] = { 2, 5, -15, 647 },
			["Cherryontop|shekzeer"] = { 4, 0, 51, 647 },
			["Dóris|ook-ook"] = { 1, 3, -7, 680 },
			["Kennyk|shekzeer"] = { 0, 4, -27, 647 },
			["Jakamaestro|shekzeer"] = { 2, 1, 13, 694 },
			["Lúná|ook-ook"] = { 1, 2, 16, 680 },
			["ßonnießlue|shekzeer"] = { 2, 1, 4, 701 },
			["Diskotrisko|norushen"] = { 0, 2, -13, 647 },
			["Phsydon|everlook"] = { 1, 1, -10, 647 },
			["Rogunjaknoha|norushen"] = { 0, 2, 0, 645 },
			["Wutàngclan|ook-ook"] = { 0, 1, -9, 718 },
		},
		[2] = {
			["Gnomidge|hoptallus"] = { 5, 1, 30, 142 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 174 },
			["Melatonin|everlook"] = { 5, 1, 28, 139 },
			["Голмаш|flamegor"] = { 0, 5, -6, 107 },
			["Рыкай|flamegor"] = { 0, 5, -15, 107 },
			["Batix|shekzeer"] = { 1, 0, 17, 156 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 157 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 157 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Weaverok|shekzeer"] = { 11, 13, 22, 828 },
			["Jakamaestro|shekzeer"] = { 17, 6, 99, 694 },
			["ßonnießlue|shekzeer"] = { 17, 6, -10, 701 },
			["Ayvara|shekzeer"] = { 8, 14, -32, 780 },
			["Frannkytv|shekzeer"] = { 9, 13, 175, 647 },
			["Grumpyolbaby|shekzeer"] = { 11, 11, 34, 647 },
			["Mythrugun|shekzeer"] = { 8, 14, -32, 774 },
			["Zok|shekzeer"] = { 11, 11, 10, 744 },
			["Ivonsa|garalon"] = { 10, 11, -27, 821 },
			["Brazqrx|shekzeer"] = { 7, 11, -34, 909 },
			["Kalreth|shekzeer"] = { 14, 1, 124, 699 },
			["Numanuxna|shekzeer"] = { 8, 5, 0, 986 },
			["Conservé|shekzeer"] = { 5, 6, -13, 821 },
			["Idontflinch|garalon"] = { 8, 2, 52, 827 },
			["Xddðð|shekzeer"] = { 7, 3, 48, 1006 },
			["Angrywife|shekzeer"] = { 7, 2, 13, 1226 },
			["Keyoo|shekzeer"] = { 7, 2, 6, 1204 },
			["Сочныиочень|flamegor"] = { 5, 4, -8, 877 },
			["Эрмантраутх|flamegor"] = { 5, 4, -11, 878 },
			["Brazqr|shekzeer"] = { 3, 5, -57, 864 },
			["Marlk|shekzeer"] = { 2, 6, -16, 1014 },
			["ßlinkd|shekzeer"] = { 3, 5, -50, 827 },
			["Bakomba|shekzeer"] = { 3, 4, 3, 910 },
			["Bðring|shekzeer"] = { 1, 6, -32, 777 },
			["Gódx|shekzeer"] = { 2, 5, -33, 769 },
			["Mists|shekzeer"] = { 7, 0, 16, 729 },
			["Reflectiøn|shekzeer"] = { 2, 5, -1, 770 },
			["Vrctx|shekzeer"] = { 6, 1, 22, 903 },
			["Zéus|shekzeer"] = { 1, 6, -31, 779 },
			["Flárín|shekzeer"] = { 3, 3, 48, 959 },
			["Supai|shekzeer"] = { 4, 2, 15, 827 },
			["Cherryontop|shekzeer"] = { 4, 1, 51, 647 },
			["Ineo|shekzeer"] = { 0, 5, -11, 840 },
			["Satåna|garalon"] = { 4, 1, 14, 902 },
			["Dóris|ook-ook"] = { 1, 3, -7, 680 },
			["Kakalocko|shekzeer"] = { 1, 3, -4, 1339 },
			["Kennyk|shekzeer"] = { 0, 4, -27, 647 },
			["Orestis|norushen"] = { 1, 3, 20, 840 },
			["Rodnichek|shekzeer"] = { 1, 3, -13, 1363 },
			["Satåntrapbot|shekzeer"] = { 4, 0, 5, 798 },
			["Bernadeta|shekzeer"] = { 0, 3, -27, 1043 },
			["Coldcofeesux|shekzeer"] = { 1, 2, -8, 1187 },
			["Jäckynkôô|hoptallus"] = { 0, 3, -30, 1043 },
			["Lëvî|shekzeer"] = { 1, 2, -3, 985 },
			["Lukelittler|everlook"] = { 0, 3, -11, 1187 },
			["Lúná|ook-ook"] = { 1, 2, 16, 680 },
			["Tastemydmg|shekzeer"] = { 1, 2, 9, 1275 },
			["Tyralíon|shekzeer"] = { 1, 2, 9, 1275 },
			["Adesanya|shekzeer"] = { 2, 0, 21, 817 },
			["Anadosova|shekzeer"] = { 2, 0, 21, 1332 },
			["Crazyskiill|shekzeer"] = { 1, 1, 5, 1187 },
			["Crazyskill|shekzeer"] = { 0, 2, -17, 1205 },
			["Diskotrisko|norushen"] = { 0, 2, -13, 647 },
			["Hopedieslast|shekzeer"] = { 0, 2, -27, 827 },
			["Kasuny|everlook"] = { 1, 1, 0, 1233 },
			["Lácana|everlook"] = { 1, 1, -6, 1233 },
			["Makkezi|shekzeer"] = { 1, 1, 13, 1160 },
			["Phsydon|everlook"] = { 1, 1, -10, 647 },
			["Remedy|shekzeer"] = { 2, 0, 21, 814 },
			["Rogunjaknoha|norushen"] = { 0, 2, 0, 645 },
			["Skyráw|shekzeer"] = { 0, 2, -29, 874 },
			["ßráhmálølz|shekzeer"] = { 1, 1, 7, 1187 },
			["Ziggemaster|shekzeer"] = { 1, 1, 14, 1149 },
			["Cavitaas|ook-ook"] = { 1, 0, 16, 922 },
			["Derxibro|shekzeer"] = { 1, 0, 4, 1267 },
			["Durianlover|shekzeer"] = { 0, 1, -8, 1007 },
			["Holyknightlx|shekzeer"] = { 0, 1, -5, 767 },
			["Lunkkaa|hoptallus"] = { 0, 1, -1, 1248 },
			["Roels|shekzeer"] = { 0, 1, -4, 765 },
			["Satånaz|shekzeer"] = { 1, 0, 2, 759 },
			["Sixtyzen|everlook"] = { 1, 0, 16, 827 },
			["Sossos|hoptallus"] = { 0, 1, -2, 1239 },
			["Wingsfuhrer|shekzeer"] = { 0, 1, 0, 1033 },
			["Winkáy|shekzeer"] = { 0, 1, -5, 906 },
			["Wutàngclan|ook-ook"] = { 0, 1, -9, 718 },
			["Zhili|hoptallus"] = { 0, 1, -5, 1187 },
		},
		[2] = {
			["Crazyskiill|shekzeer"] = { 8, 3, 170, 1122 },
			["Ineo|shekzeer"] = { 1, 7, 96, 1007 },
			["Orestis|norushen"] = { 1, 7, 96, 1124 },
			["Xasos|mirage-raceway"] = { 1, 7, 96, 1006 },
			["Gnomidge|hoptallus"] = { 5, 1, 30, 142 },
			["Jäckynkô|hoptallus"] = { 5, 1, 20, 174 },
			["Melatonin|everlook"] = { 5, 1, 28, 139 },
			["Голмаш|flamegor"] = { 0, 5, -6, 107 },
			["Рыкай|flamegor"] = { 0, 5, -15, 107 },
			["Павлорион|flamegor"] = { 2, 1, 36, 1118 },
			["Цианидвектор|flamegor"] = { 2, 1, 43, 1123 },
			["Batix|shekzeer"] = { 1, 0, 17, 156 },
			["Therealfq|shekzeer"] = { 1, 0, 3, 157 },
			["Weaverok|shekzeer"] = { 1, 0, 6, 157 },
		},
	},
}

