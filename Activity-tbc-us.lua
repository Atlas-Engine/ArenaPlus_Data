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
	built = 1793959114,
	builtText = "2026-11-06 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Mindprison|nightslayer"] = { 0, 4, -65, 41 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 41 },
			["Peladini|nightslayer"] = { 1, 1, 6, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 6, 0, 12, 62 },
			["Swky|nightslayer"] = { 6, 0, 12, 67 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 41 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 41 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 132 },
			["Peladini|nightslayer"] = { 1, 1, 6, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 8, 3, 11, 281 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 285 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 239 },
			["Onit|nightslayer"] = { 5, 4, 10, 307 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 62 },
			["Chtibyxes|nightslayer"] = { 6, 0, 60, 354 },
			["Kaobeecee|nightslayer"] = { 6, 0, 61, 355 },
			["Swky|nightslayer"] = { 6, 0, 12, 67 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 41 },
			["Lestát|nightslayer"] = { 2, 1, 10, 312 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 41 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 221 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 132 },
			["Peladini|nightslayer"] = { 1, 1, 6, 41 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 301 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 239 },
			["Onit|nightslayer"] = { 8, 7, 14, 307 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 281 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 285 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 354 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 355 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 457 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 401 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 62 },
			["Swky|nightslayer"] = { 6, 0, 12, 67 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 495 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 374 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 376 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 41 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 382 },
			["Tycat|nightslayer"] = { 2, 2, -19, 495 },
			["Lestát|nightslayer"] = { 2, 1, 10, 312 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 41 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 221 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 401 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 132 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 426 },
			["Peladini|nightslayer"] = { 1, 1, 6, 41 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 301 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 401 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 280 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 239 },
			["Onit|nightslayer"] = { 8, 7, 14, 307 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 281 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 285 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 354 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 355 },
			["Saplinq|nightslayer"] = { 2, 7, 5, 41 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 457 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 401 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 941 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 1015 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 62 },
			["Swky|nightslayer"] = { 6, 0, 12, 67 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 1121 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1080 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 495 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 374 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1030 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 376 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 41 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 382 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1079 },
			["Tycat|nightslayer"] = { 2, 2, -19, 495 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1030 },
			["Lestát|nightslayer"] = { 2, 1, 10, 312 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 221 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 401 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 132 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 426 },
			["Peladini|nightslayer"] = { 1, 1, 6, 41 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 941 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1301 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 1007 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 301 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 401 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 280 },
		},
	},
}

