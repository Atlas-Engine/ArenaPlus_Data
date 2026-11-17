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
	built = 1794931112,
	builtText = "2026-11-17 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bbangzz|dreamscythe"] = { 9, 0, 39, 148 },
			["Shikumunss|dreamscythe"] = { 9, 0, 39, 152 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 221 },
			["Ryanin|dreamscythe"] = { 13, 3, 37, 261 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 148 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 273 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 152 },
			["Ðade|nightslayer"] = { 4, 4, -33, 322 },
			["Floridaboy|nightslayer"] = { 3, 4, -27, 323 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 293 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 307 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 221 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 221 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 261 },
			["Ðade|nightslayer"] = { 6, 5, -37, 322 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 632 },
			["Astiax|nightslayer"] = { 5, 5, -6, 692 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 148 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 273 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 323 },
			["Jackular|nightslayer"] = { 5, 5, 21, 693 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 697 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 152 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 697 },
			["Christofferr|nightslayer"] = { 4, 3, -25, 717 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 293 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 307 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 714 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 714 },
			["Acmílan|nightslayer"] = { 0, 1, -16, 581 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 221 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 40 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 401 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 3, -59, 708 },
			["Pylol|nightslayer"] = { 4, 0, 5, 401 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 842 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 221 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 261 },
			["Ðade|nightslayer"] = { 6, 5, -37, 322 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 632 },
			["Astiax|nightslayer"] = { 5, 5, -6, 692 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 148 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 717 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 273 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 785 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 323 },
			["Jackular|nightslayer"] = { 5, 5, 21, 693 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 761 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 697 },
			["Restokind|nightslayer"] = { 5, 5, 36, 721 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 152 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 741 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 697 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 721 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 761 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 761 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 853 },
			["Ichix|nightslayer"] = { 7, 2, 82, 853 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 714 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 714 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 761 },
			["Caelius|nightslayer"] = { 3, 2, -29, 761 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 293 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 307 },
			["Pomper|nightslayer"] = { 2, 3, -17, 761 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 581 },
			["Astias|nightslayer"] = { 2, 2, 1, 821 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 941 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 822 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 761 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 761 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 221 },
			["Konnz|nightslayer"] = { 1, 0, 3, 928 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 40 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 927 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 401 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 708 },
			["Pylol|nightslayer"] = { 4, 0, 5, 401 },
		},
	},
}

