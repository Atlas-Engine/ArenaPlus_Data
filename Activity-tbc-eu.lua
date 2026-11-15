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
	built = 1794718761,
	builtText = "2026-11-14 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 4, 48, 165 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 323 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 323 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 221 },
			["Сократ|anniversary"] = { 14, 6, 32, 188 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 345 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 345 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 165 },
			["Garad|spineshatter"] = { 8, 3, 51, 267 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 328 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 165 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 354 },
			["Premier|spineshatter"] = { 1, 4, -35, 355 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 276 },
			["Roobey|spineshatter"] = { 1, 1, -8, 296 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 323 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 323 },
			["Mblol|spineshatter"] = { 15, 5, 29, 660 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 635 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 221 },
			["Сократ|anniversary"] = { 14, 6, 32, 188 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 345 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 345 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 165 },
			["Formen|thunderstrike"] = { 7, 7, 28, 525 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 524 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 655 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 525 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 525 },
			["Garad|spineshatter"] = { 8, 3, 51, 267 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 328 },
			["Delivers|spineshatter"] = { 6, 4, 53, 654 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 655 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 655 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 464 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 463 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 525 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 416 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 414 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 165 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 489 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 525 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 490 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 525 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 354 },
			["Premier|spineshatter"] = { 1, 4, -35, 355 },
			["Forksache|spineshatter"] = { 3, 1, -13, 686 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 435 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 435 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 705 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 276 },
			["Roobey|spineshatter"] = { 1, 1, -8, 296 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 345 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 660 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 635 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 323 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 323 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 221 },
			["Сократ|anniversary"] = { 14, 6, 32, 188 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 345 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 345 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 165 },
			["Formen|thunderstrike"] = { 7, 7, 28, 525 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 524 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 655 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 525 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 525 },
			["Garad|spineshatter"] = { 8, 3, 51, 267 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 328 },
			["Delivers|spineshatter"] = { 6, 4, 53, 654 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 655 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 655 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 464 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 463 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 525 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 525 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 416 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 414 },
			["Oldp|spineshatter"] = { 4, 4, 4, 977 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 165 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 924 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 922 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 489 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 490 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 525 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 354 },
			["Premier|spineshatter"] = { 1, 4, -35, 355 },
			["Forksache|spineshatter"] = { 3, 1, -13, 686 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 435 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 435 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 705 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 946 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 276 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 765 },
			["Querng|spineshatter"] = { 0, 2, -43, 772 },
			["Roobey|spineshatter"] = { 1, 1, -8, 296 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 345 },
		},
	},
}

