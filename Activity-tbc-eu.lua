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
	built = 1795665559,
	builtText = "2026-11-25 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Сократ|anniversary"] = { 5, 6, -16, 114 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 14, 8, 4, 181 },
			["Сократ|anniversary"] = { 14, 8, 4, 114 },
			["Bimbolo|spineshatter"] = { 6, 3, 24, 302 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 300 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 202 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 203 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 308 },
			["Gushers|spineshatter"] = { 2, 2, 4, 261 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 258 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 347 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 302 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 372 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 397 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 181 },
			["Сократ|anniversary"] = { 14, 8, 4, 114 },
			["Corness|thunderstrike"] = { 15, 5, 116, 464 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 465 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 300 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 413 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 414 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 202 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 203 },
			["Delivers|spineshatter"] = { 6, 2, 11, 501 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 574 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 308 },
			["Gushers|spineshatter"] = { 2, 2, 4, 261 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 258 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 532 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 347 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 285 },
			["Zanven|spineshatter"] = { 1, 0, 9, 532 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 302 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 372 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 397 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 181 },
			["Сократ|anniversary"] = { 14, 8, 4, 114 },
			["Corness|thunderstrike"] = { 15, 5, 116, 464 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 465 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 300 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 413 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 414 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 202 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 203 },
			["Delivers|spineshatter"] = { 6, 2, 11, 501 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 574 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 308 },
			["Gushers|spineshatter"] = { 2, 2, 4, 261 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 258 },
			["Riotx|spineshatter"] = { 2, 2, -12, 1365 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 1365 },
			["Aethèl|spineshatter"] = { 1, 0, 9, 1365 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 532 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 347 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 285 },
			["Zanven|spineshatter"] = { 1, 0, 9, 532 },
		},
	},
}

