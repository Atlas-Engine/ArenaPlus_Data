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
	built = 1793987913,
	builtText = "2026-11-06 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 1, 16, 12 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 10 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 127 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 12 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 10 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 126 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 161 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 161 },
			["Gankmasterr|nightslayer"] = { 2, 3, -12, 120 },
			["Enviz|nightslayer"] = { 3, 1, 8, 142 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 147 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 147 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 128 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 124 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 161 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 127 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 12 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 10 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 190 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 120 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 126 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 341 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 161 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 341 },
			["Enviz|nightslayer"] = { 3, 1, 8, 142 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 147 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 147 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 128 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 341 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 124 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 161 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 161 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 127 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 12 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 10 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 190 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 719 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 120 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 126 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 542 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 341 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 161 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 341 },
			["Swky|nightslayer"] = { 6, 0, 12, 547 },
			["Enviz|nightslayer"] = { 3, 1, 8, 142 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 147 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 147 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 521 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 521 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 701 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 612 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 128 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 341 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 124 },
			["Peladini|nightslayer"] = { 1, 1, 6, 521 },
			["Trû|nightslayer"] = { 2, 0, 9, 473 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 161 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 161 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 127 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 719 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 12 },
			["Onit|nightslayer"] = { 8, 7, 14, 787 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 10 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 190 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 761 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 765 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 834 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 835 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 120 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 937 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 126 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 881 },
			["Stabse|dreamscythe"] = { 6, 2, 78, 1421 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 542 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 341 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 161 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 161 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 341 },
			["Swky|nightslayer"] = { 6, 0, 12, 547 },
			["Enviz|nightslayer"] = { 3, 1, 8, 142 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 975 },
			["Fatreason|nightslayer"] = { 0, 4, -65, 147 },
			["Flacciddady|nightslayer"] = { 0, 4, -65, 147 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 854 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 856 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 521 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 862 },
			["Tycat|nightslayer"] = { 2, 2, -19, 975 },
			["Lestát|nightslayer"] = { 2, 1, 10, 792 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 521 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 701 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 881 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 612 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 906 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 128 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 341 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 124 },
			["Peladini|nightslayer"] = { 1, 1, 6, 521 },
			["Stamz|dreamscythe"] = { 2, 0, 6, 1421 },
			["Trû|nightslayer"] = { 2, 0, 9, 473 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 161 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 781 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 881 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 760 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 161 },
		},
	},
}

