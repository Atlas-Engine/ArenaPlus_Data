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
	built = 1794895114,
	builtText = "2026-11-17 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 32 },
		},
		[3] = {
			["Runbtc|nightslayer"] = { 6, 4, -36, 59 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 32 },
			["Astiax|nightslayer"] = { 5, 5, -6, 92 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 118 },
			["Jackular|nightslayer"] = { 5, 5, 21, 93 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 161 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 97 },
			["Restokind|nightslayer"] = { 5, 5, 36, 121 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 141 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 97 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 121 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 161 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 161 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 161 },
			["Caelius|nightslayer"] = { 3, 2, -29, 161 },
			["Pomper|nightslayer"] = { 2, 3, -17, 161 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 114 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 114 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 147 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 161 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 161 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 108 },
			["Runbtc|nightslayer"] = { 6, 4, -36, 59 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 242 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 32 },
			["Astiax|nightslayer"] = { 5, 5, -6, 92 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 118 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 185 },
			["Jackular|nightslayer"] = { 5, 5, 21, 93 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 161 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 97 },
			["Restokind|nightslayer"] = { 5, 5, 36, 121 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 141 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 97 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 121 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 161 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 161 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 253 },
			["Ichix|nightslayer"] = { 7, 2, 82, 253 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 114 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 114 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 161 },
			["Caelius|nightslayer"] = { 3, 2, -29, 161 },
			["Pomper|nightslayer"] = { 2, 3, -17, 161 },
			["Astias|nightslayer"] = { 2, 2, 1, 221 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 341 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 223 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 147 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 161 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 161 },
			["Konnz|nightslayer"] = { 1, 0, 3, 328 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 327 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 108 },
			["Runbtc|nightslayer"] = { 6, 4, -36, 59 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 242 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 32 },
			["Astiax|nightslayer"] = { 5, 5, -6, 92 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 118 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 185 },
			["Jackular|nightslayer"] = { 5, 5, 21, 93 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 161 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 97 },
			["Restokind|nightslayer"] = { 5, 5, 36, 121 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 141 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 97 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 121 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 161 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 161 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 253 },
			["Ichix|nightslayer"] = { 7, 2, 82, 253 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 114 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 114 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 161 },
			["Caelius|nightslayer"] = { 3, 2, -29, 161 },
			["Pomper|nightslayer"] = { 2, 3, -17, 161 },
			["Astias|nightslayer"] = { 2, 2, 1, 221 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 341 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 223 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 147 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 161 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 161 },
			["Konnz|nightslayer"] = { 1, 0, 3, 328 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 327 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 108 },
			["Runbtc|nightslayer"] = { 6, 4, -36, 59 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 17, 16, -40, 242 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 32 },
			["Astiax|nightslayer"] = { 5, 5, -6, 92 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 118 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 185 },
			["Jackular|nightslayer"] = { 5, 5, 21, 93 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 161 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 97 },
			["Restokind|nightslayer"] = { 5, 5, 36, 121 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 141 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 97 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 121 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 161 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 161 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 253 },
			["Ichix|nightslayer"] = { 7, 2, 82, 253 },
			["Gaekpoong|nightslayer"] = { 7, 1, -1, 1386 },
			["Gwedysseus|nightslayer"] = { 7, 1, 0, 1387 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 114 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 114 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 161 },
			["Caelius|nightslayer"] = { 3, 2, -29, 161 },
			["Pomper|nightslayer"] = { 2, 3, -17, 161 },
			["Astias|nightslayer"] = { 2, 2, 1, 221 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 341 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 223 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 1421 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 147 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 161 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 161 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 1378 },
			["Konnz|nightslayer"] = { 1, 0, 3, 328 },
			["Leien|nightslayer"] = { 1, 0, 12, 1378 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 327 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 108 },
			["Runbtc|nightslayer"] = { 6, 4, -36, 59 },
		},
	},
}

