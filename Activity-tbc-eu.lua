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
	built = 1795147164,
	builtText = "2026-11-19 10:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 16, 7, 30, 337 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 335 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 285 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 292 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 213 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 347 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 346 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 285 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 332 },
			["Mblol|spineshatter"] = { 6, 1, 32, 285 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 285 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 358 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 105 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 222 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 285 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 356 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 285 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 337 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 335 },
			["Forksache|spineshatter"] = { 12, 11, -73, 371 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 285 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 292 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 381 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 402 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 213 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 461 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 463 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 347 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 346 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 285 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 332 },
			["Mblol|spineshatter"] = { 6, 1, 32, 285 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 285 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 450 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 450 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 358 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 105 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 222 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 285 },
			["Karoups|spineshatter"] = { 1, 2, -6, 377 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 356 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 645 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 285 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 337 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 335 },
			["Forksache|spineshatter"] = { 12, 11, -73, 371 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 825 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 285 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 292 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 381 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 402 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 213 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 461 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 463 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 347 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 346 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 285 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 332 },
			["Mblol|spineshatter"] = { 6, 1, 32, 285 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 285 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 450 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 450 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 358 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 105 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 222 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 285 },
			["Karoups|spineshatter"] = { 1, 2, -6, 377 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 356 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 645 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 285 },
		},
	},
}

