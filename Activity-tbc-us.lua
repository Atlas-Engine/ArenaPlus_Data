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
	built = 1793948313,
	builtText = "2026-11-06 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 5, 4, 10, 59 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 8, 3, 11, 101 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 105 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 59 },
			["Onit|nightslayer"] = { 5, 4, 10, 127 },
			["Chtibyxes|nightslayer"] = { 6, 0, 60, 174 },
			["Kaobeecee|nightslayer"] = { 6, 0, 61, 175 },
			["Lestát|nightslayer"] = { 2, 1, 10, 132 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 41 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 121 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 100 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 59 },
			["Onit|nightslayer"] = { 8, 7, 14, 127 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 101 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 105 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 174 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 175 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 277 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 221 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 315 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 194 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 196 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 202 },
			["Tycat|nightslayer"] = { 2, 2, -19, 315 },
			["Lestát|nightslayer"] = { 2, 1, 10, 132 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 221 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 246 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 121 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 221 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 100 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 59 },
			["Onit|nightslayer"] = { 8, 7, 14, 127 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 101 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 105 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 174 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 175 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 277 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 221 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 315 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 194 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 196 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 202 },
			["Tycat|nightslayer"] = { 2, 2, -19, 315 },
			["Lestát|nightslayer"] = { 2, 1, 10, 132 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 221 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 246 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 121 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 221 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 100 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 59 },
			["Onit|nightslayer"] = { 8, 7, 14, 127 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 101 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 105 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 174 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 175 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 277 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 221 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 761 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 835 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 941 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 900 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 315 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 194 },
			["Fremi|nightslayer"] = { 3, 1, 25, 850 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 196 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 202 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 899 },
			["Tycat|nightslayer"] = { 2, 2, -19, 315 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 850 },
			["Lestát|nightslayer"] = { 2, 1, 10, 132 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 221 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 246 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 761 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1121 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1371 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 827 },
			["Hutudz|nightslayer"] = { 0, 1, -5, 1301 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 121 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 221 },
			["Swky|nightslayer"] = { 1, 0, 1, 1367 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 100 },
		},
	},
}

