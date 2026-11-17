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
	built = 1794927516,
	builtText = "2026-11-17 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 161 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 88 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 92 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 161 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 201 },
			["Ðade|nightslayer"] = { 6, 5, -37, 262 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 88 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 213 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 263 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 92 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 234 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 247 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 161 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 341 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 161 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 201 },
			["Ðade|nightslayer"] = { 6, 5, -37, 262 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 572 },
			["Astiax|nightslayer"] = { 5, 5, -6, 632 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 88 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 658 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 213 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 263 },
			["Jackular|nightslayer"] = { 5, 5, 21, 633 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 701 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 637 },
			["Restokind|nightslayer"] = { 5, 5, 36, 661 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 92 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 681 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 637 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 661 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 701 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 701 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 701 },
			["Caelius|nightslayer"] = { 3, 2, -29, 701 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 234 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 247 },
			["Pomper|nightslayer"] = { 2, 3, -17, 701 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 521 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 654 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 654 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 701 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 701 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 161 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 341 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 648 },
			["Pylol|nightslayer"] = { 4, 0, 5, 341 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 782 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 161 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 201 },
			["Ðade|nightslayer"] = { 6, 5, -37, 262 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 572 },
			["Astiax|nightslayer"] = { 5, 5, -6, 632 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 88 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 658 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 213 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 725 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 263 },
			["Jackular|nightslayer"] = { 5, 5, 21, 633 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 701 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 637 },
			["Restokind|nightslayer"] = { 5, 5, 36, 661 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 92 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 681 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 637 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 661 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 701 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 701 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 793 },
			["Ichix|nightslayer"] = { 7, 2, 82, 793 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 654 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 654 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 701 },
			["Caelius|nightslayer"] = { 3, 2, -29, 701 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 234 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 247 },
			["Pomper|nightslayer"] = { 2, 3, -17, 701 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 521 },
			["Astias|nightslayer"] = { 2, 2, 1, 761 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 881 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 763 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 701 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 701 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 161 },
			["Konnz|nightslayer"] = { 1, 0, 3, 868 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 867 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 341 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 648 },
			["Pylol|nightslayer"] = { 4, 0, 5, 341 },
		},
	},
}

