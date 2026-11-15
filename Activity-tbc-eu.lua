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
	built = 1794754760,
	builtText = "2026-11-15 09:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Btchsamback|spineshatter"] = { 7, 3, 31, 45 },
			["Karoups|spineshatter"] = { 4, 0, 18, 45 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 45 },
			["Oldp|spineshatter"] = { 4, 0, 24, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Btchsamback|spineshatter"] = { 7, 3, 31, 45 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 91 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 91 },
			["Karoups|spineshatter"] = { 4, 0, 18, 45 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 45 },
			["Oldp|spineshatter"] = { 4, 0, 24, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Btchsamback|spineshatter"] = { 7, 3, 31, 45 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 91 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 91 },
			["Karoups|spineshatter"] = { 4, 0, 18, 45 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 45 },
			["Oldp|spineshatter"] = { 4, 0, 24, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Btchsamback|spineshatter"] = { 7, 3, 31, 45 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 91 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 91 },
			["Karoups|spineshatter"] = { 4, 0, 18, 45 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 45 },
			["Oldp|spineshatter"] = { 4, 0, 24, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 19, 14, -20, 923 },
			["Sustanøn|spineshatter"] = { 19, 14, -17, 923 },
			["Mblol|spineshatter"] = { 15, 5, 29, 1260 },
			["Notagainqt|spineshatter"] = { 15, 5, 43, 1235 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 821 },
			["Сократ|anniversary"] = { 14, 6, 32, 788 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 945 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 945 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 765 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1125 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1124 },
			["Nocthornal|spineshatter"] = { 8, 5, 21, 1255 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1125 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1125 },
			["Garad|spineshatter"] = { 8, 3, 51, 867 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 928 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 45 },
			["Delivers|spineshatter"] = { 6, 4, 53, 1254 },
			["Druidcoachx|spineshatter"] = { 6, 4, -1, 1255 },
			["Hawkowl|spineshatter"] = { 7, 3, 16, 1255 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 1064 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 1063 },
			["Tsukopriest|spineshatter"] = { 3, 6, -36, 1125 },
			["Ilovejade|spineshatter"] = { 7, 1, 21, 1016 },
			["Invinciblexx|spineshatter"] = { 7, 1, 21, 1014 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 91 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 765 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 91 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 1088 },
			["Hakosukazx|spineshatter"] = { 0, 6, -67, 1125 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 1090 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1125 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 954 },
			["Premier|spineshatter"] = { 1, 4, -35, 955 },
			["Forksache|spineshatter"] = { 3, 1, -13, 1286 },
			["Karoups|spineshatter"] = { 4, 0, 18, 45 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 45 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 1035 },
			["Oldp|spineshatter"] = { 4, 0, 24, 45 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 1035 },
			["Knackilol|spineshatter"] = { 1, 2, -13, 1305 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 876 },
			["Kerpeten|spineshatter"] = { 0, 2, -41, 1365 },
			["Querng|spineshatter"] = { 0, 2, -43, 1372 },
			["Roobey|spineshatter"] = { 1, 1, -8, 896 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 945 },
		},
	},
}

