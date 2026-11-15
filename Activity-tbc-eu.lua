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
	built = 1794704364,
	builtText = "2026-11-14 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 0, 3, -39, 58 },
			["Glk|spineshatter"] = { 1, 1, 2, 56 },
			["Roobey|spineshatter"] = { 1, 1, -8, 56 },
			["Garad|spineshatter"] = { 1, 0, 4, 28 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 83 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 83 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 105 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 105 },
			["Garad|spineshatter"] = { 8, 3, 51, 28 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 88 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 176 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 174 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 114 },
			["Premier|spineshatter"] = { 1, 4, -35, 115 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 105 },
			["Сократ|anniversary"] = { 2, 2, -5, 105 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 58 },
			["Glk|spineshatter"] = { 1, 1, 2, 56 },
			["Roobey|spineshatter"] = { 1, 1, -8, 56 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 83 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 83 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 105 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 105 },
			["Formen|thunderstrike"] = { 7, 7, 28, 285 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 284 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 285 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 285 },
			["Garad|spineshatter"] = { 8, 3, 51, 28 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 88 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 224 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 223 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 285 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 249 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 176 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 174 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 250 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 285 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 114 },
			["Premier|spineshatter"] = { 1, 4, -35, 115 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 195 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 195 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 105 },
			["Сократ|anniversary"] = { 2, 2, -5, 105 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 58 },
			["Glk|spineshatter"] = { 1, 1, 2, 56 },
			["Roobey|spineshatter"] = { 1, 1, -8, 56 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 285 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 420 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 395 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 83 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 83 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 105 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 105 },
			["Formen|thunderstrike"] = { 7, 7, 28, 285 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 284 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 415 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 285 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 285 },
			["Garad|spineshatter"] = { 8, 3, 51, 28 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 88 },
			["Delivers|spineshatter"] = { 6, 4, 53, 414 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 415 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 416 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 224 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 223 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 285 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 285 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 176 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 174 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 684 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 682 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 249 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 250 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 285 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 114 },
			["Premier|spineshatter"] = { 1, 4, -35, 115 },
			["Forksache|spineshatter"] = { 3, 1, -13, 446 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 195 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 195 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 105 },
			["Сократ|anniversary"] = { 2, 2, -5, 105 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 58 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 465 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 706 },
			["Glk|spineshatter"] = { 1, 1, 2, 56 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 525 },
			["Querng|spineshatter"] = { 0, 2, -43, 532 },
			["Roobey|spineshatter"] = { 1, 1, -8, 56 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 420 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 395 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 83 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 83 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 105 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 105 },
			["Formen|thunderstrike"] = { 7, 7, 28, 285 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 284 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 415 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 285 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 285 },
			["Garad|spineshatter"] = { 8, 3, 51, 28 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 88 },
			["Delivers|spineshatter"] = { 6, 4, 53, 414 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 415 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 416 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 224 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 223 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 285 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 285 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 176 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 174 },
			["Oldp|spineshatter"] = { 4, 4, 4, 737 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 684 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 682 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 249 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 250 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 285 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 114 },
			["Premier|spineshatter"] = { 1, 4, -35, 115 },
			["Davedosx|spineshatter"] = { 1, 3, -34, 1365 },
			["Forksache|spineshatter"] = { 3, 1, -13, 446 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 195 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 195 },
			["Пиноккио|anniversary"] = { 2, 2, -5, 105 },
			["Сократ|anniversary"] = { 2, 2, -5, 105 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 58 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 465 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 706 },
			["Glk|spineshatter"] = { 1, 1, 2, 56 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 525 },
			["Querng|spineshatter"] = { 0, 2, -43, 532 },
			["Roobey|spineshatter"] = { 1, 1, -8, 56 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 105 },
		},
	},
}

