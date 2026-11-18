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
	built = 1794963514,
	builtText = "2026-11-17 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bbangzz|dreamscythe"] = { 9, 0, 39, 688 },
			["Shikumunss|dreamscythe"] = { 9, 0, 39, 692 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 580 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 761 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 801 },
			["Faeriejane|nightslayer"] = { 7, 8, -40, 1382 },
			["Ðade|nightslayer"] = { 6, 5, -37, 862 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1172 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1232 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 688 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1258 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 813 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1325 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 863 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1233 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1301 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1237 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1261 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 692 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1281 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1237 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1261 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1301 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1301 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 1393 },
			["Ichix|nightslayer"] = { 7, 2, 82, 1393 },
			["Dinnoo|nightslayer"] = { 6, 1, 0, 1254 },
			["Plasticsurgn|nightslayer"] = { 6, 1, 0, 1254 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1301 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1301 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 833 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 847 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1301 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 1121 },
			["Astias|nightslayer"] = { 2, 2, 1, 1361 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1363 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1301 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1301 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 761 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 580 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 941 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1248 },
			["Pylol|nightslayer"] = { 4, 0, 5, 941 },
		},
	},
}

