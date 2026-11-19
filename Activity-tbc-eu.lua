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
	built = 1795121964,
	builtText = "2026-11-19 03:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 8, 5, -10, 41 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 43 },
			["Forksache|spineshatter"] = { 5, 4, -23, 45 },
			["Rli|spineshatter"] = { 6, 2, -29, 45 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 45 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 30 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 30 },
			["Snupydawg|spineshatter"] = { 3, 1, 22, 45 },
			["Zazazazaa|spineshatter"] = { 3, 1, 22, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 8, 5, -10, 41 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 43 },
			["Forksache|spineshatter"] = { 5, 4, -23, 45 },
			["Rli|spineshatter"] = { 6, 2, -29, 45 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 45 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 30 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 30 },
			["Snupydawg|spineshatter"] = { 3, 1, 22, 45 },
			["Zazazazaa|spineshatter"] = { 3, 1, 22, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 8, 5, -10, 41 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 43 },
			["Forksache|spineshatter"] = { 5, 4, -23, 45 },
			["Rli|spineshatter"] = { 6, 2, -29, 45 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 45 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 30 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 30 },
			["Snupydawg|spineshatter"] = { 3, 1, 22, 45 },
			["Zazazazaa|spineshatter"] = { 3, 1, 22, 45 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Akaaii|spineshatter"] = { 19, 3, 118, 405 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 41 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 43 },
			["Forksache|spineshatter"] = { 5, 4, -23, 45 },
			["Rli|spineshatter"] = { 6, 2, -29, 45 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 45 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 30 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 30 },
			["Snupydawg|spineshatter"] = { 3, 1, 22, 45 },
			["Zazazazaa|spineshatter"] = { 3, 1, 22, 45 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 225 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 19, 12, 20, 41 },
			["Shadøwsfall|thunderstrike"] = { 19, 12, 20, 43 },
			["Imgæy|spineshatter"] = { 14, 15, -95, 1125 },
			["Kungfuryxoxo|spineshatter"] = { 14, 15, -91, 1207 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 405 },
			["Rubyjunior|thunderstrike"] = { 12, 4, 86, 1313 },
			["Vidykravicka|thunderstrike"] = { 12, 4, 55, 1316 },
			["Amahasala|spineshatter"] = { 8, 7, -1, 1313 },
			["Nudl|spineshatter"] = { 8, 7, 0, 1314 },
			["Izabelyrg|spineshatter"] = { 8, 6, 20, 1379 },
			["Pinkwidow|spineshatter"] = { 8, 6, 40, 1410 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1228 },
			["Orcabrina|spineshatter"] = { 4, 8, -27, 1360 },
			["Sustanøn|spineshatter"] = { 4, 8, -46, 1360 },
			["Jaguár|spineshatter"] = { 5, 6, -7, 1433 },
			["Snobillacin|spineshatter"] = { 4, 7, -27, 1430 },
			["Uweboll|spineshatter"] = { 4, 7, -35, 1427 },
			["Forksache|spineshatter"] = { 5, 4, -23, 45 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1228 },
			["Rli|spineshatter"] = { 6, 2, -29, 45 },
			["Summerjam|spineshatter"] = { 6, 2, -27, 45 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1198 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1199 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 30 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 30 },
			["Everlost|spineshatter"] = { 4, 2, 14, 1354 },
			["Patrickwoo|spineshatter"] = { 4, 2, 3, 1353 },
			["Phukkhislife|thunderstrike"] = { 2, 4, -83, 1428 },
			["Stungødx|spineshatter"] = { 4, 1, 10, 1262 },
			["Snupydawg|spineshatter"] = { 3, 1, 22, 45 },
			["Zazazazaa|spineshatter"] = { 3, 1, 22, 45 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 225 },
			["Nutcracky|spineshatter"] = { 1, 1, -5, 1317 },
			["Bananagram|spineshatter"] = { 0, 1, -11, 1305 },
			["Saptain|spineshatter"] = { 0, 1, -12, 1305 },
		},
	},
}

