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
	built = 1793984313,
	builtText = "2026-11-06 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 67 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 130 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 101 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 101 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 60 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 66 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 101 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 101 },
			["Enviz|nightslayer"] = { 3, 1, 8, 82 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 87 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 87 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 68 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 101 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 67 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 130 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 101 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 101 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 60 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 66 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 281 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 101 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 281 },
			["Enviz|nightslayer"] = { 3, 1, 8, 82 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 87 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 87 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 68 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 281 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 101 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 101 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 67 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 130 },
			["Bohagons|nightslayer"] = { 8, 3, 11, 701 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 705 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 101 },
			["Sunnyslow|nightslayer"] = { 10, 0, 30, 101 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 659 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 60 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 66 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 482 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 281 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 101 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 281 },
			["Swky|nightslayer"] = { 6, 0, 12, 487 },
			["Enviz|nightslayer"] = { 3, 1, 8, 82 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 87 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 87 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 461 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 461 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 641 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 552 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 68 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 281 },
			["Peladini|nightslayer"] = { 1, 1, 6, 461 },
			["Trû|nightslayer"] = { 2, 0, 9, 413 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 101 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 700 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 101 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 67 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 659 },
			["Onit|nightslayer"] = { 8, 7, 14, 727 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 130 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 701 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 705 },
			["Sunnyslow|nightslayer"] = { 11, 0, 37, 101 },
			["Jodaldal|nightslayer"] = { 10, 0, 68, 101 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 774 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 775 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 60 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 877 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 66 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 821 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1361 },
			["Gaekpoong|nightslayer"] = { 5, 2, -3, 101 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 482 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 281 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 101 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 281 },
			["Swky|nightslayer"] = { 6, 0, 12, 487 },
			["Enviz|nightslayer"] = { 3, 1, 8, 82 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 915 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 87 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 87 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 794 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 796 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 461 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 802 },
			["Tycat|nightslayer"] = { 2, 2, -19, 915 },
			["Lestát|nightslayer"] = { 2, 1, 10, 732 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 461 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 641 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 821 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 552 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 846 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 68 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 281 },
			["Peladini|nightslayer"] = { 1, 1, 6, 461 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1361 },
			["Trû|nightslayer"] = { 2, 0, 9, 413 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 101 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 721 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 821 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 700 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 101 },
		},
	},
}

