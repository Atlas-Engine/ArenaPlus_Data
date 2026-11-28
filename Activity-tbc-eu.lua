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
	built = 1795841969,
	builtText = "2026-11-27 11:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 6, 3, 15, 165 },
			["Matteex|spineshatter"] = { 4, 1, 30, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 281 },
			["Thadoraa|spineshatter"] = { 12, 4, 63, 165 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 345 },
			["Ellilol|thunderstrike"] = { 4, 2, -16, 314 },
			["Gushers|spineshatter"] = { 4, 2, 7, 276 },
			["Shadøwsfall|thunderstrike"] = { 4, 2, -16, 309 },
			["Matteex|spineshatter"] = { 4, 1, 30, 165 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 322 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 345 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 33, 21, 130, 165 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 314 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 309 },
			["Quernx|spineshatter"] = { 16, 2, 52, 398 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 397 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 281 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 471 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 473 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 398 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 345 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 574 },
			["Gushers|spineshatter"] = { 4, 2, 7, 276 },
			["Desm|spineshatter"] = { 5, 0, 27, 525 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 525 },
			["Matteex|spineshatter"] = { 4, 1, 30, 165 },
			["Mblol|spineshatter"] = { 3, 0, 8, 525 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 640 },
			["Miracles|spineshatter"] = { 1, 1, -5, 611 },
			["Gfal|spineshatter"] = { 0, 1, -18, 600 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 322 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 368 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 345 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 33, 21, 130, 165 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 314 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 309 },
			["Quernx|spineshatter"] = { 16, 2, 52, 398 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 397 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 281 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 471 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 473 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 398 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 345 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 574 },
			["Gushers|spineshatter"] = { 4, 2, 7, 276 },
			["Desm|spineshatter"] = { 5, 0, 27, 525 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 525 },
			["Matteex|spineshatter"] = { 4, 1, 30, 165 },
			["Mblol|spineshatter"] = { 3, 0, 8, 525 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 640 },
			["Miracles|spineshatter"] = { 1, 1, -5, 611 },
			["Gfal|spineshatter"] = { 0, 1, -18, 600 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 322 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 368 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 345 },
		},
	},
}

