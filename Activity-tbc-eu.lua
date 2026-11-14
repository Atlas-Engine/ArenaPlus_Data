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
	built = 1794693562,
	builtText = "2026-11-14 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Keepdistance|spineshatter"] = { 3, 7, -18, 44 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 43 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 15 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 15 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Formen|thunderstrike"] = { 7, 7, 28, 105 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 104 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 105 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 105 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 44 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 43 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 105 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 69 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 70 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 105 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 15 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 15 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 13, -4, 287 },
			["Shadøwsfall|thunderstrike"] = { 20, 13, -4, 288 },
			["Mblol|spineshatter"] = { 15, 5, 29, 240 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 215 },
			["Formen|thunderstrike"] = { 7, 7, 28, 105 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 104 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 235 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 105 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 105 },
			["Delivers|spineshatter"] = { 6, 4, 53, 234 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 235 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 235 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 44 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 43 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 105 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 69 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 105 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 70 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 105 },
			["Forksache|spineshatter"] = { 3, 1, -13, 266 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 15 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 15 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 285 },
			["Ilovejade|spineshatter"] = { 2, 0, 3, 275 },
			["Invinciblexx|spineshatter"] = { 2, 0, 3, 275 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 345 },
			["Querng|spineshatter"] = { 0, 2, -43, 352 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 25, 17, -25, 287 },
			["Shadøwsfall|thunderstrike"] = { 25, 17, -25, 288 },
			["Mblol|spineshatter"] = { 28, 11, -89, 240 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 215 },
			["Formen|thunderstrike"] = { 7, 7, 28, 105 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 104 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 235 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 105 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 105 },
			["Orcabrina|spineshatter"] = { 7, 4, -22, 400 },
			["Sustanøn|spineshatter"] = { 7, 4, -22, 401 },
			["Delivers|spineshatter"] = { 6, 4, 53, 234 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 235 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 235 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 44 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 43 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 105 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 105 },
			["Oldp|spineshatter"] = { 4, 4, 4, 557 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 504 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 502 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 69 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 70 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 105 },
			["Forksache|spineshatter"] = { 3, 1, -13, 266 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 15 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 15 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 285 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 526 },
			["Ilovejade|spineshatter"] = { 2, 0, 3, 275 },
			["Invinciblexx|spineshatter"] = { 2, 0, 3, 275 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 345 },
			["Querng|spineshatter"] = { 0, 2, -43, 352 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 42, 17, 111, 215 },
			["Mblol|spineshatter"] = { 41, 16, -37, 240 },
			["Ellilol|thunderstrike"] = { 25, 17, -25, 287 },
			["Shadøwsfall|thunderstrike"] = { 25, 17, -25, 288 },
			["Shadowpapa|spineshatter"] = { 16, 10, 77, 1409 },
			["Orcabrina|spineshatter"] = { 13, 11, -34, 400 },
			["Sustanøn|spineshatter"] = { 13, 11, -33, 401 },
			["Druidcoachx|spineshatter"] = { 15, 8, 65, 235 },
			["Primár|spineshatter"] = { 12, 11, -1, 1345 },
			["Imgæy|spineshatter"] = { 9, 10, -41, 1345 },
			["Izabelyrg|spineshatter"] = { 10, 9, 16, 1427 },
			["Formen|thunderstrike"] = { 7, 7, 28, 105 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 104 },
			["Sunodaix|spineshatter"] = { 8, 6, 12, 1366 },
			["Davedosx|spineshatter"] = { 9, 4, 38, 1185 },
			["Druidcoachxx|spineshatter"] = { 8, 5, -32, 1365 },
			["Garad|spineshatter"] = { 7, 6, 9, 1313 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 235 },
			["Tyzin|spineshatter"] = { 7, 6, 9, 1312 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 105 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 105 },
			["Bimbolo|spineshatter"] = { 3, 7, -25, 1427 },
			["Delivers|spineshatter"] = { 6, 4, 53, 234 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 235 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 44 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 43 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 105 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 105 },
			["Oldp|spineshatter"] = { 4, 4, 4, 557 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 504 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 502 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 69 },
			["Glk|spineshatter"] = { 1, 5, 2, 1365 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 70 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 105 },
			["Forksache|spineshatter"] = { 3, 1, -13, 266 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 15 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 15 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 285 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 526 },
			["Angelpowder|spineshatter"] = { 0, 2, -22, 1365 },
			["Ilovejade|spineshatter"] = { 2, 0, 3, 275 },
			["Invinciblexx|spineshatter"] = { 2, 0, 3, 275 },
			["Izcall|spineshatter"] = { 0, 2, -27, 1365 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 345 },
			["Querng|spineshatter"] = { 0, 2, -43, 352 },
			["Procahontas|spineshatter"] = { 1, 0, 3, 1357 },
		},
		[2] = {
			["Mblol|spineshatter"] = { 2, 0, 8, 1365 },
			["Notagainqt|spineshatter"] = { 2, 0, 10, 1365 },
		},
	},
}

