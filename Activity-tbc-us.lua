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
	built = 1794949112,
	builtText = "2026-11-17 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 521 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 561 },
			["Ðade|nightslayer"] = { 6, 5, -37, 622 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 448 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 573 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 623 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 452 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 593 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 607 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 521 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 340 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 701 },
		},
		[3] = {
			["Pylol|nightslayer"] = { 4, 0, 5, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 1142 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 521 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 561 },
			["Ðade|nightslayer"] = { 6, 5, -37, 622 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 932 },
			["Astiax|nightslayer"] = { 5, 5, -6, 992 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 448 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1017 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 573 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1085 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 623 },
			["Jackular|nightslayer"] = { 5, 5, 21, 993 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1061 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 997 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1021 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 452 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1041 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 997 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1021 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1061 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1061 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 1153 },
			["Ichix|nightslayer"] = { 7, 2, 82, 1153 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 1014 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 1014 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1061 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1061 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 593 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 607 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1061 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 881 },
			["Astias|nightslayer"] = { 2, 2, 1, 1121 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1241 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1122 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1061 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1061 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 521 },
			["Konnz|nightslayer"] = { 1, 0, 3, 1228 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 340 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 1227 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 701 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1008 },
			["Pylol|nightslayer"] = { 4, 0, 5, 701 },
		},
	},
}

