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
	built = 1794909515,
	builtText = "2026-11-17 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 1, 64, 41 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 41 },
			["Ðade|nightslayer"] = { 2, 1, -4, 41 },
			["Floridaboy|nightslayer"] = { 2, 1, 3, 41 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 41 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 9, 1, 64, 41 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 41 },
			["Ðade|nightslayer"] = { 2, 1, -4, 41 },
			["Floridaboy|nightslayer"] = { 2, 1, 3, 41 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 41 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 272 },
			["Astiax|nightslayer"] = { 5, 5, -6, 332 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 41 },
			["Jackular|nightslayer"] = { 5, 5, 21, 333 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 337 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 337 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 41 },
			["Christofferr|nightslayer"] = { 4, 3, -25, 358 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 354 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 354 },
			["Ðade|nightslayer"] = { 2, 1, -4, 41 },
			["Floridaboy|nightslayer"] = { 2, 1, 3, 41 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 221 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 41 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 3, -59, 348 },
			["Pylol|nightslayer"] = { 4, 0, 5, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 482 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 272 },
			["Astiax|nightslayer"] = { 5, 5, -6, 332 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 358 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 425 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 41 },
			["Jackular|nightslayer"] = { 5, 5, 21, 333 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 401 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 337 },
			["Restokind|nightslayer"] = { 5, 5, 36, 361 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 381 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 337 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 361 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 401 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 401 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 493 },
			["Ichix|nightslayer"] = { 7, 2, 82, 493 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 41 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 354 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 354 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 401 },
			["Caelius|nightslayer"] = { 3, 2, -29, 401 },
			["Pomper|nightslayer"] = { 2, 3, -17, 401 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 221 },
			["Astias|nightslayer"] = { 2, 2, 1, 461 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 581 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 463 },
			["Ðade|nightslayer"] = { 2, 1, -4, 41 },
			["Floridaboy|nightslayer"] = { 2, 1, 3, 41 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 401 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 401 },
			["Konnz|nightslayer"] = { 1, 0, 3, 568 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 567 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 41 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 348 },
			["Pylol|nightslayer"] = { 4, 0, 5, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 482 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 272 },
			["Astiax|nightslayer"] = { 5, 5, -6, 332 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 358 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 425 },
			["Gzlol|dreamscythe"] = { 9, 1, 64, 41 },
			["Jackular|nightslayer"] = { 5, 5, 21, 333 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 401 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 337 },
			["Restokind|nightslayer"] = { 5, 5, 36, 361 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 381 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 337 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 361 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 401 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 401 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 493 },
			["Ichix|nightslayer"] = { 7, 2, 82, 493 },
			["Ryanin|dreamscythe"] = { 8, 1, 38, 41 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 354 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 354 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 401 },
			["Caelius|nightslayer"] = { 3, 2, -29, 401 },
			["Pomper|nightslayer"] = { 2, 3, -17, 401 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 221 },
			["Astias|nightslayer"] = { 2, 2, 1, 461 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 581 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 463 },
			["Ðade|nightslayer"] = { 2, 1, -4, 41 },
			["Floridaboy|nightslayer"] = { 2, 1, 3, 41 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 401 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 401 },
			["Konnz|nightslayer"] = { 1, 0, 3, 568 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 567 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 41 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 348 },
			["Pylol|nightslayer"] = { 4, 0, 5, 41 },
		},
	},
}

