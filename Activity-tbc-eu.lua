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
	built = 1795647559,
	builtText = "2026-11-25 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Сократ|anniversary"] = { 8, 1, 27, 10 },
			["Пиноккио|anniversary"] = { 3, 0, 11, 54 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 72 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 97 },
			["Corness|thunderstrike"] = { 15, 5, 116, 164 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 165 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 113 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 114 },
			["Сократ|anniversary"] = { 8, 1, 27, 10 },
			["Пиноккио|anniversary"] = { 3, 0, 11, 54 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 47 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 72 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 97 },
			["Corness|thunderstrike"] = { 15, 5, 116, 164 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 165 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 188 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 113 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 114 },
			["Сократ|anniversary"] = { 8, 1, 27, 10 },
			["Delivers|spineshatter"] = { 6, 2, 11, 201 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 274 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 189 },
			["Пиноккио|anniversary"] = { 3, 0, 11, 54 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 232 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 47 },
			["Zanven|spineshatter"] = { 1, 0, 9, 232 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 72 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 97 },
			["Corness|thunderstrike"] = { 15, 5, 116, 164 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 165 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 188 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 113 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 114 },
			["Сократ|anniversary"] = { 8, 1, 27, 10 },
			["Delivers|spineshatter"] = { 6, 2, 11, 201 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 274 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 189 },
			["Пиноккио|anniversary"] = { 3, 0, 11, 54 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 232 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 47 },
			["Zanven|spineshatter"] = { 1, 0, 9, 232 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 21, 20, -93, 189 },
			["Bimbolo|spineshatter"] = { 17, 16, -75, 188 },
			["Пиноккио|anniversary"] = { 19, 13, 6, 54 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1425 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1437 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 72 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 97 },
			["Сократ|anniversary"] = { 18, 9, 25, 10 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1425 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1425 },
			["Corness|thunderstrike"] = { 15, 5, 116, 164 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 165 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1425 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1425 },
			["Hurtie|spineshatter"] = { 13, 3, 144, 232 },
			["Pinkwidow|spineshatter"] = { 9, 7, 8, 1430 },
			["Zanven|spineshatter"] = { 13, 3, 120, 232 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1425 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1425 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1388 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 1154 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1425 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1425 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1425 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1383 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 1245 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1380 },
			["Riotx|spineshatter"] = { 6, 4, -9, 1065 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 113 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 114 },
			["Delivers|spineshatter"] = { 6, 2, 11, 201 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 274 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 1065 },
			["Brubru|spineshatter"] = { 0, 3, -16, 1145 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 1065 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 47 },
		},
		[3] = {
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1415 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1383 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1399 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1425 },
		},
	},
}

