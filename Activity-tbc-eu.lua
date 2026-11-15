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
	built = 1794740360,
	builtText = "2026-11-15 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 683 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 683 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 581 },
			["Сократ|anniversary"] = { 14, 6, 32, 548 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 705 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 705 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 525 },
			["Garad|spineshatter"] = { 8, 3, 51, 627 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 688 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 525 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 714 },
			["Premier|spineshatter"] = { 1, 4, -35, 715 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 636 },
			["Roobey|spineshatter"] = { 1, 1, -8, 656 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 1020 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 995 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 683 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 683 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 581 },
			["Сократ|anniversary"] = { 14, 6, 32, 548 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 705 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 705 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 525 },
			["Formen|thunderstrike"] = { 7, 7, 28, 885 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 884 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 1015 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 885 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 885 },
			["Garad|spineshatter"] = { 8, 3, 51, 627 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 688 },
			["Delivers|spineshatter"] = { 6, 4, 53, 1014 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 1015 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 1015 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 824 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 823 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 885 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 885 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 776 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 774 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1337 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 525 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1284 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1282 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 848 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 850 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 885 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 714 },
			["Premier|spineshatter"] = { 1, 4, -35, 715 },
			["Forksache|spineshatter"] = { 3, 1, -13, 1046 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 795 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 795 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1065 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1306 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 636 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1125 },
			["Querng|spineshatter"] = { 0, 2, -43, 1132 },
			["Roobey|spineshatter"] = { 1, 1, -8, 656 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 705 },
		},
	},
}

