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
	built = 1794902314,
	builtText = "2026-11-17 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 152 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 152 },
			["Astiax|nightslayer"] = { 5, 5, -6, 212 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 238 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 305 },
			["Jackular|nightslayer"] = { 5, 5, 21, 213 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 281 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 217 },
			["Restokind|nightslayer"] = { 5, 5, 36, 241 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 261 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 217 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 241 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 281 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 281 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 281 },
			["Caelius|nightslayer"] = { 3, 2, -29, 281 },
			["Pomper|nightslayer"] = { 2, 3, -17, 281 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 341 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 343 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 234 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 234 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 281 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 281 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 228 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 362 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 152 },
			["Astiax|nightslayer"] = { 5, 5, -6, 212 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 238 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 305 },
			["Jackular|nightslayer"] = { 5, 5, 21, 213 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 281 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 217 },
			["Restokind|nightslayer"] = { 5, 5, 36, 241 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 261 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 217 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 241 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 281 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 281 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 373 },
			["Ichix|nightslayer"] = { 7, 2, 82, 373 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 234 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 234 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 281 },
			["Caelius|nightslayer"] = { 3, 2, -29, 281 },
			["Pomper|nightslayer"] = { 2, 3, -17, 281 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 341 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 461 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 343 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 281 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 281 },
			["Konnz|nightslayer"] = { 1, 0, 3, 448 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 447 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 228 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 362 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 152 },
			["Astiax|nightslayer"] = { 5, 5, -6, 212 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 238 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 305 },
			["Jackular|nightslayer"] = { 5, 5, 21, 213 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 281 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 217 },
			["Restokind|nightslayer"] = { 5, 5, 36, 241 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 261 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 217 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 241 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 281 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 281 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 373 },
			["Ichix|nightslayer"] = { 7, 2, 82, 373 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 234 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 234 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 281 },
			["Caelius|nightslayer"] = { 3, 2, -29, 281 },
			["Pomper|nightslayer"] = { 2, 3, -17, 281 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 341 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 461 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 343 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 281 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 281 },
			["Konnz|nightslayer"] = { 1, 0, 3, 448 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 447 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 228 },
		},
	},
}

