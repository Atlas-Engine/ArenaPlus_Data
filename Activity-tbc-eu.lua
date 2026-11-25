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
	built = 1795640362,
	builtText = "2026-11-25 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 15, 5, 116, 44 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 45 },
			["Ellilol|thunderstrike"] = { 12, 6, 9, 45 },
			["Shadøwsfall|thunderstrike"] = { 12, 6, 9, 45 },
			["Rubyjunior|thunderstrike"] = { 2, 1, -3, 45 },
			["Vidykravicka|thunderstrike"] = { 2, 1, -10, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 15, 5, 116, 44 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 45 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 68 },
			["Ellilol|thunderstrike"] = { 12, 6, 9, 45 },
			["Shadøwsfall|thunderstrike"] = { 12, 6, 9, 45 },
			["Delivers|spineshatter"] = { 6, 2, 11, 81 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 154 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 69 },
			["Rubyjunior|thunderstrike"] = { 2, 1, -3, 45 },
			["Vidykravicka|thunderstrike"] = { 2, 1, -10, 45 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 112 },
			["Zanven|spineshatter"] = { 1, 0, 9, 112 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 15, 5, 116, 44 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 45 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 68 },
			["Ellilol|thunderstrike"] = { 12, 6, 9, 45 },
			["Shadøwsfall|thunderstrike"] = { 12, 6, 9, 45 },
			["Delivers|spineshatter"] = { 6, 2, 11, 81 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 154 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 69 },
			["Rubyjunior|thunderstrike"] = { 2, 1, -3, 45 },
			["Vidykravicka|thunderstrike"] = { 2, 1, -10, 45 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 112 },
			["Zanven|spineshatter"] = { 1, 0, 9, 112 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Corness|thunderstrike"] = { 15, 5, 116, 44 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 45 },
			["Bimbolo|spineshatter"] = { 9, 9, -52, 68 },
			["Ellilol|thunderstrike"] = { 12, 6, 9, 45 },
			["Shadøwsfall|thunderstrike"] = { 12, 6, 9, 45 },
			["Delivers|spineshatter"] = { 6, 2, 11, 81 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 154 },
			["Izabelyrg|spineshatter"] = { 3, 4, -36, 69 },
			["Rubyjunior|thunderstrike"] = { 2, 1, -3, 45 },
			["Vidykravicka|thunderstrike"] = { 2, 1, -10, 45 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 112 },
			["Zanven|spineshatter"] = { 1, 0, 9, 112 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 21, 20, -93, 69 },
			["Bimbolo|spineshatter"] = { 17, 16, -75, 68 },
			["Requiemit|spineshatter"] = { 17, 13, -26, 1305 },
			["Vannah|spineshatter"] = { 17, 13, -26, 1317 },
			["Пиноккио|anniversary"] = { 16, 13, -5, 1216 },
			["Сократ|anniversary"] = { 16, 13, -5, 1209 },
			["Keepdistance|spineshatter"] = { 11, 13, -65, 1305 },
			["Radamsa|spineshatter"] = { 11, 13, -65, 1305 },
			["Grimroll|thunderstrike"] = { 16, 7, 90, 45 },
			["Corness|thunderstrike"] = { 15, 5, 116, 44 },
			["Pinkwidow|spineshatter"] = { 10, 9, -12, 1310 },
			["Ellilol|thunderstrike"] = { 12, 6, 9, 45 },
			["Neore|thunderstrike"] = { 7, 11, -87, 1305 },
			["Shadøwsfall|thunderstrike"] = { 12, 6, 9, 45 },
			["Waldhafen|thunderstrike"] = { 7, 11, -40, 1305 },
			["Hurtie|spineshatter"] = { 13, 3, 144, 112 },
			["Zanven|spineshatter"] = { 13, 3, 120, 112 },
			["Clozapine|spineshatter"] = { 6, 8, -41, 1305 },
			["Fnrxz|spineshatter"] = { 6, 8, -41, 1305 },
			["Orcabrina|spineshatter"] = { 7, 7, 5, 1347 },
			["Sustanøn|spineshatter"] = { 7, 7, 4, 1347 },
			["Moscuerta|spineshatter"] = { 9, 4, -17, 1268 },
			["Vidykravicka|thunderstrike"] = { 9, 4, 45, 45 },
			["Daddyjoe|spineshatter"] = { 6, 6, 1, 1353 },
			["Iggysmalls|spineshatter"] = { 10, 2, 59, 1034 },
			["Nguaroth|spineshatter"] = { 6, 6, 1, 1363 },
			["ßéstcømp|spineshatter"] = { 6, 6, -13, 1305 },
			["Gougerpala|spineshatter"] = { 4, 7, -37, 1305 },
			["Mfkaxx|spineshatter"] = { 4, 7, -47, 1305 },
			["Amahasala|spineshatter"] = { 4, 6, -49, 1263 },
			["Greåzy|spineshatter"] = { 8, 2, 88, 1421 },
			["Interscope|spineshatter"] = { 7, 3, 63, 1419 },
			["Makayas|thunderstrike"] = { 5, 5, -4, 1381 },
			["Meziljie|spineshatter"] = { 5, 5, 12, 1125 },
			["Møøxy|thunderstrike"] = { 5, 5, -4, 1381 },
			["Notnotyou|spineshatter"] = { 5, 5, 12, 1260 },
			["Riotx|spineshatter"] = { 6, 4, -9, 945 },
			["Senikss|thunderstrike"] = { 7, 3, 65, 1377 },
			["Zizzap|spineshatter"] = { 8, 2, 39, 1421 },
			["Delivers|spineshatter"] = { 6, 2, 11, 81 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 154 },
			["Iogaila|spineshatter"] = { 2, 6, -87, 1399 },
			["Aethèl|spineshatter"] = { 4, 1, 30, 945 },
			["Ályssandra|spineshatter"] = { 4, 1, 43, 1421 },
			["Ilovejade|spineshatter"] = { 4, 0, 34, 1394 },
			["Invinciblexx|spineshatter"] = { 4, 0, 34, 1392 },
			["Brubru|spineshatter"] = { 0, 3, -16, 1025 },
			["Enlightmee|spineshatter"] = { 1, 2, -28, 945 },
			["Rubyjunior|thunderstrike"] = { 2, 1, -3, 45 },
			["Shadowteenx|spineshatter"] = { 0, 1, -17, 1438 },
		},
		[2] = {
			["Skillexe|thunderstrike"] = { 8, 1, 35, 1390 },
		},
		[3] = {
			["Bagladybetty|spineshatter"] = { 10, 0, 35, 1295 },
			["Bimbolo|spineshatter"] = { 10, 0, 45, 1263 },
			["Vemma|spineshatter"] = { 10, 0, 46, 1279 },
			["Nøstun|spineshatter"] = { 2, 1, -17, 1305 },
		},
	},
}

