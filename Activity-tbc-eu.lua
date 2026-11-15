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
	built = 1794722364,
	builtText = "2026-11-15 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 7, 9, 225 },
			["Пиноккио|anniversary"] = { 12, 4, 37, 281 },
			["Сократ|anniversary"] = { 12, 4, 37, 248 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 225 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 336 },
			["Roobey|spineshatter"] = { 1, 1, -8, 356 },
			["Garad|spineshatter"] = { 1, 0, 4, 328 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 383 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 383 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 281 },
			["Сократ|anniversary"] = { 14, 6, 32, 248 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 405 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 405 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 225 },
			["Formen|thunderstrike"] = { 7, 7, 28, 585 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 584 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 585 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 585 },
			["Garad|spineshatter"] = { 8, 3, 51, 328 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 388 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 524 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 523 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 585 },
			["Delivers|spineshatter"] = { 5, 3, 56, 714 },
			["Druidcoachx|spineshatter"] = { 5, 3, 10, 715 },
			["Hawkowl|spineshatter"] = { 6, 2, 29, 716 },
			["Mblol|spineshatter"] = { 4, 4, -16, 720 },
			["Nocthornal|spineshatter"] = { 6, 2, 49, 715 },
			["Notagainqt|spineshatter"] = { 4, 4, -14, 695 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 225 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 549 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 476 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 474 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 550 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 585 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 414 },
			["Premier|spineshatter"] = { 1, 4, -35, 415 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 495 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 495 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 336 },
			["Roobey|spineshatter"] = { 1, 1, -8, 356 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 585 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 405 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 720 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 695 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 383 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 383 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 281 },
			["Сократ|anniversary"] = { 14, 6, 32, 248 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 405 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 405 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 225 },
			["Formen|thunderstrike"] = { 7, 7, 28, 585 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 584 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 715 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 585 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 585 },
			["Garad|spineshatter"] = { 8, 3, 51, 328 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 388 },
			["Delivers|spineshatter"] = { 6, 4, 53, 714 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 715 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 716 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 524 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 523 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 585 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 585 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 476 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 474 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1037 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 225 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 984 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 982 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 549 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 550 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 585 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 414 },
			["Premier|spineshatter"] = { 1, 4, -35, 415 },
			["Forksache|spineshatter"] = { 3, 1, -13, 746 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 495 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 495 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 765 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1006 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 336 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 825 },
			["Querng|spineshatter"] = { 0, 2, -43, 832 },
			["Roobey|spineshatter"] = { 1, 1, -8, 356 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 405 },
		},
	},
}

