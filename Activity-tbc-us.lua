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
	built = 1794938316,
	builtText = "2026-11-17 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 341 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 268 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 272 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 341 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 341 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 381 },
			["Ðade|nightslayer"] = { 6, 5, -37, 442 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 268 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 393 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 443 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 272 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 414 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 427 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 701 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 341 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 160 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 521 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 521 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 962 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 341 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 381 },
			["Ðade|nightslayer"] = { 6, 5, -37, 442 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 752 },
			["Astiax|nightslayer"] = { 5, 5, -6, 812 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 268 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 838 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 393 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 905 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 443 },
			["Jackular|nightslayer"] = { 5, 5, 21, 813 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 881 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 817 },
			["Restokind|nightslayer"] = { 5, 5, 36, 841 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 272 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 861 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 817 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 841 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 881 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 881 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 973 },
			["Ichix|nightslayer"] = { 7, 2, 82, 973 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 834 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 834 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 881 },
			["Caelius|nightslayer"] = { 3, 2, -29, 881 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 414 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 427 },
			["Pomper|nightslayer"] = { 2, 3, -17, 881 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 701 },
			["Astias|nightslayer"] = { 2, 2, 1, 941 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1061 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 943 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 881 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 881 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 341 },
			["Konnz|nightslayer"] = { 1, 0, 3, 1048 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 160 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 1047 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 521 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 828 },
			["Pylol|nightslayer"] = { 4, 0, 5, 521 },
		},
	},
}

