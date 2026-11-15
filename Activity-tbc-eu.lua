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
	built = 1794715160,
	builtText = "2026-11-14 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 12, 4, 37, 161 },
			["Сократ|anniversary"] = { 12, 4, 37, 128 },
			["Imzomba|spineshatter"] = { 10, 4, 48, 105 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 263 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 263 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 161 },
			["Сократ|anniversary"] = { 14, 6, 32, 128 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 285 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 285 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 105 },
			["Garad|spineshatter"] = { 8, 3, 51, 207 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 268 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 105 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 356 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 354 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 294 },
			["Premier|spineshatter"] = { 1, 4, -35, 295 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 216 },
			["Roobey|spineshatter"] = { 1, 1, -8, 236 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 263 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 263 },
			["Mblol|spineshatter"] = { 15, 5, 29, 600 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 575 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 161 },
			["Сократ|anniversary"] = { 14, 6, 32, 128 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 285 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 285 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 105 },
			["Formen|thunderstrike"] = { 7, 7, 28, 465 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 464 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 595 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 465 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 465 },
			["Garad|spineshatter"] = { 8, 3, 51, 207 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 268 },
			["Delivers|spineshatter"] = { 6, 4, 53, 594 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 595 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 595 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 404 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 403 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 465 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 356 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 354 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 105 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 428 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 465 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 430 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 465 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 294 },
			["Premier|spineshatter"] = { 1, 4, -35, 295 },
			["Forksache|spineshatter"] = { 3, 1, -13, 626 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 375 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 375 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 645 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 216 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 705 },
			["Querng|spineshatter"] = { 0, 2, -43, 712 },
			["Roobey|spineshatter"] = { 1, 1, -8, 236 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 285 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 600 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 575 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 263 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 263 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 161 },
			["Сократ|anniversary"] = { 14, 6, 32, 128 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 285 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 285 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 105 },
			["Formen|thunderstrike"] = { 7, 7, 28, 465 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 464 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 595 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 465 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 465 },
			["Garad|spineshatter"] = { 8, 3, 51, 207 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 268 },
			["Delivers|spineshatter"] = { 6, 4, 53, 594 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 595 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 595 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 404 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 403 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 465 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 465 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 356 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 354 },
			["Oldp|spineshatter"] = { 4, 4, 4, 917 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 105 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 864 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 862 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 428 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 430 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 465 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 294 },
			["Premier|spineshatter"] = { 1, 4, -35, 295 },
			["Forksache|spineshatter"] = { 3, 1, -13, 626 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 375 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 375 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 645 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 886 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 216 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 705 },
			["Querng|spineshatter"] = { 0, 2, -43, 712 },
			["Roobey|spineshatter"] = { 1, 1, -8, 236 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 285 },
		},
	},
}

