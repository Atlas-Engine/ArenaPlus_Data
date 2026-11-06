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
	built = 1793955514,
	builtText = "2026-11-06 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 6, 0, 12, 2 },
			["Swky|nightslayer"] = { 3, 0, 6, 7 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 5, 4, 10, 179 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 2 },
			["Swky|nightslayer"] = { 6, 0, 12, 7 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 161 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 72 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 179 },
			["Onit|nightslayer"] = { 8, 7, 14, 247 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 221 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 225 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 294 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 295 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 341 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 2 },
			["Swky|nightslayer"] = { 6, 0, 12, 7 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 314 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 316 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 322 },
			["Lestát|nightslayer"] = { 2, 1, 10, 252 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 161 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 341 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 72 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 241 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 341 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 220 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 179 },
			["Onit|nightslayer"] = { 8, 7, 14, 247 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 221 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 225 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 294 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 295 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 397 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 341 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 2 },
			["Swky|nightslayer"] = { 6, 0, 12, 7 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 435 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 314 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 316 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 322 },
			["Tycat|nightslayer"] = { 2, 2, -19, 435 },
			["Lestát|nightslayer"] = { 2, 1, 10, 252 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 161 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 341 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 72 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 366 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 241 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 341 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 220 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 179 },
			["Onit|nightslayer"] = { 8, 7, 14, 247 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 221 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 225 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 294 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 295 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 397 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 341 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 881 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 955 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 2 },
			["Swky|nightslayer"] = { 6, 0, 12, 7 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 1061 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1020 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 435 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 314 },
			["Fremi|nightslayer"] = { 3, 1, 25, 970 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 316 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 322 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1019 },
			["Tycat|nightslayer"] = { 2, 2, -19, 435 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 970 },
			["Lestát|nightslayer"] = { 2, 1, 10, 252 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 161 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 341 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 72 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 366 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 881 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1241 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 947 },
			["Hutudz|nightslayer"] = { 0, 1, -5, 1421 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 241 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 341 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 220 },
		},
	},
}

