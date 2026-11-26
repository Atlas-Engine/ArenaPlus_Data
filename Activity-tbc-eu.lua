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
	built = 1795658363,
	builtText = "2026-11-25 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 11, 8, -7, 61 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 82 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 83 },
			["Gushers|spineshatter"] = { 2, 2, 4, 141 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 138 },
			["Сократ|anniversary"] = { 1, 1, -7, 165 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 252 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 277 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 61 },
			["Corness|thunderstrike"] = { 15, 5, 116, 344 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 345 },
			["Сократ|anniversary"] = { 9, 2, 20, 165 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 293 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 294 },
			["Bimbolo|spineshatter"] = { 6, 3, 24, 182 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 180 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 82 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 83 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 188 },
			["Gushers|spineshatter"] = { 2, 2, 4, 141 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 138 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 227 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 182 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 252 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 277 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 61 },
			["Corness|thunderstrike"] = { 15, 5, 116, 344 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 345 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 180 },
			["Сократ|anniversary"] = { 9, 2, 20, 165 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 293 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 294 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 82 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 83 },
			["Delivers|spineshatter"] = { 6, 2, 11, 381 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 454 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 188 },
			["Gushers|spineshatter"] = { 2, 2, 4, 141 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 138 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 412 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 227 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
			["Zanven|spineshatter"] = { 1, 0, 9, 412 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 182 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 252 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 277 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 61 },
			["Corness|thunderstrike"] = { 15, 5, 116, 344 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 345 },
			["Iggysmalls|spineshatter"] = { 12, 4, 38, 138 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 180 },
			["Сократ|anniversary"] = { 9, 2, 20, 165 },
			["Riotx|spineshatter"] = { 6, 4, -9, 1245 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 293 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 294 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 82 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 83 },
			["Delivers|spineshatter"] = { 6, 2, 11, 381 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 454 },
			["Meziljie|spineshatter"] = { 3, 3, 2, 1425 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 188 },
			["Gushers|spineshatter"] = { 2, 2, 4, 141 },
			["Aethèl|spineshatter"] = { 3, 0, 29, 1245 },
			["Brubru|spineshatter"] = { 0, 3, -16, 1325 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 1245 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 412 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 227 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
			["Zanven|spineshatter"] = { 1, 0, 9, 412 },
		},
	},
}

