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
	built = 1795125561,
	builtText = "2026-11-19 04:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Forksache|spineshatter"] = { 7, 7, -50, 11 },
			["Snupydawg|spineshatter"] = { 8, 6, 17, 21 },
			["Zazazazaa|spineshatter"] = { 8, 6, 17, 42 },
			["Karoups|spineshatter"] = { 1, 2, -6, 17 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Forksache|spineshatter"] = { 12, 11, -73, 11 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 21 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 42 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 101 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 103 },
			["Rli|spineshatter"] = { 6, 2, -29, 105 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 90 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 90 },
			["Karoups|spineshatter"] = { 1, 2, -6, 17 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Forksache|spineshatter"] = { 12, 11, -73, 11 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 21 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 42 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 101 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 103 },
			["Rli|spineshatter"] = { 6, 2, -29, 105 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 90 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 90 },
			["Karoups|spineshatter"] = { 1, 2, -6, 17 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Forksache|spineshatter"] = { 12, 11, -73, 11 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 465 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 21 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 42 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 101 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 103 },
			["Rli|spineshatter"] = { 6, 2, -29, 105 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 90 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 90 },
			["Karoups|spineshatter"] = { 1, 2, -6, 17 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 285 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Imgæy|spineshatter"] = { 14, 15, -95, 1185 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 1266 },
			["Forksache|spineshatter"] = { 12, 11, -73, 11 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 465 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 21 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 42 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1373 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1376 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1373 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1374 },
			["Izabelyrg|spineshatter"] = { 8, 6, 20, 1439 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 101 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1288 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 103 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1420 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1420 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1288 },
			["Rli|spineshatter"] = { 6, 2, -29, 105 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 105 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1258 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1259 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 90 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 90 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1414 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1413 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1322 },
			["Karoups|spineshatter"] = { 1, 2, -6, 17 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 285 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1377 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 1365 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1365 },
		},
	},
}

