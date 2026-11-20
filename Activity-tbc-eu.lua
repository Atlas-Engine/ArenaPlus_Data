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
	built = 1795143558,
	builtText = "2026-11-19 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Grimroll|thunderstrike"] = { 10, 6, 37, 153 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 45 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 162 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 16, 7, 30, 277 },
			["Summerjam|spineshatter"] = { 16, 7, 31, 275 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 225 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 232 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 153 },
			["Forksache|spineshatter"] = { 7, 7, -50, 311 },
			["Snupydawg|spineshatter"] = { 8, 6, 17, 321 },
			["Zazazazaa|spineshatter"] = { 8, 6, 17, 342 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 287 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 286 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 225 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 272 },
			["Mblol|spineshatter"] = { 6, 1, 32, 225 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 225 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 298 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 45 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 162 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 225 },
			["Karoups|spineshatter"] = { 1, 2, -6, 317 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 296 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 277 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 275 },
			["Forksache|spineshatter"] = { 12, 11, -73, 311 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 225 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 232 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 321 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 342 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 153 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 401 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 402 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 287 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 286 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 225 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 272 },
			["Mblol|spineshatter"] = { 6, 1, 32, 225 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 225 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 390 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 390 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 298 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 45 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 162 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 225 },
			["Karoups|spineshatter"] = { 1, 2, -6, 317 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 296 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 585 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 225 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 277 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 275 },
			["Forksache|spineshatter"] = { 12, 11, -73, 311 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 765 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 225 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 232 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 321 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 342 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 153 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 401 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 402 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 287 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 286 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 225 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 272 },
			["Mblol|spineshatter"] = { 6, 1, 32, 225 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 225 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 390 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 390 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 298 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 45 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 162 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 225 },
			["Karoups|spineshatter"] = { 1, 2, -6, 317 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 296 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 585 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 225 },
		},
	},
}

