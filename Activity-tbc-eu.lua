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
	built = 1795654759,
	builtText = "2026-11-25 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 9, 2, 20, 105 },
			["Сократ|anniversary"] = { 9, 2, 20, 105 },
			["Bimbolo|spineshatter"] = { 6, 3, 24, 122 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 120 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 128 },
			["Gushers|spineshatter"] = { 2, 2, 4, 81 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 78 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 167 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 122 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 192 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 217 },
			["Corness|thunderstrike"] = { 15, 5, 116, 284 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 285 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 120 },
			["Пиноккио|anniversary"] = { 9, 2, 20, 105 },
			["Сократ|anniversary"] = { 9, 2, 20, 105 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 233 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 234 },
			["Delivers|spineshatter"] = { 6, 2, 11, 321 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 128 },
			["Gushers|spineshatter"] = { 2, 2, 4, 81 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 78 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 352 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 167 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 105 },
			["Zanven|spineshatter"] = { 1, 0, 9, 352 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 122 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 192 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 217 },
			["Corness|thunderstrike"] = { 15, 5, 116, 284 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 285 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 120 },
			["Пиноккио|anniversary"] = { 9, 2, 20, 105 },
			["Сократ|anniversary"] = { 9, 2, 20, 105 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 233 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 234 },
			["Delivers|spineshatter"] = { 6, 2, 11, 321 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 394 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 128 },
			["Gushers|spineshatter"] = { 2, 2, 4, 81 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 78 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 352 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 167 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 105 },
			["Zanven|spineshatter"] = { 1, 0, 9, 352 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 122 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 192 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 217 },
			["Corness|thunderstrike"] = { 15, 5, 116, 284 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 285 },
			["Iggysmalls|spineshatter"] = { 12, 4, 38, 78 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 120 },
			["Пиноккио|anniversary"] = { 9, 2, 20, 105 },
			["Сократ|anniversary"] = { 9, 2, 20, 105 },
			["Riotx|spineshatter"] = { 6, 4, -9, 1185 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 233 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 234 },
			["Delivers|spineshatter"] = { 6, 2, 11, 321 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 394 },
			["Meziljie|spineshatter"] = { 3, 3, 2, 1365 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 128 },
			["Gushers|spineshatter"] = { 2, 2, 4, 81 },
			["Aethèl|spineshatter"] = { 3, 0, 29, 1185 },
			["Brubru|spineshatter"] = { 0, 3, -16, 1265 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 1185 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 352 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 167 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 105 },
			["Zanven|spineshatter"] = { 1, 0, 9, 352 },
		},
	},
}

