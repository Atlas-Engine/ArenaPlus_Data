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
	built = 1794002313,
	builtText = "2026-11-06 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 1, 16, 252 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 250 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 221 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 367 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 252 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 250 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 430 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 360 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 366 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 581 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 401 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 401 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 581 },
			["Enviz|nightslayer"] = { 3, 1, 8, 382 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 221 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 221 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 368 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 581 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 364 },
			["Trû|nightslayer"] = { 2, 0, 9, 713 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 401 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 401 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 367 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 959 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 252 },
			["Onit|nightslayer"] = { 8, 7, 14, 1027 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 250 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 430 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 1001 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 1005 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1074 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1075 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 360 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1177 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 366 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1121 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 782 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 581 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 401 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 401 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 581 },
			["Swky|nightslayer"] = { 6, 0, 12, 787 },
			["Enviz|nightslayer"] = { 3, 1, 8, 382 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1215 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1094 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1096 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 761 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1102 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1215 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1032 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 761 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 941 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 221 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1121 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 852 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 221 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1146 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 368 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 581 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 364 },
			["Peladini|nightslayer"] = { 1, 1, 6, 761 },
			["Trû|nightslayer"] = { 2, 0, 9, 713 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 401 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1021 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1121 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 1000 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 401 },
		},
	},
}

