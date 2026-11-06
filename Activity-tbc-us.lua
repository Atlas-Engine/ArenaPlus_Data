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
	built = 1793941113,
	builtText = "2026-11-05 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 5, 2, 28, 37 },
			["Chtibyxes|nightslayer"] = { 6, 0, 60, 54 },
			["Kaobeecee|nightslayer"] = { 6, 0, 61, 55 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 5, 32, 37 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 54 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 55 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 157 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 101 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 101 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 74 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 76 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 82 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 101 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 101 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 126 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 5, 32, 37 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 54 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 55 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 157 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 101 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 101 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 195 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 74 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 76 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 82 },
			["Tycat|nightslayer"] = { 2, 2, -19, 195 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 101 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 101 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 126 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Onit|nightslayer"] = { 8, 5, 32, 37 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 54 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 55 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 157 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 101 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 641 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 101 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 195 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 74 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 76 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 82 },
			["Tycat|nightslayer"] = { 2, 2, -19, 195 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 101 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 101 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 126 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 641 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 707 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 101 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 715 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Stickerzx|nightslayer"] = { 14, 14, 26, 1390 },
			["Stoggimeistr|nightslayer"] = { 12, 13, 4, 1390 },
			["Bohagons|nightslayer"] = { 14, 8, -43, 101 },
			["Chugzila|nightslayer"] = { 14, 8, -43, 101 },
			["Onit|nightslayer"] = { 8, 5, 32, 37 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1354 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1325 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1361 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1361 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 54 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 55 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 157 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 101 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 641 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 715 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1352 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 101 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 1181 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 821 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 780 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 195 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 74 },
			["Fremi|nightslayer"] = { 3, 1, 25, 730 },
			["Grannygamer|nightslayer"] = { 4, 0, 42, 1361 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 76 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 82 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 779 },
			["Tycat|nightslayer"] = { 2, 2, -19, 195 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 730 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1413 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 101 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1361 },
			["Kytara|nightslayer"] = { 0, 2, -19, 1439 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 126 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 641 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 1001 },
			["Yodead|nightslayer"] = { 0, 2, -15, 1437 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1251 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 707 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 101 },
			["Swky|nightslayer"] = { 1, 0, 1, 1247 },
		},
	},
}

