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
	built = 1793966313,
	builtText = "2026-11-06 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mindprison|nightslayer"] = { 0, 4, -65, 161 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 161 },
			["Peladini|nightslayer"] = { 1, 1, 6, 161 },
			["Trû|nightslayer"] = { 2, 0, 9, 113 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 5, 4, 10, 359 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 182 },
			["Swky|nightslayer"] = { 6, 0, 12, 187 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 161 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 161 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 341 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 252 },
			["Peladini|nightslayer"] = { 1, 1, 6, 161 },
			["Trû|nightslayer"] = { 2, 0, 9, 113 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 359 },
			["Onit|nightslayer"] = { 8, 7, 14, 427 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 401 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 405 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 474 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 475 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 577 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 521 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 182 },
			["Swky|nightslayer"] = { 6, 0, 12, 187 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 615 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 494 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 496 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 161 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 502 },
			["Tycat|nightslayer"] = { 2, 2, -19, 615 },
			["Lestát|nightslayer"] = { 2, 1, 10, 432 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 161 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 341 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 521 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 252 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 546 },
			["Peladini|nightslayer"] = { 1, 1, 6, 161 },
			["Trû|nightslayer"] = { 2, 0, 9, 113 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 421 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 521 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 400 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 359 },
			["Onit|nightslayer"] = { 8, 7, 14, 427 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 401 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 405 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 474 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 475 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 577 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 521 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1061 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 1135 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 182 },
			["Saplinq|nightslayer"] = { 2, 4, 15, 161 },
			["Swky|nightslayer"] = { 6, 0, 12, 187 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 1241 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1200 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 615 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 494 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1150 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 496 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 161 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 502 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1199 },
			["Tycat|nightslayer"] = { 2, 2, -19, 615 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1150 },
			["Lestát|nightslayer"] = { 2, 1, 10, 432 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 341 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 521 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 252 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 546 },
			["Peladini|nightslayer"] = { 1, 1, 6, 161 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1061 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1421 },
			["Trû|nightslayer"] = { 2, 0, 9, 113 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 1127 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 421 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 521 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 400 },
		},
	},
}

