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
	built = 1794916713,
	builtText = "2026-11-17 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 13, 3, 37, 21 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 53 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 21, 4, 75, 21 },
			["Ðade|nightslayer"] = { 6, 5, -37, 82 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 83 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 161 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 53 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 67 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 161 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 21, 4, 75, 21 },
			["Ðade|nightslayer"] = { 6, 5, -37, 82 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 83 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 161 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 53 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 67 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 341 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 161 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 161 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 602 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 21 },
			["Ðade|nightslayer"] = { 6, 5, -37, 82 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 392 },
			["Astiax|nightslayer"] = { 5, 5, -6, 452 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 478 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 545 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 83 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 161 },
			["Jackular|nightslayer"] = { 5, 5, 21, 453 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 521 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 457 },
			["Restokind|nightslayer"] = { 5, 5, 36, 481 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 501 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 457 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 481 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 521 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 521 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 613 },
			["Ichix|nightslayer"] = { 7, 2, 82, 613 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 474 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 474 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 521 },
			["Caelius|nightslayer"] = { 3, 2, -29, 521 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 53 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 67 },
			["Pomper|nightslayer"] = { 2, 3, -17, 521 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 341 },
			["Astias|nightslayer"] = { 2, 2, 1, 581 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 701 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 582 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 521 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 521 },
			["Konnz|nightslayer"] = { 1, 0, 3, 688 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 687 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 161 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 468 },
			["Pylol|nightslayer"] = { 4, 0, 5, 161 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 602 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 21 },
			["Ðade|nightslayer"] = { 6, 5, -37, 82 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 392 },
			["Astiax|nightslayer"] = { 5, 5, -6, 452 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 478 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 545 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 83 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 161 },
			["Jackular|nightslayer"] = { 5, 5, 21, 453 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 521 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 457 },
			["Restokind|nightslayer"] = { 5, 5, 36, 481 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 501 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 457 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 481 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 521 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 521 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 613 },
			["Ichix|nightslayer"] = { 7, 2, 82, 613 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 474 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 474 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 521 },
			["Caelius|nightslayer"] = { 3, 2, -29, 521 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 53 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 67 },
			["Pomper|nightslayer"] = { 2, 3, -17, 521 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 341 },
			["Astias|nightslayer"] = { 2, 2, 1, 581 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 701 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 582 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 521 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 521 },
			["Konnz|nightslayer"] = { 1, 0, 3, 688 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 687 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 161 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 468 },
			["Pylol|nightslayer"] = { 4, 0, 5, 161 },
		},
	},
}

