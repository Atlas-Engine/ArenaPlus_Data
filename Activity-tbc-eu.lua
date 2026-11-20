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
	built = 1795154364,
	builtText = "2026-11-20 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Grimroll|thunderstrike"] = { 10, 6, 37, 333 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 225 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 342 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 457 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 455 },
			["Forksache|spineshatter"] = { 12, 11, -73, 491 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 405 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 412 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 501 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 522 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 333 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 581 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 583 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 467 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 466 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 405 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 452 },
			["Mblol|spineshatter"] = { 6, 1, 32, 405 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 405 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 570 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 570 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 478 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 225 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 342 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 405 },
			["Karoups|spineshatter"] = { 1, 2, -6, 497 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 476 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 405 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 457 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 455 },
			["Forksache|spineshatter"] = { 12, 11, -73, 491 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 945 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 405 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 412 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 501 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 522 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 333 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 581 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 583 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 467 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 466 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 405 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 452 },
			["Mblol|spineshatter"] = { 6, 1, 32, 405 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 405 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 570 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 570 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 478 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 225 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 342 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 405 },
			["Karoups|spineshatter"] = { 1, 2, -6, 497 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 476 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 765 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 405 },
		},
	},
}

