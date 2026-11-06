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
	built = 1793980716,
	builtText = "2026-11-06 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 7 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 41 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 41 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 6 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 41 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 41 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 27 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 27 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 41 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 7 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 70 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 41 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 41 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 6 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 41 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 41 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 27 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 27 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 115 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 41 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 7 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 70 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 41 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 41 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 6 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 221 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 41 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 221 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 27 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 27 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 115 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 221 },
			["Trû|nightslayer"] = { 2, 0, 9, 353 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 41 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 7 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 70 },
			["Bohagons|nightslayer"] = { 8, 3, 11, 641 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 646 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 41 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 41 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 599 },
			["Onit|nightslayer"] = { 5, 4, 10, 667 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 6 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 422 },
			["Chtibyxes|nightslayer"] = { 6, 0, 60, 714 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 221 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 41 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 221 },
			["Kaobeecee|nightslayer"] = { 6, 0, 61, 715 },
			["Swky|nightslayer"] = { 6, 0, 12, 427 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 27 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 27 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 401 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 115 },
			["Lestát|nightslayer"] = { 2, 1, 10, 672 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 401 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 581 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 492 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 221 },
			["Peladini|nightslayer"] = { 1, 1, 6, 401 },
			["Trû|nightslayer"] = { 2, 0, 9, 353 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 41 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 661 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 640 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 7 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 599 },
			["Onit|nightslayer"] = { 8, 7, 14, 667 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 70 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 641 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 646 },
			["Sunnyslow|nightslayer"] = { 11, 0, 37, 41 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 41 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 714 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 715 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 817 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 6 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 761 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1301 },
			["Gaekpoong|nightslayer"] = { 5, 2, -3, 41 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 422 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 221 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 41 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 221 },
			["Swky|nightslayer"] = { 6, 0, 12, 427 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 855 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 27 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 27 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 734 },
			["Fremi|nightslayer"] = { 3, 1, 25, 1390 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 736 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 401 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 742 },
			["Tycat|nightslayer"] = { 2, 2, -19, 856 },
			["Xtruper|nightslayer"] = { 3, 1, 7, 1390 },
			["Gankmasterr|nightslayer"] = { 0, 3, -19, 115 },
			["Lestát|nightslayer"] = { 2, 1, 10, 672 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 401 },
			["Taserfaace|dreamscythe"] = { 0, 3, -19, 1439 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 581 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 761 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 492 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 786 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 221 },
			["Peladini|nightslayer"] = { 1, 1, 6, 401 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1301 },
			["Trû|nightslayer"] = { 2, 0, 9, 353 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 41 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 661 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 761 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 640 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 41 },
		},
	},
}

