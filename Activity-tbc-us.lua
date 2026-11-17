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

ns.ACTIVITY_BY_REGION["tbc-us"] = {
	built = 1794913114,
	builtText = "2026-11-17 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ðade|nightslayer"] = { 4, 4, -33, 22 },
			["Floridaboy|nightslayer"] = { 3, 4, -27, 23 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ðade|nightslayer"] = { 6, 5, -37, 22 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 23 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 101 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 101 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 101 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ðade|nightslayer"] = { 6, 5, -37, 22 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 332 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 23 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 101 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 101 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 281 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 101 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 542 },
			["Ðade|nightslayer"] = { 6, 5, -37, 22 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 332 },
			["Astiax|nightslayer"] = { 5, 5, -6, 392 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 418 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 485 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 23 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 101 },
			["Jackular|nightslayer"] = { 5, 5, 21, 393 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 461 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 397 },
			["Restokind|nightslayer"] = { 5, 5, 36, 421 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 441 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 397 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 421 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 461 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 461 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 553 },
			["Ichix|nightslayer"] = { 7, 2, 82, 553 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 101 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 414 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 414 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 461 },
			["Caelius|nightslayer"] = { 3, 2, -29, 461 },
			["Pomper|nightslayer"] = { 2, 3, -17, 461 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 281 },
			["Astias|nightslayer"] = { 2, 2, 1, 521 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 641 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 523 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 461 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 461 },
			["Konnz|nightslayer"] = { 1, 0, 3, 628 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 627 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 101 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 408 },
			["Pylol|nightslayer"] = { 4, 0, 5, 101 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 542 },
			["Ðade|nightslayer"] = { 6, 5, -37, 22 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 332 },
			["Astiax|nightslayer"] = { 5, 5, -6, 392 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 418 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 485 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 23 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 101 },
			["Jackular|nightslayer"] = { 5, 5, 21, 393 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 461 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 397 },
			["Restokind|nightslayer"] = { 5, 5, 36, 421 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 441 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 397 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 421 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 461 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 461 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 553 },
			["Ichix|nightslayer"] = { 7, 2, 82, 553 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 101 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 414 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 414 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 461 },
			["Caelius|nightslayer"] = { 3, 2, -29, 461 },
			["Pomper|nightslayer"] = { 2, 3, -17, 461 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 281 },
			["Astias|nightslayer"] = { 2, 2, 1, 521 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 641 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 523 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 461 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 461 },
			["Konnz|nightslayer"] = { 1, 0, 3, 628 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 627 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 101 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 408 },
			["Pylol|nightslayer"] = { 4, 0, 5, 101 },
		},
	},
}

