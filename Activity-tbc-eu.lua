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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1794689960,
	builtText = "2026-11-14 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Formen|thunderstrike"] = { 7, 7, 28, 45 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 44 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 45 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 45 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 45 },
			["Tsukopriest|spineshatter"] = { 1, 3, -18, 45 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Formen|thunderstrike"] = { 7, 7, 28, 45 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 44 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 45 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 45 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 45 },
			["Delivers|spineshatter"] = { 5, 3, 56, 174 },
			["Druidcoachx|spineshatter"] = { 5, 3, 10, 175 },
			["Hawkowl|spineshatter"] = { 6, 2, 29, 175 },
			["Mblol|spineshatter"] = { 4, 4, -16, 180 },
			["Nocthornal|spineshatter"] = { 6, 2, 49, 175 },
			["Notagainqt|spineshatter"] = { 4, 4, -14, 155 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 45 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 13, -4, 227 },
			["Shadøwsfall|thunderstrike"] = { 20, 13, -4, 228 },
			["Mblol|spineshatter"] = { 15, 5, 29, 180 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 155 },
			["Formen|thunderstrike"] = { 7, 7, 28, 45 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 44 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 175 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 45 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 45 },
			["Delivers|spineshatter"] = { 6, 4, 53, 174 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 175 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 175 },
			["Orcabrina|spineshatter"] = { 6, 3, -8, 340 },
			["Sustanøn|spineshatter"] = { 6, 3, -8, 341 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 45 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 45 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 45 },
			["Forksache|spineshatter"] = { 3, 1, -13, 206 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 225 },
			["Ilovejade|spineshatter"] = { 2, 0, 3, 215 },
			["Invinciblexx|spineshatter"] = { 2, 0, 3, 215 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 285 },
			["Querng|spineshatter"] = { 0, 2, -43, 292 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 25, 17, -25, 227 },
			["Shadøwsfall|thunderstrike"] = { 25, 17, -25, 228 },
			["Mblol|spineshatter"] = { 28, 11, -89, 180 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 155 },
			["Formen|thunderstrike"] = { 7, 7, 28, 45 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 44 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 175 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 45 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 45 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 340 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 341 },
			["Delivers|spineshatter"] = { 6, 4, 53, 174 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 175 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 175 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 45 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 45 },
			["Oldp|spineshatter"] = { 4, 4, 4, 497 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 444 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 442 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 45 },
			["Forksache|spineshatter"] = { 3, 1, -13, 206 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 225 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 466 },
			["Ilovejade|spineshatter"] = { 2, 0, 3, 215 },
			["Invinciblexx|spineshatter"] = { 2, 0, 3, 215 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 285 },
			["Querng|spineshatter"] = { 0, 2, -43, 292 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 42, 17, 111, 155 },
			["Mblol|spineshatter"] = { 41, 16, -37, 180 },
			["Ellilol|thunderstrike"] = { 25, 17, -25, 227 },
			["Shadøwsfall|thunderstrike"] = { 25, 17, -25, 228 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 1349 },
			["Orcabrina|spineshatter"] = { 13, 11, -34, 340 },
			["Sustanøn|spineshatter"] = { 13, 11, -33, 341 },
			["Druidcoachx|spineshatter"] = { 15, 8, 65, 175 },
			["Imgæy|spineshatter"] = { 12, 11, -16, 1285 },
			["Primár|spineshatter"] = { 12, 11, -1, 1285 },
			["Garad|spineshatter"] = { 7, 13, -84, 1253 },
			["Tyzin|spineshatter"] = { 7, 13, -84, 1252 },
			["Izabelyrg|spineshatter"] = { 10, 9, 16, 1367 },
			["Formen|thunderstrike"] = { 7, 7, 28, 45 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 44 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 1306 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 1125 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 1305 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 175 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 45 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 45 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 1367 },
			["Delivers|spineshatter"] = { 6, 4, 53, 174 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 175 },
			["Budgetßolg|spineshatter"] = { 8, 1, 63, 1422 },
			["Lebsterr|spineshatter"] = { 8, 1, 63, 1422 },
			["Systemhack|spineshatter"] = { 5, 4, -15, 1392 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 45 },
			["Worldemoboss|spineshatter"] = { 5, 4, -39, 1423 },
			["Funkyxd|spineshatter"] = { 4, 4, -21, 1404 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 45 },
			["Oldp|spineshatter"] = { 4, 4, 4, 497 },
			["Twatcatcher|spineshatter"] = { 4, 4, -21, 1422 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 444 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 442 },
			["Glk|spineshatter"] = { 1, 5, 2, 1305 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 45 },
			["Bagladybetty|spineshatter"] = { 2, 2, -15, 1421 },
			["Forksache|spineshatter"] = { 3, 1, -13, 206 },
			["Arnesson|spineshatter"] = { 2, 1, 16, 1425 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 225 },
			["Lumskebuksen|thunderstrike"] = { 1, 2, -6, 1426 },
			["Nppn|spineshatter"] = { 2, 1, 16, 1427 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 466 },
			["Vindzxd|thunderstrike"] = { 1, 2, -9, 1426 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 1305 },
			["Ilovejade|spineshatter"] = { 2, 0, 3, 215 },
			["Invinciblexx|spineshatter"] = { 2, 0, 3, 215 },
			["Izcall|spineshatter"] = { 0, 2, -27, 1305 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 285 },
			["Querng|spineshatter"] = { 0, 2, -43, 292 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 1297 },
		},
		[2] = {
			["Kaelolo|spineshatter"] = { 2, 0, 13, 1384 },
			["Mblol|spineshatter"] = { 2, 0, 8, 1305 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 1305 },
		},
	},
}

