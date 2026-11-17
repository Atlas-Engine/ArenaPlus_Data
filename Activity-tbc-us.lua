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
	built = 1794920317,
	builtText = "2026-11-17 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 41 },
			["Bbangzz|dreamscythe"] = { 1, 0, 3, 41 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 41 },
			["Shikumunss|dreamscythe"] = { 1, 0, 3, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 41 },
			["Ryanin|dreamscythe"] = { 13, 3, 37, 81 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 93 },
			["Ðade|nightslayer"] = { 4, 4, -33, 142 },
			["Floridaboy|nightslayer"] = { 3, 4, -27, 143 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 114 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 127 },
			["Bbangzz|dreamscythe"] = { 1, 0, 3, 41 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 41 },
			["Shikumunss|dreamscythe"] = { 1, 0, 3, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 41 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 81 },
			["Ðade|nightslayer"] = { 6, 5, -37, 142 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 93 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 143 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 114 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 127 },
			["Bbangzz|dreamscythe"] = { 1, 0, 3, 41 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 41 },
			["Shikumunss|dreamscythe"] = { 1, 0, 3, 41 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 221 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 41 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 81 },
			["Faeriejane|nightslayer"] = { 7, 8, -40, 662 },
			["Ðade|nightslayer"] = { 6, 5, -37, 142 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 452 },
			["Astiax|nightslayer"] = { 5, 5, -6, 512 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 538 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 93 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 605 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 143 },
			["Jackular|nightslayer"] = { 5, 5, 21, 513 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 581 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 518 },
			["Restokind|nightslayer"] = { 5, 5, 36, 541 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 561 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 517 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 541 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 581 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 581 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 673 },
			["Ichix|nightslayer"] = { 7, 2, 82, 673 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 534 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 534 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 581 },
			["Caelius|nightslayer"] = { 3, 2, -29, 581 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 114 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 127 },
			["Pomper|nightslayer"] = { 2, 3, -17, 581 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 401 },
			["Astias|nightslayer"] = { 2, 2, 1, 641 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 643 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 581 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 581 },
			["Bbangzz|dreamscythe"] = { 1, 0, 3, 41 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 41 },
			["Shikumunss|dreamscythe"] = { 1, 0, 3, 41 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 221 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 528 },
			["Pylol|nightslayer"] = { 4, 0, 5, 221 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 662 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 41 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 81 },
			["Ðade|nightslayer"] = { 6, 5, -37, 142 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 452 },
			["Astiax|nightslayer"] = { 5, 5, -6, 512 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 538 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 93 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 605 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 143 },
			["Jackular|nightslayer"] = { 5, 5, 21, 513 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 581 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 518 },
			["Restokind|nightslayer"] = { 5, 5, 36, 541 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 561 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 517 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 541 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 581 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 581 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 673 },
			["Ichix|nightslayer"] = { 7, 2, 82, 673 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 534 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 534 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 581 },
			["Caelius|nightslayer"] = { 3, 2, -29, 581 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 114 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 127 },
			["Pomper|nightslayer"] = { 2, 3, -17, 581 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 401 },
			["Astias|nightslayer"] = { 2, 2, 1, 641 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 761 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 643 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 581 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 581 },
			["Bbangzz|dreamscythe"] = { 1, 0, 3, 41 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 41 },
			["Konnz|nightslayer"] = { 1, 0, 3, 748 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 747 },
			["Shikumunss|dreamscythe"] = { 1, 0, 3, 41 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 221 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 528 },
			["Pylol|nightslayer"] = { 4, 0, 5, 221 },
		},
	},
}

