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
	built = 1794758362,
	builtText = "2026-11-15 10:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 8, 3, 41, 34 },
			["Oldp|spineshatter"] = { 8, 3, 59, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 12, 3, 59, 34 },
			["Oldp|spineshatter"] = { 12, 3, 83, 32 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 105 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 151 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 151 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 12, 3, 59, 34 },
			["Oldp|spineshatter"] = { 12, 3, 83, 32 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 105 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 151 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 151 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 12, 3, 59, 34 },
			["Oldp|spineshatter"] = { 12, 3, 83, 32 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 105 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 151 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 151 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 983 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 983 },
			["Mblol|spineshatter"] = { 15, 5, 29, 1320 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 1295 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 881 },
			["Сократ|anniversary"] = { 14, 6, 32, 848 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 1005 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 1005 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 825 },
			["Karoups|spineshatter"] = { 12, 3, 59, 34 },
			["Oldp|spineshatter"] = { 12, 3, 83, 32 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1185 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1184 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 1315 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1185 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1185 },
			["Garad|spineshatter"] = { 8, 3, 51, 927 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 988 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 105 },
			["Delivers|spineshatter"] = { 6, 4, 53, 1314 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 1315 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 1315 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 1124 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 1123 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 1185 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 1076 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 1074 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 151 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 825 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 151 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 1149 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 1185 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 1150 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1185 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 1014 },
			["Premier|spineshatter"] = { 1, 4, -35, 1015 },
			["Forksache|spineshatter"] = { 3, 1, -13, 1346 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 105 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 1095 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 1095 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1365 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 936 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1425 },
			["Querng|spineshatter"] = { 0, 2, -43, 1432 },
			["Roobey|spineshatter"] = { 1, 1, -8, 956 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 1005 },
		},
	},
}

