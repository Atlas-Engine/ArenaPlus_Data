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
	built = 1794725963,
	builtText = "2026-11-15 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 12, 4, 37, 341 },
			["Сократ|anniversary"] = { 12, 4, 37, 308 },
			["Imzomba|spineshatter"] = { 10, 4, 48, 285 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 443 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 443 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 341 },
			["Сократ|anniversary"] = { 14, 6, 32, 308 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 465 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 465 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 285 },
			["Formen|thunderstrike"] = { 7, 7, 28, 645 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 644 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 645 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 645 },
			["Garad|spineshatter"] = { 8, 3, 51, 388 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 448 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 584 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 583 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 645 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 285 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 609 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 536 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 534 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 610 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 645 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 474 },
			["Premier|spineshatter"] = { 1, 4, -35, 475 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 555 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 555 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 396 },
			["Roobey|spineshatter"] = { 1, 1, -8, 416 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 645 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 465 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 780 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 755 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 443 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 443 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 341 },
			["Сократ|anniversary"] = { 14, 6, 32, 308 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 465 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 465 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 285 },
			["Formen|thunderstrike"] = { 7, 7, 28, 645 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 644 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 775 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 645 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 645 },
			["Garad|spineshatter"] = { 8, 3, 51, 388 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 448 },
			["Delivers|spineshatter"] = { 6, 4, 53, 774 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 775 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 775 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 584 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 583 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 645 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 645 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 536 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 534 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1097 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 285 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1044 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1042 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 609 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 610 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 645 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 474 },
			["Premier|spineshatter"] = { 1, 4, -35, 475 },
			["Forksache|spineshatter"] = { 3, 1, -13, 806 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 555 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 555 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 825 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1066 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 396 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 885 },
			["Querng|spineshatter"] = { 0, 2, -43, 892 },
			["Roobey|spineshatter"] = { 1, 1, -8, 416 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 465 },
		},
	},
}

