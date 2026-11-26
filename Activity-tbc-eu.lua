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
	built = 1795723164,
	builtText = "2026-11-26 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 35 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 35 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 37 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 35 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 35 },
			["Delivers|spineshatter"] = { 7, 0, 47, 73 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 109 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 37 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 35 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 35 },
			["Delivers|spineshatter"] = { 7, 0, 47, 73 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 109 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 37 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 35 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 35 },
			["Delivers|spineshatter"] = { 7, 0, 47, 73 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 109 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 37 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 25, 7, 139, 35 },
			["Grimroll|thunderstrike"] = { 25, 7, 136, 35 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 1332 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 1357 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 1141 },
			["Сократ|anniversary"] = { 14, 8, 4, 1075 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 1373 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 1374 },
			["Bimbolo|spineshatter"] = { 6, 3, 24, 1262 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 1260 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 1162 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 1163 },
			["Delivers|spineshatter"] = { 7, 0, 47, 73 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 109 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 1268 },
			["Gushers|spineshatter"] = { 2, 2, 4, 1221 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 1218 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 37 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 1307 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 1245 },
		},
	},
}

