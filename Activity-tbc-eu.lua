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
	built = 1795132770,
	builtText = "2026-11-19 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 12, 7, 22, 46 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 52 },
			["Mblol|spineshatter"] = { 6, 1, 32, 46 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 46 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 46 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 46 },
			["Bananagram|spineshatter"] = { 0, 1, -9, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 16, 7, 30, 97 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 95 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 46 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 52 },
			["Forksache|spineshatter"] = { 7, 7, -50, 131 },
			["Snupydawg|spineshatter"] = { 8, 6, 17, 141 },
			["Zazazazaa|spineshatter"] = { 8, 6, 17, 162 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 107 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 106 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 92 },
			["Mblol|spineshatter"] = { 6, 1, 32, 46 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 46 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 118 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 46 },
			["Karoups|spineshatter"] = { 1, 2, -6, 137 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 116 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 97 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 95 },
			["Forksache|spineshatter"] = { 12, 11, -73, 131 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 46 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 52 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 141 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 162 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 221 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 223 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 107 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 106 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 92 },
			["Mblol|spineshatter"] = { 6, 1, 32, 46 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 46 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 210 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 210 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 118 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 46 },
			["Karoups|spineshatter"] = { 1, 2, -6, 137 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 116 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 97 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 95 },
			["Forksache|spineshatter"] = { 12, 11, -73, 131 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 586 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 46 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 52 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 141 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 162 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 221 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 223 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 107 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 106 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 92 },
			["Mblol|spineshatter"] = { 6, 1, 32, 46 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 46 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 210 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 210 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 118 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 46 },
			["Karoups|spineshatter"] = { 1, 2, -6, 137 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 116 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 406 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 46 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 97 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 95 },
			["Forksache|spineshatter"] = { 12, 11, -73, 131 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 586 },
			["Kungfuryxoxo|spineshatter"] = { 8, 12, -103, 1387 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 46 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 52 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 141 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 162 },
			["Imgæy|spineshatter"] = { 6, 11, -91, 1306 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 221 },
			["Mfkaxx|spineshatter"] = { 9, 4, 45, 1408 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 223 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 107 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 106 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 46 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 92 },
			["Brubru|spineshatter"] = { 5, 3, 12, 1408 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1378 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1379 },
			["Mblol|spineshatter"] = { 6, 1, 32, 46 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 46 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 210 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 210 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 118 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 46 },
			["Karoups|spineshatter"] = { 1, 2, -6, 137 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 116 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 406 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 46 },
		},
	},
}

