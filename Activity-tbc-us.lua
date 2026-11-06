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
	built = 1793937513,
	builtText = "2026-11-05 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jamzki|nightslayer"] = { 5, 3, 19, 41 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 41 },
			["Onit|nightslayer"] = { 3, 3, 4, 41 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 14 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 16 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 22 },
			["Chtibyxes|nightslayer"] = { 3, 0, 12, 41 },
			["Kaobeecee|nightslayer"] = { 3, 0, 12, 41 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 41 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 41 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Heartwork|nightslayer"] = { 5, 3, 39, 97 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 41 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 41 },
			["Onit|nightslayer"] = { 3, 3, 4, 41 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 135 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 14 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 16 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 22 },
			["Tycat|nightslayer"] = { 2, 2, -19, 135 },
			["Chtibyxes|nightslayer"] = { 3, 0, 12, 41 },
			["Kaobeecee|nightslayer"] = { 3, 0, 12, 41 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 41 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 41 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 66 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Heartwork|nightslayer"] = { 5, 3, 39, 97 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 41 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 41 },
			["Onit|nightslayer"] = { 3, 3, 4, 41 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 135 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 14 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 16 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 22 },
			["Tycat|nightslayer"] = { 2, 2, -19, 135 },
			["Chtibyxes|nightslayer"] = { 3, 0, 12, 41 },
			["Kaobeecee|nightslayer"] = { 3, 0, 12, 41 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 41 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 41 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 66 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Heartwork|nightslayer"] = { 5, 3, 39, 97 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 41 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 581 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 41 },
			["Onit|nightslayer"] = { 3, 3, 4, 41 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 135 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 14 },
			["Fremi|nightslayer"] = { 3, 1, 25, 670 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 16 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 22 },
			["Tycat|nightslayer"] = { 2, 2, -19, 135 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 670 },
			["Chtibyxes|nightslayer"] = { 3, 0, 12, 41 },
			["Kaobeecee|nightslayer"] = { 3, 0, 12, 41 },
			["Taserfaace|dreamscythe"] = { 0, 3, -19, 719 },
			["Bohagons|nightslayer"] = { 2, 0, 4, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 41 },
			["Chugzila|nightslayer"] = { 2, 0, 4, 41 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 66 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 581 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 647 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 41 },
			["Sunnyslow|nightslayer"] = { 1, 0, 7, 655 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Stickerzx|nightslayer"] = { 14, 14, 26, 1330 },
			["Stoggimeistr|nightslayer"] = { 12, 13, 4, 1330 },
			["Bohagons|nightslayer"] = { 14, 8, -43, 41 },
			["Chugzila|nightslayer"] = { 14, 8, -43, 41 },
			["Bubballos|nightslayer"] = { 8, 3, 0, 1294 },
			["Peacemanlol|nightslayer"] = { 8, 3, -25, 1265 },
			["Dokurowow|dreamscythe"] = { 4, 6, -15, 1301 },
			["Nefitatemata|dreamscythe"] = { 4, 6, -15, 1301 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 97 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 41 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 581 },
			["Sunnyslow|nightslayer"] = { 7, 0, 24, 655 },
			["Angelniu|nightslayer"] = { 3, 3, 35, 1292 },
			["Ashlol|nightslayer"] = { 4, 2, 29, 1405 },
			["Checkmater|nightslayer"] = { 3, 3, 4, 41 },
			["Hutudz|nightslayer"] = { 3, 3, 33, 1121 },
			["Onit|nightslayer"] = { 3, 3, 4, 41 },
			["Tbalc|nightslayer"] = { 6, 0, 23, 761 },
			["Woodbugss|nightslayer"] = { 4, 2, 47, 1404 },
			["Anchorstrong|dreamscythe"] = { 1, 3, -6, 720 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 135 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 14 },
			["Fremi|nightslayer"] = { 3, 1, 25, 670 },
			["Grannygamer|nightslayer"] = { 4, 0, 42, 1301 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 16 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 22 },
			["Taserfaace|dreamscythe"] = { 1, 3, -6, 719 },
			["Tycat|nightslayer"] = { 2, 2, -19, 135 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 670 },
			["Chtibyxes|nightslayer"] = { 3, 0, 12, 41 },
			["Kaobeecee|nightslayer"] = { 3, 0, 12, 41 },
			["Twofeetjimmy|nightslayer"] = { 2, 1, 21, 1353 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 41 },
			["Healdyf|nightslayer"] = { 2, 0, 15, 1301 },
			["Kytara|nightslayer"] = { 0, 2, -19, 1379 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 66 },
			["Leftténclear|nightslayer"] = { 2, 0, 16, 1380 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 581 },
			["Sylvani|nightslayer"] = { 0, 2, -16, 941 },
			["Yodead|nightslayer"] = { 0, 2, -15, 1377 },
			["Ariiana|nightslayer"] = { 1, 0, 2, 1191 },
			["Gaekpoong|nightslayer"] = { 1, 0, 7, 647 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 41 },
			["Swky|nightslayer"] = { 1, 0, 1, 1187 },
		},
	},
}

