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
	built = 1794934715,
	builtText = "2026-11-17 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 281 },
			["Ryanin|dreamscythe"] = { 13, 3, 37, 321 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 208 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 333 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 212 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 354 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 281 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 281 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 321 },
			["Ðade|nightslayer"] = { 6, 5, -37, 382 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 692 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 208 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 333 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 383 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 212 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 354 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 367 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 641 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 281 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 100 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 461 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 461 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 902 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 281 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 321 },
			["Ðade|nightslayer"] = { 6, 5, -37, 382 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 692 },
			["Astiax|nightslayer"] = { 5, 5, -6, 752 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 208 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 778 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 333 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 845 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 383 },
			["Jackular|nightslayer"] = { 5, 5, 21, 753 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 821 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 757 },
			["Restokind|nightslayer"] = { 5, 5, 36, 781 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 212 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 801 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 757 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 781 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 821 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 821 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 913 },
			["Ichix|nightslayer"] = { 7, 2, 82, 913 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 774 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 774 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 821 },
			["Caelius|nightslayer"] = { 3, 2, -29, 821 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 354 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 367 },
			["Pomper|nightslayer"] = { 2, 3, -17, 821 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 641 },
			["Astias|nightslayer"] = { 2, 2, 1, 881 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1001 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 883 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 821 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 821 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 281 },
			["Konnz|nightslayer"] = { 1, 0, 3, 988 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 100 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 987 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 461 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 768 },
			["Pylol|nightslayer"] = { 4, 0, 5, 461 },
		},
	},
}

