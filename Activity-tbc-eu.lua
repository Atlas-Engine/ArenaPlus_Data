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
	built = 1794711562,
	builtText = "2026-11-14 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 4, 48, 45 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 7, 9, 45 },
			["Пиноккио|anniversary"] = { 12, 4, 37, 101 },
			["Сократ|anniversary"] = { 12, 4, 37, 68 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 45 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 156 },
			["Roobey|spineshatter"] = { 1, 1, -8, 176 },
			["Garad|spineshatter"] = { 1, 0, 4, 147 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 203 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 203 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 101 },
			["Сократ|anniversary"] = { 14, 6, 32, 68 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 225 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 225 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 45 },
			["Garad|spineshatter"] = { 8, 3, 51, 147 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 208 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 344 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 343 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 45 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 296 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 294 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 234 },
			["Premier|spineshatter"] = { 1, 4, -35, 235 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 315 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 315 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 156 },
			["Roobey|spineshatter"] = { 1, 1, -8, 176 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 19, 14, -20, 203 },
			["Sustanøn|spineshatter"] = { 19, 14, -17, 203 },
			["Mblol|spineshatter"] = { 15, 5, 29, 540 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 515 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 101 },
			["Сократ|anniversary"] = { 14, 6, 32, 68 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 225 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 225 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 45 },
			["Formen|thunderstrike"] = { 7, 7, 28, 405 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 404 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 535 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 405 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 405 },
			["Garad|spineshatter"] = { 8, 3, 51, 147 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 208 },
			["Delivers|spineshatter"] = { 6, 4, 53, 534 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 535 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 535 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 344 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 343 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 405 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 296 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 294 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 45 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 369 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 405 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 370 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 405 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 234 },
			["Premier|spineshatter"] = { 1, 4, -35, 235 },
			["Forksache|spineshatter"] = { 3, 1, -13, 566 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 315 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 315 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 585 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 156 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 645 },
			["Querng|spineshatter"] = { 0, 2, -43, 652 },
			["Roobey|spineshatter"] = { 1, 1, -8, 176 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 225 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 540 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 515 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 203 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 203 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 101 },
			["Сократ|anniversary"] = { 14, 6, 32, 68 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 225 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 225 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 45 },
			["Formen|thunderstrike"] = { 7, 7, 28, 405 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 404 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 535 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 405 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 405 },
			["Garad|spineshatter"] = { 8, 3, 51, 147 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 208 },
			["Delivers|spineshatter"] = { 6, 4, 53, 534 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 535 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 535 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 344 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 343 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 405 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 405 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 296 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 294 },
			["Oldp|spineshatter"] = { 4, 4, 4, 857 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 45 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 804 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 802 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 369 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 370 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 405 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 234 },
			["Premier|spineshatter"] = { 1, 4, -35, 235 },
			["Forksache|spineshatter"] = { 3, 1, -13, 566 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 315 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 315 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 585 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 826 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 156 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 645 },
			["Querng|spineshatter"] = { 0, 2, -43, 652 },
			["Roobey|spineshatter"] = { 1, 1, -8, 176 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 225 },
		},
	},
}

