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
	built = 1794736760,
	builtText = "2026-11-15 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 623 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 623 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 521 },
			["Сократ|anniversary"] = { 14, 6, 32, 488 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 645 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 645 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 465 },
			["Garad|spineshatter"] = { 8, 3, 51, 567 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 628 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 465 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 716 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 714 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 654 },
			["Premier|spineshatter"] = { 1, 4, -35, 655 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 576 },
			["Roobey|spineshatter"] = { 1, 1, -8, 596 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 960 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 935 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 623 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 623 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 521 },
			["Сократ|anniversary"] = { 14, 6, 32, 488 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 645 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 645 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 465 },
			["Formen|thunderstrike"] = { 7, 7, 28, 825 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 824 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 955 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 825 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 825 },
			["Garad|spineshatter"] = { 8, 3, 51, 567 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 628 },
			["Delivers|spineshatter"] = { 6, 4, 53, 954 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 955 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 955 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 764 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 763 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 825 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 825 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 716 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 714 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1277 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 465 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1224 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1222 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 788 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 790 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 825 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 654 },
			["Premier|spineshatter"] = { 1, 4, -35, 655 },
			["Forksache|spineshatter"] = { 3, 1, -13, 986 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 735 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 735 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1005 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1246 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 576 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1065 },
			["Querng|spineshatter"] = { 0, 2, -43, 1072 },
			["Roobey|spineshatter"] = { 1, 1, -8, 596 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 645 },
		},
	},
}

