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
	built = 1794700765,
	builtText = "2026-11-14 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 23 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 23 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 45 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 45 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 28 },
			["Garad|spineshatter"] = { 7, 3, 47, 45 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 54 },
			["Premier|spineshatter"] = { 1, 4, -35, 55 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 45 },
			["Сократ|anniversary"] = { 2, 2, -5, 45 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 23 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 23 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 45 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 45 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 28 },
			["Garad|spineshatter"] = { 7, 3, 47, 45 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 164 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 163 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 116 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 115 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 54 },
			["Premier|spineshatter"] = { 1, 4, -35, 55 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 135 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 135 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 45 },
			["Сократ|anniversary"] = { 2, 2, -5, 45 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 23 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 23 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 45 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 45 },
			["Formen|thunderstrike"] = { 7, 7, 28, 225 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 224 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 225 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 225 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 28 },
			["Garad|spineshatter"] = { 7, 3, 47, 45 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 164 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 163 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 225 },
			["Delivers|spineshatter"] = { 5, 3, 56, 354 },
			["Druidcoachx|spineshatter"] = { 5, 3, 10, 355 },
			["Hawkowl|spineshatter"] = { 6, 2, 29, 356 },
			["Mblol|spineshatter"] = { 4, 4, -16, 360 },
			["Nocthornal|spineshatter"] = { 6, 2, 49, 355 },
			["Notagainqt|spineshatter"] = { 4, 4, -14, 335 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 189 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 116 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 115 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 190 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 225 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 54 },
			["Premier|spineshatter"] = { 1, 4, -35, 55 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 135 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 135 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 45 },
			["Сократ|anniversary"] = { 2, 2, -5, 45 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 225 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 360 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 335 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 23 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 23 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 45 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 45 },
			["Formen|thunderstrike"] = { 7, 7, 28, 225 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 224 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 355 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 225 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 225 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 28 },
			["Delivers|spineshatter"] = { 6, 4, 53, 354 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 355 },
			["Garad|spineshatter"] = { 7, 3, 47, 45 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 356 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 164 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 163 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 225 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 225 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 116 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 115 },
			["Oldp|spineshatter"] = { 4, 4, 4, 677 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 624 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 622 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 189 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 190 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 225 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 54 },
			["Premier|spineshatter"] = { 1, 4, -35, 55 },
			["Forksache|spineshatter"] = { 3, 1, -13, 386 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 135 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 135 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 45 },
			["Сократ|anniversary"] = { 2, 2, -5, 45 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 405 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 646 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 465 },
			["Querng|spineshatter"] = { 0, 2, -43, 472 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Notagainqt|spineshatter"] = { 33, 12, 25, 335 },
			["Mblol|spineshatter"] = { 28, 11, -89, 360 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 23 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 23 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 45 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 45 },
			["Tyzin|spineshatter"] = { 12, 7, 62, 28 },
			["Garad|spineshatter"] = { 11, 7, 58, 45 },
			["Druidcoachx|spineshatter"] = { 7, 7, -28, 355 },
			["Formen|thunderstrike"] = { 7, 7, 28, 225 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 224 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 355 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 225 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 225 },
			["Delivers|spineshatter"] = { 6, 4, 53, 354 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 356 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 164 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 163 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 225 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 225 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 116 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 115 },
			["Oldp|spineshatter"] = { 4, 4, 4, 677 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 624 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 622 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 189 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 190 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 225 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 54 },
			["Premier|spineshatter"] = { 1, 4, -35, 55 },
			["Davedosx|spineshatter"] = { 1, 3, -34, 1305 },
			["Forksache|spineshatter"] = { 3, 1, -13, 386 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 135 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 135 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 45 },
			["Сократ|anniversary"] = { 2, 2, -5, 45 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 405 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 646 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 465 },
			["Querng|spineshatter"] = { 0, 2, -43, 472 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 45 },
		},
	},
}

