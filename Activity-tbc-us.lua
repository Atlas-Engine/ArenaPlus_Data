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
	built = 1794970713,
	builtText = "2026-11-17 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 0, 3, 63 },
			["Tycat|nightslayer"] = { 2, 0, 2, 64 },
			["Frotted|nightslayer"] = { 1, 0, 0, 92 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 0, 3, 63 },
			["Tycat|nightslayer"] = { 2, 0, 2, 64 },
			["Frotted|nightslayer"] = { 1, 0, 0, 92 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 0, 3, 63 },
			["Tycat|nightslayer"] = { 2, 0, 2, 64 },
			["Frotted|nightslayer"] = { 1, 0, 0, 92 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 700 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 22, 4, 125, 881 },
			["Ryanin|dreamscythe"] = { 21, 4, 75, 921 },
			["Ðade|nightslayer"] = { 6, 5, -37, 982 },
			["Ariiana|nightslayer"] = { 10, 0, 0, 1292 },
			["Astiax|nightslayer"] = { 5, 5, -6, 1352 },
			["Bbangzz|dreamscythe"] = { 10, 0, 42, 808 },
			["Christofferr|nightslayer"] = { 6, 4, -21, 1378 },
			["Druidtommy|nightslayer"] = { 4, 6, -9, 933 },
			["Floridaboy|nightslayer"] = { 5, 5, -24, 983 },
			["Jackular|nightslayer"] = { 5, 5, 21, 1353 },
			["Kinkysblues|nightslayer"] = { 6, 4, -13, 1421 },
			["Kohhan|nightslayer"] = { 5, 5, -14, 1357 },
			["Restokind|nightslayer"] = { 5, 5, 36, 1381 },
			["Shikumunss|dreamscythe"] = { 10, 0, 42, 812 },
			["Swackedx|dreamscythe"] = { 8, 2, -33, 1401 },
			["Tnyni|nightslayer"] = { 5, 5, -15, 1357 },
			["Ullaron|nightslayer"] = { 5, 5, 56, 1381 },
			["Bohagons|nightslayer"] = { 7, 2, 41, 1421 },
			["Chugzila|nightslayer"] = { 7, 2, 41, 1421 },
			["Bananaphon|nightslayer"] = { 2, 3, -18, 1421 },
			["Caelius|nightslayer"] = { 3, 2, -29, 1421 },
			["Clothfaté|nightslayer"] = { 5, 0, 46, 953 },
			["Kasupi|nightslayer"] = { 5, 0, 27, 967 },
			["Pomper|nightslayer"] = { 2, 3, -17, 1421 },
			["Acmílan|nightslayer"] = { 1, 3, -27, 1241 },
			["Dinnoo|nightslayer"] = { 4, 0, 15, 1374 },
			["Plasticsurgn|nightslayer"] = { 4, 0, 15, 1374 },
			["Ragequitqtt|nightslayer"] = { 2, 1, -13, 1421 },
			["ßraxtør|nightslayer"] = { 2, 1, -13, 1421 },
			["Fannypacker|nightslayer"] = { 2, 0, 3, 63 },
			["Tycat|nightslayer"] = { 2, 0, 2, 64 },
			["Floridaboi|nightslayer"] = { 1, 0, 3, 881 },
			["Frotted|nightslayer"] = { 1, 0, 0, 92 },
			["Maigaysiao|nightslayer"] = { 0, 1, -18, 700 },
		},
		[2] = {
			["Gzlol|dreamscythe"] = { 1, 0, 5, 1061 },
		},
		[3] = {
			["Çhìpíçhàpá|nightslayer"] = { 6, 4, -78, 1368 },
			["Pylol|nightslayer"] = { 4, 0, 5, 1061 },
		},
	},
}

