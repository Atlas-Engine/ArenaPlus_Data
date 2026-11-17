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
	built = 1794891513,
	builtText = "2026-11-16 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Astiax|nightslayer"] = { 5, 5, -6, 32 },
			["Jackular|nightslayer"] = { 5, 5, 21, 33 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 37 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 37 },
			["Christofferr|nightslayer"] = { 4, 3, -25, 58 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 54 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 54 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 3, -59, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Astiax|nightslayer"] = { 5, 5, -6, 32 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 58 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 125 },
			["Jackular|nightslayer"] = { 5, 5, 21, 33 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 101 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 37 },
			["Restokind|nightslayer"] = { 5, 5, 36, 61 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 81 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 37 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 61 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 101 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 101 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 101 },
			["Caelius|nightslayer"] = { 3, 2, -29, 101 },
			["Pomper|nightslayer"] = { 2, 3, -17, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 161 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 162 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 54 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 54 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 87 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 101 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 101 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 48 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 182 },
			["Astiax|nightslayer"] = { 5, 5, -6, 32 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 58 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 125 },
			["Jackular|nightslayer"] = { 5, 5, 21, 33 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 101 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 37 },
			["Restokind|nightslayer"] = { 5, 5, 36, 61 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 81 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 37 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 61 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 101 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 101 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 193 },
			["Ichix|nightslayer"] = { 7, 2, 82, 193 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 54 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 54 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 101 },
			["Caelius|nightslayer"] = { 3, 2, -29, 101 },
			["Pomper|nightslayer"] = { 2, 3, -17, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 161 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 281 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 162 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 87 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 101 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 101 },
			["Konnz|nightslayer"] = { 1, 0, 3, 268 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 267 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 48 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 182 },
			["Astiax|nightslayer"] = { 5, 5, -6, 32 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 58 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 125 },
			["Jackular|nightslayer"] = { 5, 5, 21, 33 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 101 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 37 },
			["Restokind|nightslayer"] = { 5, 5, 36, 61 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 81 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 37 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 61 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 101 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 101 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 193 },
			["Ichix|nightslayer"] = { 7, 2, 82, 193 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 54 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 54 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 101 },
			["Caelius|nightslayer"] = { 3, 2, -29, 101 },
			["Pomper|nightslayer"] = { 2, 3, -17, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 161 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 281 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 162 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 87 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 101 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 101 },
			["Konnz|nightslayer"] = { 1, 0, 3, 268 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 267 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 48 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 17, 16, -40, 182 },
			["Gaekpoong|nightslayer"] = { 17, 7, -31, 1326 },
			["Gwedysseus|nightslayer"] = { 16, 6, -27, 1327 },
			["Astiax|nightslayer"] = { 5, 5, -6, 32 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 58 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 125 },
			["Jackular|nightslayer"] = { 5, 5, 21, 33 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 101 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 37 },
			["Restokind|nightslayer"] = { 5, 5, 36, 61 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 81 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 37 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 61 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 101 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 101 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 193 },
			["Ichix|nightslayer"] = { 7, 2, 82, 193 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 54 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 54 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 101 },
			["Caelius|nightslayer"] = { 3, 2, -29, 101 },
			["Pomper|nightslayer"] = { 2, 3, -17, 101 },
			["Astias|nightslayer"] = { 2, 2, 1, 161 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 281 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 162 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 1361 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 87 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 101 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 101 },
			["Ryanin|dreamscythe"] = { 1, 1, -1, 1408 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 1318 },
			["Konnz|nightslayer"] = { 1, 0, 3, 268 },
			["Leien|nightslayer"] = { 1, 0, 12, 1318 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 267 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 48 },
		},
	},
}

