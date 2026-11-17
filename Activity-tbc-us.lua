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
	built = 1794898714,
	builtText = "2026-11-17 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Acmílan|nightslayer"] = { 0, 1, -16, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 10, 0, 0, 92 },
			["Astiax|nightslayer"] = { 5, 5, -6, 152 },
			["Jackular|nightslayer"] = { 5, 5, 21, 153 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 157 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 157 },
			["Christofferr|nightslayer"] = { 4, 3, -25, 178 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 174 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 174 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 41 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 3, -59, 168 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 7, 8, -40, 302 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 92 },
			["Astiax|nightslayer"] = { 5, 5, -6, 152 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 178 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 245 },
			["Jackular|nightslayer"] = { 5, 5, 21, 153 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 221 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 157 },
			["Restokind|nightslayer"] = { 5, 5, 36, 181 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 201 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 157 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 181 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 221 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 221 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 313 },
			["Ichix|nightslayer"] = { 7, 2, 82, 313 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 174 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 174 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 221 },
			["Caelius|nightslayer"] = { 3, 2, -29, 221 },
			["Pomper|nightslayer"] = { 2, 3, -17, 221 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 281 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 283 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 221 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 221 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 168 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 302 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 92 },
			["Astiax|nightslayer"] = { 5, 5, -6, 152 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 178 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 245 },
			["Jackular|nightslayer"] = { 5, 5, 21, 153 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 221 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 157 },
			["Restokind|nightslayer"] = { 5, 5, 36, 181 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 201 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 157 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 181 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 221 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 221 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 313 },
			["Ichix|nightslayer"] = { 7, 2, 82, 313 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 174 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 174 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 221 },
			["Caelius|nightslayer"] = { 3, 2, -29, 221 },
			["Pomper|nightslayer"] = { 2, 3, -17, 221 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 281 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 401 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 283 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 221 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 221 },
			["Konnz|nightslayer"] = { 1, 0, 3, 388 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 387 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 168 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 302 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 92 },
			["Astiax|nightslayer"] = { 5, 5, -6, 152 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 178 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 245 },
			["Jackular|nightslayer"] = { 5, 5, 21, 153 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 221 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 157 },
			["Restokind|nightslayer"] = { 5, 5, 36, 181 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 201 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 157 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 181 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 221 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 221 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 313 },
			["Ichix|nightslayer"] = { 7, 2, 82, 313 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 174 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 174 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 221 },
			["Caelius|nightslayer"] = { 3, 2, -29, 221 },
			["Pomper|nightslayer"] = { 2, 3, -17, 221 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 281 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 401 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 283 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 221 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 221 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 1438 },
			["Konnz|nightslayer"] = { 1, 0, 3, 388 },
			["Leien|nightslayer"] = { 1, 0, 12, 1438 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 387 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 168 },
		},
	},
}

