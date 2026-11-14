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
	built = 1794697162,
	builtText = "2026-11-14 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ilovejade|spineshatter"] = { 5, 1, 18, 56 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 54 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Formen|thunderstrike"] = { 7, 7, 28, 165 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 164 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 165 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 165 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 104 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 103 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 129 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 56 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 54 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 130 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 165 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 75 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 75 },
			["Tsukopriest|spineshatter"] = { 1, 3, -18, 165 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 13, -4, 347 },
			["Shadøwsfall|thunderstrike"] = { 20, 13, -4, 348 },
			["Mblol|spineshatter"] = { 15, 5, 29, 300 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 275 },
			["Formen|thunderstrike"] = { 7, 7, 28, 165 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 164 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 295 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 165 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 165 },
			["Delivers|spineshatter"] = { 6, 4, 53, 294 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 295 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 295 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 104 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 103 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 165 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 56 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 54 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 129 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 165 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 130 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 165 },
			["Forksache|spineshatter"] = { 3, 1, -13, 326 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 75 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 75 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 25, 17, -25, 347 },
			["Shadøwsfall|thunderstrike"] = { 25, 17, -25, 348 },
			["Mblol|spineshatter"] = { 28, 11, -89, 300 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 275 },
			["Formen|thunderstrike"] = { 7, 7, 28, 165 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 164 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 295 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 165 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 165 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 460 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 461 },
			["Delivers|spineshatter"] = { 6, 4, 53, 294 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 295 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 295 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 104 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 103 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 165 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 165 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 56 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 54 },
			["Oldp|spineshatter"] = { 4, 4, 4, 617 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 564 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 562 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 129 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 130 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 165 },
			["Forksache|spineshatter"] = { 3, 1, -13, 326 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 75 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 75 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 345 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 586 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 405 },
			["Querng|spineshatter"] = { 0, 2, -43, 412 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 42, 17, 111, 275 },
			["Mblol|spineshatter"] = { 41, 16, -37, 300 },
			["Ellilol|thunderstrike"] = { 25, 17, -25, 347 },
			["Shadøwsfall|thunderstrike"] = { 25, 17, -25, 348 },
			["Orcabrina|spineshatter"] = { 13, 11, -34, 460 },
			["Sustanøn|spineshatter"] = { 13, 11, -33, 461 },
			["Druidcoachx|spineshatter"] = { 15, 8, 65, 295 },
			["Primár|spineshatter"] = { 12, 11, -1, 1405 },
			["Imgæy|spineshatter"] = { 9, 10, -41, 1405 },
			["Formen|thunderstrike"] = { 7, 7, 28, 165 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 164 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 1426 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 1245 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 1425 },
			["Garad|spineshatter"] = { 7, 6, 9, 1373 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 295 },
			["Tyzin|spineshatter"] = { 7, 6, 9, 1372 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 165 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 165 },
			["Delivers|spineshatter"] = { 6, 4, 53, 294 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 295 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 104 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 103 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 165 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 165 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 56 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 54 },
			["Oldp|spineshatter"] = { 4, 4, 4, 617 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 564 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 562 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 129 },
			["Glk|spineshatter"] = { 1, 5, 2, 1425 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 130 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 165 },
			["Forksache|spineshatter"] = { 3, 1, -13, 326 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 75 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 75 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 345 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 586 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 1425 },
			["Izcall|spineshatter"] = { 0, 2, -27, 1425 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 405 },
			["Querng|spineshatter"] = { 0, 2, -43, 412 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 1417 },
		},
		[2] = {
			["Mblol|spineshatter"] = { 2, 0, 8, 1425 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 1425 },
		},
	},
}

