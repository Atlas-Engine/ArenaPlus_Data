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
	built = 1795129159,
	builtText = "2026-11-19 05:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 16, 7, 30, 37 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 35 },
			["Plmfgbt|spineshatter"] = { 7, 11, -56, 10 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 47 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 32 },
			["Bananagram|spineshatter"] = { 6, 3, 41, 33 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 58 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 56 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 37 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 35 },
			["Forksache|spineshatter"] = { 12, 11, -73, 71 },
			["Plmfgbt|spineshatter"] = { 7, 11, -56, 10 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 81 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 102 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 161 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 163 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 47 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 32 },
			["Bananagram|spineshatter"] = { 6, 3, 41, 33 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 150 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 150 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 58 },
			["Karoups|spineshatter"] = { 1, 2, -6, 77 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 56 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 37 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 35 },
			["Forksache|spineshatter"] = { 12, 11, -73, 71 },
			["Plmfgbt|spineshatter"] = { 7, 11, -56, 10 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 81 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 102 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 161 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 163 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 47 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 32 },
			["Bananagram|spineshatter"] = { 6, 3, 41, 33 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 150 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 150 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 58 },
			["Karoups|spineshatter"] = { 1, 2, -6, 77 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 56 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 37 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 35 },
			["Forksache|spineshatter"] = { 12, 11, -73, 71 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 525 },
			["Plmfgbt|spineshatter"] = { 7, 11, -56, 10 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 81 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 102 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 161 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 163 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 47 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 32 },
			["Bananagram|spineshatter"] = { 6, 3, 41, 33 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 150 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 150 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 58 },
			["Karoups|spineshatter"] = { 1, 2, -6, 77 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 56 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 345 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 37 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 35 },
			["Imgæy|spineshatter"] = { 14, 15, -95, 1245 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 1326 },
			["Forksache|spineshatter"] = { 12, 11, -73, 71 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 525 },
			["Plmfgbt|spineshatter"] = { 7, 11, -56, 10 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 81 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 102 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1433 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1436 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1433 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1434 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 161 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1348 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 163 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 47 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 46 },
			["Bananagram|spineshatter"] = { 6, 4, 30, 33 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 32 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1348 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1318 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1319 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 150 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 150 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1382 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 58 },
			["Karoups|spineshatter"] = { 1, 2, -6, 77 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 56 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 345 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1437 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1425 },
		},
	},
}

