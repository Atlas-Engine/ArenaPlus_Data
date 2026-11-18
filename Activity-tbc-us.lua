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
	built = 1794967113,
	builtText = "2026-11-17 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Frotted|nightslayer"] = { 1, 0, 0, 32 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Frotted|nightslayer"] = { 1, 0, 0, 32 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Frotted|nightslayer"] = { 1, 0, 0, 32 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Frotted|nightslayer"] = { 1, 0, 0, 32 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 640 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 821 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 861 },
			["Ðade|nightslayer"] = { 6, 5, -37, 922 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1232 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1292 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 748 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1318 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 873 },
			["Erpaderpxx|nightslayer"] = { 6, 4, -9, 1385 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 923 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1293 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1361 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1297 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1321 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 752 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1341 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1297 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1321 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1361 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1361 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1361 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1361 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 893 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 907 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1361 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 1181 },
			["Astias|nightslayer"] = { 2, 2, 1, 1421 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 1422 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 1314 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 1314 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1361 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1361 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 821 },
			["Frotted|nightslayer"] = { 1, 0, 0, 32 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 640 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1001 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1308 },
			["Pylol|nightslayer"] = { 4, 0, 5, 1001 },
		},
	},
}

