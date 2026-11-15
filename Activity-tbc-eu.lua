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
	built = 1794747561,
	builtText = "2026-11-15 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 12, 4, 37, 701 },
			["Сократ|anniversary"] = { 12, 4, 37, 668 },
			["Imzomba|spineshatter"] = { 10, 4, 48, 645 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 1140 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 1115 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 803 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 803 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 701 },
			["Сократ|anniversary"] = { 14, 6, 32, 668 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 825 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 825 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 645 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1005 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1004 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 1135 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1005 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1005 },
			["Garad|spineshatter"] = { 8, 3, 51, 747 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 808 },
			["Delivers|spineshatter"] = { 6, 4, 53, 1134 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 1135 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 1135 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 944 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 943 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 1005 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 1005 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 896 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 894 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 645 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1404 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1402 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 969 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 970 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1005 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 834 },
			["Premier|spineshatter"] = { 1, 4, -35, 835 },
			["Forksache|spineshatter"] = { 3, 1, -13, 1166 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 915 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 915 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1185 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1426 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 756 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1245 },
			["Querng|spineshatter"] = { 0, 2, -43, 1252 },
			["Roobey|spineshatter"] = { 1, 1, -8, 776 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 825 },
		},
	},
}

