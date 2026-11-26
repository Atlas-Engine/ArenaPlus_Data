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
	built = 1795726759,
	builtText = "2026-11-26 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Snupydawg|spineshatter"] = { 2, 4, -54, 25 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 24 },
			["Bimbolo|spineshatter"] = { 0, 2, -23, 45 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 10, 45 },
			["Orcabrina|spineshatter"] = { 1, 0, 17, 45 },
			["Sustanøn|spineshatter"] = { 1, 0, 17, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 94 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 95 },
			["Delivers|spineshatter"] = { 7, 0, 47, 132 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 169 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 25 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 24 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 97 },
			["Bimbolo|spineshatter"] = { 0, 2, -23, 45 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 10, 45 },
			["Orcabrina|spineshatter"] = { 1, 0, 17, 45 },
			["Sustanøn|spineshatter"] = { 1, 0, 17, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 94 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 95 },
			["Delivers|spineshatter"] = { 7, 0, 47, 132 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 169 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 25 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 24 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 97 },
			["Bimbolo|spineshatter"] = { 0, 2, -23, 45 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 10, 45 },
			["Orcabrina|spineshatter"] = { 1, 0, 17, 45 },
			["Sustanøn|spineshatter"] = { 1, 0, 17, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 10, 2, 23, 94 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 95 },
			["Delivers|spineshatter"] = { 7, 0, 47, 132 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 169 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 25 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 24 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 97 },
			["Bimbolo|spineshatter"] = { 0, 2, -23, 45 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 10, 45 },
			["Orcabrina|spineshatter"] = { 1, 0, 17, 45 },
			["Sustanøn|spineshatter"] = { 1, 0, 17, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 14, 8, 4, 1201 },
			["Сократ|anniversary"] = { 14, 8, 4, 1134 },
			["Corness|thunderstrike"] = { 10, 2, 23, 94 },
			["Grimroll|thunderstrike"] = { 10, 2, 21, 95 },
			["Bimbolo|spineshatter"] = { 6, 5, 1, 45 },
			["Ellilol|thunderstrike"] = { 8, 1, 73, 1392 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 1320 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 1222 },
			["Shadøwsfall|thunderstrike"] = { 8, 1, 73, 1417 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 1223 },
			["Delivers|spineshatter"] = { 7, 0, 47, 132 },
			["Druidcoachx|spineshatter"] = { 7, 0, 30, 169 },
			["Rubyjunior|thunderstrike"] = { 2, 5, -52, 1433 },
			["Vidykravicka|thunderstrike"] = { 2, 5, -69, 1434 },
			["Snupydawg|spineshatter"] = { 2, 4, -54, 25 },
			["Zazazazaa|spineshatter"] = { 2, 4, -54, 24 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 1328 },
			["Gushers|spineshatter"] = { 2, 2, 4, 1281 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 1278 },
			["Setupxd|spineshatter"] = { 0, 3, -54, 97 },
			["Ggnextdisc|spineshatter"] = { 1, 0, 10, 45 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 1367 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 1305 },
			["Orcabrina|spineshatter"] = { 1, 0, 17, 45 },
			["Sustanøn|spineshatter"] = { 1, 0, 17, 45 },
		},
	},
}

