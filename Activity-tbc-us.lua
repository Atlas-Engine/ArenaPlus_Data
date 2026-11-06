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
	built = 1793973515,
	builtText = "2026-11-06 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Flexrage|nightslayer"] = { 6, 0, 38, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 101 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 6, 0, 12, 302 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 101 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 281 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 281 },
			["Swky|nightslayer"] = { 3, 0, 6, 307 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 101 },
			["Peladini|nightslayer"] = { 1, 1, 6, 281 },
			["Trû|nightslayer"] = { 2, 0, 9, 233 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 479 },
			["Onit|nightslayer"] = { 8, 7, 14, 547 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 521 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 525 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 594 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 595 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 697 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 641 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 302 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 101 },
			["Swky|nightslayer"] = { 6, 0, 12, 307 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 614 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 616 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 281 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 622 },
			["Lestát|nightslayer"] = { 2, 1, 10, 552 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 281 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 461 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 641 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 372 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 666 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 101 },
			["Peladini|nightslayer"] = { 1, 1, 6, 281 },
			["Trû|nightslayer"] = { 2, 0, 9, 233 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 541 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 641 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 520 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 479 },
			["Onit|nightslayer"] = { 8, 7, 14, 547 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 521 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 525 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 594 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 595 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 697 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 641 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1181 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 302 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 101 },
			["Swky|nightslayer"] = { 6, 0, 12, 307 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 1320 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 735 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 614 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1270 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 616 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 281 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 622 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 1319 },
			["Tycat|nightslayer"] = { 2, 2, -19, 735 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1270 },
			["Lestát|nightslayer"] = { 2, 1, 10, 552 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 281 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 461 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 641 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 372 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 666 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 101 },
			["Peladini|nightslayer"] = { 1, 1, 6, 281 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1181 },
			["Trû|nightslayer"] = { 2, 0, 9, 233 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 1247 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 541 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 641 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 1255 },
			["Tbalc|nightslayer"] = { 1, 0, 4, 1361 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 520 },
		},
	},
}

