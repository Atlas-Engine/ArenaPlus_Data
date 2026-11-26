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
	built = 1795651158,
	builtText = "2026-11-25 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 6, 2, 9, 45 },
			["Gushers|spineshatter"] = { 2, 2, 4, 21 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 18 },
			["Сократ|anniversary"] = { 1, 1, -7, 45 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 9, 2, 20, 45 },
			["Сократ|anniversary"] = { 9, 2, 20, 45 },
			["Bimbolo|spineshatter"] = { 6, 3, 24, 62 },
			["Ellilol|thunderstrike"] = { 8, 1, 73, 132 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 60 },
			["Shadøwsfall|thunderstrike"] = { 8, 1, 73, 157 },
			["Rubyjunior|thunderstrike"] = { 2, 5, -52, 173 },
			["Vidykravicka|thunderstrike"] = { 2, 5, -69, 174 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 68 },
			["Gushers|spineshatter"] = { 2, 2, 4, 21 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 18 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 107 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 62 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 132 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 157 },
			["Corness|thunderstrike"] = { 15, 5, 116, 224 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 225 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 60 },
			["Пиноккио|anniversary"] = { 9, 2, 20, 45 },
			["Сократ|anniversary"] = { 9, 2, 20, 45 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 173 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 174 },
			["Delivers|spineshatter"] = { 6, 2, 11, 261 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 334 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 68 },
			["Gushers|spineshatter"] = { 2, 2, 4, 21 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 18 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 292 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 107 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 45 },
			["Zanven|spineshatter"] = { 1, 0, 9, 292 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 62 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 132 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 157 },
			["Corness|thunderstrike"] = { 15, 5, 116, 224 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 225 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 60 },
			["Пиноккио|anniversary"] = { 9, 2, 20, 45 },
			["Сократ|anniversary"] = { 9, 2, 20, 45 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 173 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 174 },
			["Delivers|spineshatter"] = { 6, 2, 11, 261 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 334 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 68 },
			["Gushers|spineshatter"] = { 2, 2, 4, 21 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 18 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 292 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 107 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 45 },
			["Zanven|spineshatter"] = { 1, 0, 9, 292 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 62 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 132 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 157 },
			["Пиноккио|anniversary"] = { 15, 8, -6, 45 },
			["Сократ|anniversary"] = { 15, 8, -6, 45 },
			["Corness|thunderstrike"] = { 15, 5, 116, 224 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 225 },
			["Iggysmalls|spineshatter"] = { 12, 4, 38, 18 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 60 },
			["Hurtie|spineshatter"] = { 8, 3, 78, 292 },
			["Zanven|spineshatter"] = { 8, 3, 62, 292 },
			["Riotx|spineshatter"] = { 6, 4, -9, 1125 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 173 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 174 },
			["Delivers|spineshatter"] = { 6, 2, 11, 261 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 334 },
			["Meziljie|spineshatter"] = { 3, 3, 2, 1305 },
			["Notnotyou|spineshatter"] = { 3, 3, 2, 1440 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 1125 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 68 },
			["Gushers|spineshatter"] = { 2, 2, 4, 21 },
			["Brubru|spineshatter"] = { 0, 3, -16, 1205 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 1125 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 107 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 45 },
		},
	},
}

