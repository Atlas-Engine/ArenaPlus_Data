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
	built = 1794905914,
	builtText = "2026-11-17 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ulríck|dreamscythe"] = { 0, 1, -11, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Acmílan|nightslayer"] = { 0, 1, -16, 161 },
			["Ulríck|dreamscythe"] = { 0, 1, -11, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 212 },
			["Astiax|nightslayer"] = { 5, 5, -6, 272 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 298 },
			["Jackular|nightslayer"] = { 5, 5, 21, 273 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 341 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 277 },
			["Restokind|nightslayer"] = { 5, 5, 36, 301 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 321 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 277 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 301 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 341 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 341 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 341 },
			["Caelius|nightslayer"] = { 3, 2, -29, 341 },
			["Pomper|nightslayer"] = { 2, 3, -17, 341 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 161 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 294 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 294 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 341 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 341 },
			["Ulríck|dreamscythe"] = { 0, 1, -11, 58 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 288 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 422 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 212 },
			["Astiax|nightslayer"] = { 5, 5, -6, 272 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 298 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 365 },
			["Jackular|nightslayer"] = { 5, 5, 21, 273 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 341 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 277 },
			["Restokind|nightslayer"] = { 5, 5, 36, 301 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 321 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 277 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 301 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 341 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 341 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 433 },
			["Ichix|nightslayer"] = { 7, 2, 82, 433 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 294 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 294 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 341 },
			["Caelius|nightslayer"] = { 3, 2, -29, 341 },
			["Pomper|nightslayer"] = { 2, 3, -17, 341 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 161 },
			["Astias|nightslayer"] = { 2, 2, 1, 401 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 521 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 403 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 341 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 341 },
			["Konnz|nightslayer"] = { 1, 0, 3, 508 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 507 },
			["Ulríck|dreamscythe"] = { 0, 1, -11, 58 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 288 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 422 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 212 },
			["Astiax|nightslayer"] = { 5, 5, -6, 272 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 298 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 365 },
			["Jackular|nightslayer"] = { 5, 5, 21, 273 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 341 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 277 },
			["Restokind|nightslayer"] = { 5, 5, 36, 301 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 321 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 277 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 301 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 341 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 341 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 433 },
			["Ichix|nightslayer"] = { 7, 2, 82, 433 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 294 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 294 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 341 },
			["Caelius|nightslayer"] = { 3, 2, -29, 341 },
			["Pomper|nightslayer"] = { 2, 3, -17, 341 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 161 },
			["Astias|nightslayer"] = { 2, 2, 1, 401 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 521 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 403 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 341 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 341 },
			["Konnz|nightslayer"] = { 1, 0, 3, 508 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 507 },
			["Ulríck|dreamscythe"] = { 0, 1, -11, 58 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 288 },
		},
	},
}

