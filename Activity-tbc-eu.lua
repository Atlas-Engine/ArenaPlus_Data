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
	built = 1795719562,
	builtText = "2026-11-26 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Delivers|spineshatter"] = { 7, 0, 47, 12 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Delivers|spineshatter"] = { 7, 0, 47, 12 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 49 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Delivers|spineshatter"] = { 7, 0, 47, 12 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 49 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Delivers|spineshatter"] = { 7, 0, 47, 12 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 49 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 1202 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 1272 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 1297 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 1081 },
			["Сократ|anniversary"] = { 14, 8, 4, 1015 },
			["Corness|thunderstrike"] = { 15, 5, 116, 1364 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 1365 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 1200 },
			["Delivers|spineshatter"] = { 13, 2, 58, 12 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 1313 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 1314 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 1102 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 1103 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 49 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 1208 },
			["Gushers|spineshatter"] = { 2, 2, 4, 1161 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 1158 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 1432 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 1247 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 1185 },
			["Zanven|spineshatter"] = { 1, 0, 9, 1432 },
		},
	},
}

