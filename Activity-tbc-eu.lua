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
	built = 1794743963,
	builtText = "2026-11-15 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 7, 9, 585 },
			["Пиноккио|anniversary"] = { 12, 4, 37, 641 },
			["Сократ|anniversary"] = { 12, 4, 37, 608 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 585 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 696 },
			["Roobey|spineshatter"] = { 1, 1, -8, 716 },
			["Garad|spineshatter"] = { 1, 0, 4, 688 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 1080 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 1055 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 743 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 743 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 641 },
			["Сократ|anniversary"] = { 14, 6, 32, 608 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 765 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 765 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 585 },
			["Formen|thunderstrike"] = { 7, 7, 28, 945 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 944 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 1075 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 945 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 945 },
			["Garad|spineshatter"] = { 8, 3, 51, 688 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 748 },
			["Delivers|spineshatter"] = { 6, 4, 53, 1074 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 1075 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 1075 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 884 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 883 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 945 },
			["Hakosukazx|spineshatter"] = { 1, 7, -74, 945 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 836 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 834 },
			["Oldp|spineshatter"] = { 4, 4, 4, 1397 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 585 },
			["Skyreal|spineshatter"] = { 4, 3, 20, 1344 },
			["Uzkavev|spineshatter"] = { 4, 3, 20, 1342 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 909 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 910 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 945 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 774 },
			["Premier|spineshatter"] = { 1, 4, -35, 775 },
			["Forksache|spineshatter"] = { 3, 1, -13, 1106 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 855 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 855 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1125 },
			["Skillexe|thunderstrike"] = { 2, 1, -12, 1366 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 696 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1185 },
			["Querng|spineshatter"] = { 0, 2, -43, 1192 },
			["Roobey|spineshatter"] = { 1, 1, -8, 716 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 765 },
		},
	},
}

