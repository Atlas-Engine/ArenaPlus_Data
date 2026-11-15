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
	built = 1794707962,
	builtText = "2026-11-14 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 12, 4, 37, 41 },
			["Glk|spineshatter"] = { 0, 4, -39, 17 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 143 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 143 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 41 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 165 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 165 },
			["Garad|spineshatter"] = { 8, 3, 51, 87 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 148 },
			["Glk|spineshatter"] = { 1, 5, -37, 17 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 174 },
			["Premier|spineshatter"] = { 1, 4, -35, 175 },
			["Сократ|anniversary"] = { 2, 2, -5, 165 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 118 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 96 },
			["Roobey|spineshatter"] = { 1, 1, -8, 116 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 143 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 143 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 41 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 165 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 165 },
			["Formen|thunderstrike"] = { 7, 7, 28, 345 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 344 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 345 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 345 },
			["Garad|spineshatter"] = { 8, 3, 51, 87 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 148 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 284 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 283 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 309 },
			["Glk|spineshatter"] = { 1, 5, -37, 17 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 236 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 234 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 310 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 345 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 174 },
			["Premier|spineshatter"] = { 1, 4, -35, 175 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 255 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 255 },
			["Tsukopriest|spineshatter"] = { 1, 3, -18, 345 },
			["Сократ|anniversary"] = { 2, 2, -5, 165 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 118 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 96 },
			["Roobey|spineshatter"] = { 1, 1, -8, 116 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 345 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 480 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 455 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 143 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 143 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 41 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 165 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 165 },
			["Formen|thunderstrike"] = { 7, 7, 28, 345 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 344 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 475 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 345 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 345 },
			["Garad|spineshatter"] = { 8, 3, 51, 87 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 148 },
			["Delivers|spineshatter"] = { 6, 4, 53, 474 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 475 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 475 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 284 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 283 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 345 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 236 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 234 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 309 },
			["Glk|spineshatter"] = { 1, 5, -37, 17 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 345 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 310 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 345 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 174 },
			["Premier|spineshatter"] = { 1, 4, -35, 175 },
			["Forksache|spineshatter"] = { 3, 1, -13, 506 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 255 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 255 },
			["Сократ|anniversary"] = { 2, 2, -5, 165 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 118 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 525 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 96 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 585 },
			["Querng|spineshatter"] = { 0, 2, -43, 592 },
			["Roobey|spineshatter"] = { 1, 1, -8, 116 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 480 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 455 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 143 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 143 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 41 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 165 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 165 },
			["Formen|thunderstrike"] = { 7, 7, 28, 345 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 344 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 475 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 345 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 345 },
			["Garad|spineshatter"] = { 8, 3, 51, 87 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 148 },
			["Delivers|spineshatter"] = { 6, 4, 53, 474 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 475 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 475 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 284 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 283 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 345 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 345 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 236 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 234 },
			["Oldp|spineshatter"] = { 4, 4, 4, 797 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 744 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 742 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 309 },
			["Glk|spineshatter"] = { 1, 5, -37, 17 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 310 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 345 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 174 },
			["Premier|spineshatter"] = { 1, 4, -35, 175 },
			["Davedosx|spineshatter"] = { 1, 3, -34, 1425 },
			["Forksache|spineshatter"] = { 3, 1, -13, 506 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 255 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 255 },
			["Сократ|anniversary"] = { 2, 2, -5, 165 },
			["Imzomba|spineshatter"] = { 0, 3, -39, 118 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 525 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 766 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 96 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 585 },
			["Querng|spineshatter"] = { 0, 2, -43, 592 },
			["Roobey|spineshatter"] = { 1, 1, -8, 116 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 165 },
		},
	},
}

