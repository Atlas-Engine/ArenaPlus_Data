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
	built = 1794733159,
	builtText = "2026-11-15 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 563 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 563 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 461 },
			["Сократ|anniversary"] = { 14, 6, 32, 428 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 585 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 585 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 405 },
			["Garad|spineshatter"] = { 8, 3, 51, 507 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 568 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 704 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 703 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 405 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 656 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 654 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 594 },
			["Premier|spineshatter"] = { 1, 4, -35, 595 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 675 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 675 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 516 },
			["Roobey|spineshatter"] = { 1, 1, -8, 536 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 585 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 900 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 875 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 563 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 563 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 461 },
			["Сократ|anniversary"] = { 14, 6, 32, 428 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 585 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 585 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 405 },
			["Formen|thunderstrike"] = { 7, 7, 28, 765 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 764 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 895 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 765 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 765 },
			["Garad|spineshatter"] = { 8, 3, 51, 507 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 568 },
			["Delivers|spineshatter"] = { 6, 4, 53, 894 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 895 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 895 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 704 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 703 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 765 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 765 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 656 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 654 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1217 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 405 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1164 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1162 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 728 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 730 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 765 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 594 },
			["Premier|spineshatter"] = { 1, 4, -35, 595 },
			["Forksache|spineshatter"] = { 3, 1, -13, 926 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 675 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 675 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 945 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1186 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 516 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1005 },
			["Querng|spineshatter"] = { 0, 2, -43, 1012 },
			["Roobey|spineshatter"] = { 1, 1, -8, 536 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 585 },
		},
	},
}

