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
	built = 1793977115,
	builtText = "2026-11-06 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 4, 10, -34, 10 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 55 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 4, 10, -34, 10 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 161 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 55 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Namkijun|nightslayer"] = { 4, 10, -34, 10 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 161 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 341 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 55 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 341 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 161 },
			["Peladini|nightslayer"] = { 1, 1, 6, 341 },
			["Trû|nightslayer"] = { 2, 0, 9, 293 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 539 },
			["Onit|nightslayer"] = { 8, 7, 14, 607 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 10 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 581 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 585 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 654 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 655 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 701 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 362 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 161 },
			["Swky|nightslayer"] = { 6, 0, 12, 367 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 674 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 676 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 341 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 682 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 55 },
			["Lestát|nightslayer"] = { 2, 1, 10, 612 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 341 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 521 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 701 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 432 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 161 },
			["Peladini|nightslayer"] = { 1, 1, 6, 341 },
			["Trû|nightslayer"] = { 2, 0, 9, 293 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 601 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 701 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 580 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 539 },
			["Onit|nightslayer"] = { 8, 7, 14, 607 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 10 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 581 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 585 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 654 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 655 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 757 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 701 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1241 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 362 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 161 },
			["Swky|nightslayer"] = { 6, 0, 12, 367 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1380 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 795 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 674 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1330 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 676 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 341 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 682 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1379 },
			["Tycat|nightslayer"] = { 2, 2, -19, 795 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1330 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 55 },
			["Lestát|nightslayer"] = { 2, 1, 10, 612 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 341 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 521 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 701 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 432 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 726 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 161 },
			["Peladini|nightslayer"] = { 1, 1, 6, 341 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1241 },
			["Trû|nightslayer"] = { 2, 0, 9, 293 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 1307 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 601 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 701 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 1315 },
			["Tbalc|nightslayer"] = { 1, 0, 4, 1421 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 580 },
		},
	},
}

