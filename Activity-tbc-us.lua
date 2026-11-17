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
	built = 1794945514,
	builtText = "2026-11-17 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 461 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 501 },
			["Ðade|nightslayer"] = { 6, 5, -37, 562 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 388 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 513 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 563 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 392 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 533 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 547 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 461 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 280 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 641 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 1082 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 461 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 501 },
			["Ðade|nightslayer"] = { 6, 5, -37, 562 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 872 },
			["Astiax|nightslayer"] = { 5, 5, -6, 932 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 388 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 958 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 513 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1025 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 563 },
			["Jackular|nightslayer"] = { 5, 5, 21, 933 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1001 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 937 },
			["Restokind|nightslayer"] = { 5, 5, 36, 961 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 392 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 981 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 937 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 961 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1001 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1001 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 1093 },
			["Ichix|nightslayer"] = { 7, 2, 82, 1093 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 954 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 954 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1001 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1001 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 533 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 547 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1001 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 821 },
			["Astias|nightslayer"] = { 2, 2, 1, 1061 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1181 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1063 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1001 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1001 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 461 },
			["Konnz|nightslayer"] = { 1, 0, 3, 1168 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 280 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 1167 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 641 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 948 },
			["Pylol|nightslayer"] = { 4, 0, 5, 641 },
		},
	},
}

