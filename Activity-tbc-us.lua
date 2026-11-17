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
	built = 1794952714,
	builtText = "2026-11-17 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 581 },
			["Ryanin|dreamscythe"] = { 13, 3, 37, 621 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 508 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 633 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 512 },
			["Ðade|nightslayer"] = { 4, 4, -33, 682 },
			["Floridaboy|nightslayer"] = { 3, 4, -27, 683 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 653 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 667 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 581 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 400 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 1202 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 581 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 621 },
			["Ðade|nightslayer"] = { 6, 5, -37, 682 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 992 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1052 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 508 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1078 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 633 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1145 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 683 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1053 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1121 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1057 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1081 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 512 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1101 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1057 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1081 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1121 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1121 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 1213 },
			["Ichix|nightslayer"] = { 7, 2, 82, 1213 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 1074 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 1074 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1121 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1121 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 653 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 667 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1121 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 941 },
			["Astias|nightslayer"] = { 2, 2, 1, 1181 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1301 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1183 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1121 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1121 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 581 },
			["Konnz|nightslayer"] = { 1, 0, 3, 1288 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 400 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 1287 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 761 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1068 },
			["Pylol|nightslayer"] = { 4, 0, 5, 761 },
		},
	},
}

