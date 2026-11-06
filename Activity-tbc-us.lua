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
	built = 1793962714,
	builtText = "2026-11-06 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Trû|nightslayer"] = { 2, 0, 9, 53 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 6, 0, 12, 122 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 101 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 101 },
			["Swky|nightslayer"] = { 3, 0, 6, 127 },
			["Peladini|nightslayer"] = { 1, 1, 6, 101 },
			["Trû|nightslayer"] = { 2, 0, 9, 53 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 8, 3, 11, 341 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 345 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 299 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 122 },
			["Swky|nightslayer"] = { 6, 0, 12, 127 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 101 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 101 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 281 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 192 },
			["Peladini|nightslayer"] = { 1, 1, 6, 101 },
			["Trû|nightslayer"] = { 2, 0, 9, 53 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 299 },
			["Onit|nightslayer"] = { 8, 7, 14, 367 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 341 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 345 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 414 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 415 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 517 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 461 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 122 },
			["Swky|nightslayer"] = { 6, 0, 12, 127 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 555 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 434 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 436 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 101 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 442 },
			["Tycat|nightslayer"] = { 2, 2, -19, 555 },
			["Lestát|nightslayer"] = { 2, 1, 10, 372 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 101 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 281 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 461 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 192 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 486 },
			["Peladini|nightslayer"] = { 1, 1, 6, 101 },
			["Trû|nightslayer"] = { 2, 0, 9, 53 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 361 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 461 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 340 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 299 },
			["Onit|nightslayer"] = { 8, 7, 14, 367 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 341 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 345 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 414 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 415 },
			["Saplinq|nightslayer"] = { 2, 7, 5, 101 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 517 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 461 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1001 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 1075 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 122 },
			["Swky|nightslayer"] = { 6, 0, 12, 127 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 1181 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1140 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 555 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 434 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1090 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 436 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 101 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 442 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1139 },
			["Tycat|nightslayer"] = { 2, 2, -19, 555 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1090 },
			["Lestát|nightslayer"] = { 2, 1, 10, 372 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 281 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 461 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 192 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 486 },
			["Peladini|nightslayer"] = { 1, 1, 6, 101 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1001 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1361 },
			["Trû|nightslayer"] = { 2, 0, 9, 53 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 1067 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 361 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 461 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 340 },
		},
	},
}

