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
	built = 1795136360,
	builtText = "2026-11-19 07:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Yæmz|spineshatter"] = { 1, 3, -45, 42 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 16, 7, 30, 157 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 155 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 105 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 112 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 167 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 166 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 105 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 152 },
			["Mblol|spineshatter"] = { 6, 1, 32, 105 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 105 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 178 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 42 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 105 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 176 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 157 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 155 },
			["Forksache|spineshatter"] = { 12, 11, -73, 191 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 105 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 112 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 201 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 222 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 281 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 283 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 167 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 166 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 105 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 152 },
			["Mblol|spineshatter"] = { 6, 1, 32, 105 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 270 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 270 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 178 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 42 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 105 },
			["Karoups|spineshatter"] = { 1, 2, -6, 197 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 176 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 157 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 155 },
			["Forksache|spineshatter"] = { 12, 11, -73, 191 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 645 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 105 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 112 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 201 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 222 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 281 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 283 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 167 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 166 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 105 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 152 },
			["Mblol|spineshatter"] = { 6, 1, 32, 105 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 270 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 270 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 178 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 42 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 105 },
			["Karoups|spineshatter"] = { 1, 2, -6, 197 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 176 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 465 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 157 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 155 },
			["Forksache|spineshatter"] = { 12, 11, -73, 191 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 645 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 105 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 112 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 201 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 222 },
			["Imgæy|spineshatter"] = { 6, 11, -91, 1365 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 281 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 283 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 167 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 166 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 105 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 152 },
			["Systemhack|spineshatter"] = { 6, 2, 8, 1438 },
			["Worldemoboss|spineshatter"] = { 6, 2, -7, 1439 },
			["Mblol|spineshatter"] = { 6, 1, 32, 105 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 105 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 270 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 270 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 178 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 42 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 105 },
			["Karoups|spineshatter"] = { 1, 2, -6, 197 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 176 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 465 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 105 },
		},
	},
}

