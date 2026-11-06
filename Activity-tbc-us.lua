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
	built = 1793944714,
	builtText = "2026-11-06 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bohagons|nightslayer"] = { 8, 3, 11, 41 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 45 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 7, 14, 67 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 41 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 45 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 114 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 115 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 161 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 161 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 134 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 136 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 142 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 161 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 61 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 161 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 7, 14, 67 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 41 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 45 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 114 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 115 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 217 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 161 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 161 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 255 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 134 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 136 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 142 },
			["Tycat|nightslayer"] = { 2, 2, -19, 255 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 161 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 186 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 61 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 161 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 7, 14, 67 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 41 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 45 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 114 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 115 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 217 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 161 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 701 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 161 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 255 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 134 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 136 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 142 },
			["Tycat|nightslayer"] = { 2, 2, -19, 255 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 161 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 186 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 701 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 61 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 161 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 40 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 7, 14, 67 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 41 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 45 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1414 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1385 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1421 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1421 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 114 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 115 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 217 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 161 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 701 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 775 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1412 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 161 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 1241 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 881 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 840 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 255 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 134 },
			["Fremi|nightslayer"] = { 3, 1, 25, 790 },
			["Grannygamer|nightslayer"] = { 4, 0, 42, 1421 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 136 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 142 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 839 },
			["Tycat|nightslayer"] = { 2, 2, -19, 255 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 790 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 161 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1421 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 186 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 701 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1061 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1311 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 767 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 61 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 161 },
			["Swky|nightslayer"] = { 1, 0, 1, 1307 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 40 },
		},
	},
}

