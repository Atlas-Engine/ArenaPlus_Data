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
	built = 1794956315,
	builtText = "2026-11-17 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 13, 3, 61, 641 },
			["Ryanin|dreamscythe"] = { 13, 3, 37, 681 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 568 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 693 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 572 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 714 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 641 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 460 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 1262 },
			["Gzlol|dreamscythe"] = { 22, 4, 125, 641 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 681 },
			["Ðade|nightslayer"] = { 6, 5, -37, 742 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1052 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1112 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 568 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1138 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 693 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1205 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 743 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1113 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1181 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1117 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1141 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 572 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1161 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1117 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1141 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1181 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1181 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 1273 },
			["Ichix|nightslayer"] = { 7, 2, 82, 1273 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 1134 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 1134 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1181 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1181 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 714 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 727 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1181 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 1001 },
			["Astias|nightslayer"] = { 2, 2, 1, 1241 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 1361 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1243 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1181 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1181 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 641 },
			["Konnz|nightslayer"] = { 1, 0, 3, 1348 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 460 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 1347 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 821 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1128 },
			["Pylol|nightslayer"] = { 4, 0, 5, 821 },
		},
	},
}

