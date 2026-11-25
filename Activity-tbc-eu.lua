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
	built = 1795643965,
	builtText = "2026-11-25 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 8, 1, 73, 12 },
			["Shadøwsfall|thunderstrike"] = { 8, 1, 73, 37 },
			["Rubyjunior|thunderstrike"] = { 2, 5, -52, 53 },
			["Vidykravicka|thunderstrike"] = { 2, 5, -69, 54 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 12 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 37 },
			["Corness|thunderstrike"] = { 15, 5, 116, 104 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 105 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 128 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 53 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 54 },
			["Delivers|spineshatter"] = { 6, 2, 11, 141 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 129 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 172 },
			["Zanven|spineshatter"] = { 1, 0, 9, 172 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 12 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 37 },
			["Corness|thunderstrike"] = { 15, 5, 116, 104 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 105 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 128 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 53 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 54 },
			["Delivers|spineshatter"] = { 6, 2, 11, 141 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 214 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 129 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 172 },
			["Zanven|spineshatter"] = { 1, 0, 9, 172 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 20, 7, 82, 12 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 37 },
			["Corness|thunderstrike"] = { 15, 5, 116, 104 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 105 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 128 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 53 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 54 },
			["Delivers|spineshatter"] = { 6, 2, 11, 141 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 214 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 129 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 172 },
			["Zanven|spineshatter"] = { 1, 0, 9, 172 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 21, 20, -93, 129 },
			["Bimbolo|spineshatter"] = { 17, 16, -75, 128 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1365 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1378 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 1276 },
			["Сократ|anniversary"] = { 16, 13, -5, 1269 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 12 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 37 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1365 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1365 },
			["Corness|thunderstrike"] = { 15, 5, 116, 104 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 105 },
			["Vidykravicka|thunderstrike"] = { 11, 9, -24, 54 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1365 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1365 },
			["Hurtie|spineshatter"] = { 13, 3, 144, 172 },
			["Pinkwidow|spineshatter"] = { 9, 7, 8, 1370 },
			["Zanven|spineshatter"] = { 13, 3, 120, 172 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1365 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1365 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1407 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1407 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1328 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1413 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 1094 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1423 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1365 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1365 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1365 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1323 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 1185 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1320 },
			["Riotx|spineshatter"] = { 6, 4, -9, 1005 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 53 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1437 },
			["Delivers|spineshatter"] = { 6, 2, 11, 141 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 214 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 1005 },
			["Brubru|spineshatter"] = { 0, 3, -16, 1085 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 1005 },
		},
		[3] = {
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1355 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1324 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1339 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1365 },
		},
	},
}

