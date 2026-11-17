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
	built = 1794923914,
	builtText = "2026-11-17 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bbangzz|dreamscythe"] = { 9, 0, 39, 28 },
			["Shikumunss|dreamscythe"] = { 9, 0, 39, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 101 },
			["Ryanin|dreamscythe"] = { 13, 3, 37, 141 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 28 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 153 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 32 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 173 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 101 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 141 },
			["Ðade|nightslayer"] = { 6, 5, -37, 202 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 28 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 153 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 203 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 32 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 173 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 187 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 101 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 281 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 101 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 141 },
			["Ðade|nightslayer"] = { 6, 5, -37, 202 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 512 },
			["Astiax|nightslayer"] = { 5, 5, -6, 572 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 28 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 598 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 153 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 665 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 203 },
			["Jackular|nightslayer"] = { 5, 5, 21, 573 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 641 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 577 },
			["Restokind|nightslayer"] = { 5, 5, 36, 601 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 32 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 621 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 577 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 601 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 641 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 641 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 641 },
			["Caelius|nightslayer"] = { 3, 2, -29, 641 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 173 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 187 },
			["Pomper|nightslayer"] = { 2, 3, -17, 641 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 461 },
			["Astias|nightslayer"] = { 2, 2, 1, 701 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 703 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 594 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 594 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 641 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 641 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 101 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 281 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 588 },
			["Pylol|nightslayer"] = { 4, 0, 5, 281 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 722 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 101 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 141 },
			["Ðade|nightslayer"] = { 6, 5, -37, 202 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 512 },
			["Astiax|nightslayer"] = { 5, 5, -6, 572 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 28 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 598 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 153 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 665 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 203 },
			["Jackular|nightslayer"] = { 5, 5, 21, 573 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 641 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 577 },
			["Restokind|nightslayer"] = { 5, 5, 36, 601 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 32 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 621 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 577 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 601 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 641 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 641 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 733 },
			["Ichix|nightslayer"] = { 7, 2, 82, 733 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 594 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 594 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 641 },
			["Caelius|nightslayer"] = { 3, 2, -29, 641 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 173 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 187 },
			["Pomper|nightslayer"] = { 2, 3, -17, 641 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 461 },
			["Astias|nightslayer"] = { 2, 2, 1, 701 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 821 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 703 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 641 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 641 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 101 },
			["Konnz|nightslayer"] = { 1, 0, 3, 808 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 807 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 281 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 588 },
			["Pylol|nightslayer"] = { 4, 0, 5, 281 },
		},
	},
}

