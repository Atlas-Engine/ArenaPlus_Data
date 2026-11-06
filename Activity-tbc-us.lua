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
	built = 1793951914,
	builtText = "2026-11-06 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Swky|nightslayer"] = { 3, 0, 6, 12 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 8, 3, 11, 161 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 165 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 119 },
			["Swky|nightslayer"] = { 3, 0, 6, 12 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 101 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 119 },
			["Onit|nightslayer"] = { 8, 7, 14, 187 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 161 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 165 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 234 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 235 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 337 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 281 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 254 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 256 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 262 },
			["Lestát|nightslayer"] = { 2, 1, 10, 192 },
			["Swky|nightslayer"] = { 3, 0, 6, 12 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 281 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 306 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 181 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 281 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 119 },
			["Onit|nightslayer"] = { 8, 7, 14, 187 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 161 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 165 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 234 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 235 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 337 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 281 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 375 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 254 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 256 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 262 },
			["Tycat|nightslayer"] = { 2, 2, -19, 375 },
			["Lestát|nightslayer"] = { 2, 1, 10, 192 },
			["Swky|nightslayer"] = { 3, 0, 6, 12 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 281 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 306 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 181 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 281 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 160 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Checkmater|nightslayer"] = { 8, 7, 14, 119 },
			["Onit|nightslayer"] = { 8, 7, 14, 187 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 161 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 165 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 234 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 235 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 337 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 281 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 821 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 895 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 1001 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 960 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 375 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 254 },
			["Fremi|nightslayer"] = { 3, 1, 25, 910 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 256 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 262 },
			["Swky|nightslayer"] = { 4, 0, 7, 12 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 959 },
			["Tycat|nightslayer"] = { 2, 2, -19, 375 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 910 },
			["Lestát|nightslayer"] = { 2, 1, 10, 192 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 281 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 306 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 821 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1181 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1431 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 887 },
			["Hutudz|nightslayer"] = { 0, 1, -5, 1361 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 181 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 281 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 160 },
		},
	},
}

