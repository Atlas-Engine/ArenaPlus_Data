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
	built = 1793995113,
	builtText = "2026-11-06 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 1, 16, 132 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 130 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 101 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 247 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 132 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 130 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 310 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 240 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 246 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 281 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 281 },
			["Enviz|nightslayer"] = { 3, 1, 8, 262 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 101 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 101 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 248 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 244 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 281 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 247 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 132 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 130 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 310 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 240 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 246 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 662 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 461 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 281 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 281 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 461 },
			["Enviz|nightslayer"] = { 3, 1, 8, 262 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 641 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 641 },
			["Swky|nightslayer"] = { 3, 0, 6, 667 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 101 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 101 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 248 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 461 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 244 },
			["Peladini|nightslayer"] = { 1, 1, 6, 641 },
			["Trû|nightslayer"] = { 2, 0, 9, 593 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 281 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 281 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 247 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 839 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 132 },
			["Onit|nightslayer"] = { 8, 7, 14, 907 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 130 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 310 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 881 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 885 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 954 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 955 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 240 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1057 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 246 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1001 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 662 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 461 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 281 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 281 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 461 },
			["Swky|nightslayer"] = { 6, 0, 12, 667 },
			["Enviz|nightslayer"] = { 3, 1, 8, 262 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1095 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 974 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 976 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 641 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 982 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1095 },
			["Lestát|nightslayer"] = { 2, 1, 10, 912 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 641 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 821 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 101 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1001 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 732 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 101 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1026 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 248 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 461 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 244 },
			["Peladini|nightslayer"] = { 1, 1, 6, 641 },
			["Trû|nightslayer"] = { 2, 0, 9, 593 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 281 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 901 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1001 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 880 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 281 },
		},
	},
}

