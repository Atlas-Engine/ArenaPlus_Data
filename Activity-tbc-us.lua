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
	built = 1794887914,
	builtText = "2026-11-16 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 41 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 21 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 41 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 41 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 41 },
			["Caelius|nightslayer"] = { 3, 2, -29, 41 },
			["Pomper|nightslayer"] = { 2, 3, -17, 41 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 27 },
			["Christofferr|nightslayer"] = { 2, 1, 4, 41 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 41 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 41 },
			["Ullaron|nightslayer"] = { 1, 2, 7, 41 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 0, 1, -19, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 7, 8, -40, 122 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 65 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 41 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 21 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 41 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 41 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 133 },
			["Ichix|nightslayer"] = { 7, 2, 82, 133 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 41 },
			["Caelius|nightslayer"] = { 3, 2, -29, 41 },
			["Pomper|nightslayer"] = { 2, 3, -17, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 101 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 103 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 27 },
			["Christofferr|nightslayer"] = { 2, 1, 4, 41 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 154 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 150 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 41 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 41 },
			["Ullaron|nightslayer"] = { 1, 2, 7, 41 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 0, 1, -19, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 122 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 65 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 41 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 21 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 41 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 41 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 133 },
			["Ichix|nightslayer"] = { 7, 2, 82, 133 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 41 },
			["Caelius|nightslayer"] = { 3, 2, -29, 41 },
			["Pomper|nightslayer"] = { 2, 3, -17, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 101 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 221 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 103 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 27 },
			["Christofferr|nightslayer"] = { 2, 1, 4, 41 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 154 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 150 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 41 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 41 },
			["Ullaron|nightslayer"] = { 1, 2, 7, 41 },
			["Konnz|nightslayer"] = { 1, 0, 3, 208 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 207 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 0, 1, -19, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 122 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 65 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 41 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 21 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 41 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 41 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 133 },
			["Ichix|nightslayer"] = { 7, 2, 82, 133 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 41 },
			["Caelius|nightslayer"] = { 3, 2, -29, 41 },
			["Pomper|nightslayer"] = { 2, 3, -17, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 101 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 221 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 103 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 27 },
			["Christofferr|nightslayer"] = { 2, 1, 4, 41 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 154 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 150 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 41 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 41 },
			["Ullaron|nightslayer"] = { 1, 2, 7, 41 },
			["Konnz|nightslayer"] = { 1, 0, 3, 208 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 207 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 0, 1, -19, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 17, 16, -40, 122 },
			["Gaekpoong|nightslayer"] = { 17, 7, -31, 1266 },
			["Gwedysseus|nightslayer"] = { 16, 6, -27, 1267 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 65 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 41 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 21 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 41 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 41 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 133 },
			["Ichix|nightslayer"] = { 7, 2, 82, 133 },
			["Bazook|nightslayer"] = { 7, 1, 48, 1426 },
			["Truccz|nightslayer"] = { 7, 1, 48, 1425 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 41 },
			["Caelius|nightslayer"] = { 3, 2, -29, 41 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 1383 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 1383 },
			["Pomper|nightslayer"] = { 2, 3, -17, 41 },
			["Astias|nightslayer"] = { 2, 2, 1, 101 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 221 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 103 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 1301 },
			["Acmílan|nightslayer"] = { 1, 2, -11, 27 },
			["Christofferr|nightslayer"] = { 2, 1, 4, 41 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 154 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 150 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 41 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 41 },
			["Ullaron|nightslayer"] = { 1, 2, 7, 41 },
			["Ryanin|dreamscythe"] = { 1, 1, -1, 1348 },
			["Shigekazu|nightslayer"] = { 2, 0, 11, 1408 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 1415 },
			["Wílleh|nightslayer"] = { 2, 0, 11, 1408 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 1258 },
			["Konnz|nightslayer"] = { 1, 0, 3, 208 },
			["Leien|nightslayer"] = { 1, 0, 12, 1258 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 207 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 0, 1, -19, 41 },
		},
	},
}

