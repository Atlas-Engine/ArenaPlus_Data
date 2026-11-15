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
	built = 1794729559,
	builtText = "2026-11-15 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 4, 48, 345 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 503 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 503 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 401 },
			["Сократ|anniversary"] = { 14, 6, 32, 368 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 525 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 525 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 345 },
			["Formen|thunderstrike"] = { 7, 7, 28, 705 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 704 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 705 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 705 },
			["Garad|spineshatter"] = { 8, 3, 51, 447 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 508 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 644 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 643 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 345 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 668 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 596 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 594 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 670 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 705 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 534 },
			["Premier|spineshatter"] = { 1, 4, -35, 535 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 615 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 615 },
			["Tsukopriest|spineshatter"] = { 1, 3, -18, 705 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 456 },
			["Roobey|spineshatter"] = { 1, 1, -8, 476 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 705 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 525 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 840 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 815 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 503 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 503 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 401 },
			["Сократ|anniversary"] = { 14, 6, 32, 368 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 525 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 525 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 345 },
			["Formen|thunderstrike"] = { 7, 7, 28, 705 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 704 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 835 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 705 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 705 },
			["Garad|spineshatter"] = { 8, 3, 51, 447 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 508 },
			["Delivers|spineshatter"] = { 6, 4, 53, 834 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 835 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 835 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 644 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 643 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 705 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 705 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 596 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 594 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1157 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 345 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1104 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1102 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 668 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 670 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 705 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 534 },
			["Premier|spineshatter"] = { 1, 4, -35, 535 },
			["Forksache|spineshatter"] = { 3, 1, -13, 866 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 615 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 615 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 885 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1126 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 456 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 945 },
			["Querng|spineshatter"] = { 0, 2, -43, 952 },
			["Roobey|spineshatter"] = { 1, 1, -8, 476 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 525 },
		},
	},
}

