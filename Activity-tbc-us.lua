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
	built = 1793998715,
	builtText = "2026-11-06 03:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 161 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 307 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 192 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 190 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 306 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 341 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 341 },
			["Gankmasterr|nightslayer"] = { 2, 3, -12, 300 },
			["Enviz|nightslayer"] = { 3, 1, 8, 322 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 161 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 161 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 308 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 304 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 341 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 307 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 192 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 190 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 370 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 300 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 306 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 521 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 341 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 341 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 521 },
			["Enviz|nightslayer"] = { 3, 1, 8, 322 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 701 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 701 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 161 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 161 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 308 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 521 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 304 },
			["Peladini|nightslayer"] = { 1, 1, 6, 701 },
			["Trû|nightslayer"] = { 2, 0, 9, 653 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 341 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 341 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 307 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 899 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 192 },
			["Onit|nightslayer"] = { 8, 7, 14, 967 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 190 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 370 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 941 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 945 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1014 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1015 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 300 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1117 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 306 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1061 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 722 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 521 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 341 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 341 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 521 },
			["Swky|nightslayer"] = { 6, 0, 12, 727 },
			["Enviz|nightslayer"] = { 3, 1, 8, 322 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1155 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1034 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1036 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 701 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1042 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1155 },
			["Lestát|nightslayer"] = { 2, 1, 10, 972 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 701 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 881 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 161 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1061 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 792 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 161 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1086 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 308 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 521 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 304 },
			["Peladini|nightslayer"] = { 1, 1, 6, 701 },
			["Trû|nightslayer"] = { 2, 0, 9, 653 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 341 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 961 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1061 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 940 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 341 },
		},
	},
}

