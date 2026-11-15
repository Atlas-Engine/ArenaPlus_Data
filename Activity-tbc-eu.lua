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
	built = 1794751160,
	builtText = "2026-11-15 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 31 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 31 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 31 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 31 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 31 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Imzomba|spineshatter"] = { 10, 4, 48, 705 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 31 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 705 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 31 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 28, 11, -89, 1200 },
			["Notagainqt|spineshatter"] = { 28, 11, -13, 1175 },
			["Orcabrina|spineshatter"] = { 20, 15, -34, 863 },
			["Sustanøn|spineshatter"] = { 20, 15, -31, 863 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 761 },
			["Сократ|anniversary"] = { 14, 6, 32, 728 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 885 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 885 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 705 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1065 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1064 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 1195 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1065 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1065 },
			["Garad|spineshatter"] = { 8, 3, 51, 807 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 868 },
			["Delivers|spineshatter"] = { 6, 4, 53, 1194 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 1195 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 1195 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 1004 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 1003 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 1065 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 956 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 954 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 31 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 705 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 31 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 1028 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 1065 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 1030 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1065 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 894 },
			["Premier|spineshatter"] = { 1, 4, -35, 895 },
			["Forksache|spineshatter"] = { 3, 1, -13, 1226 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 975 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 975 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1245 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 816 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1305 },
			["Querng|spineshatter"] = { 0, 2, -43, 1312 },
			["Roobey|spineshatter"] = { 1, 1, -8, 836 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 885 },
		},
	},
}

