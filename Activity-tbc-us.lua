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
	built = 1794005915,
	builtText = "2026-11-06 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 10 },
			["Mßison|nightslayer"] = { 2, 3, -10, 10 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 10 },
			["Mßison|nightslayer"] = { 2, 3, -10, 10 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 1, 16, 312 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 10 },
			["Mßison|nightslayer"] = { 2, 3, -10, 10 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 310 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 281 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 281 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 427 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 312 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 310 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 490 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 420 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 426 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 641 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 461 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 461 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 641 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 10 },
			["Mßison|nightslayer"] = { 2, 3, -10, 10 },
			["Enviz|nightslayer"] = { 3, 1, 8, 442 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 281 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 281 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 428 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 641 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 424 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 461 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 461 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 427 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 1019 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 312 },
			["Onit|nightslayer"] = { 8, 7, 14, 1087 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 310 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 490 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 1061 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 1065 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1134 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1135 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 420 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1237 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 426 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1181 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 842 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 641 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 461 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 461 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 641 },
			["Swky|nightslayer"] = { 6, 0, 12, 847 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 10 },
			["Mßison|nightslayer"] = { 2, 3, -10, 10 },
			["Enviz|nightslayer"] = { 3, 1, 8, 442 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1275 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1154 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1156 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 821 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1162 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1275 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1092 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 821 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1001 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 281 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1181 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 912 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 281 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1206 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 428 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 641 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 424 },
			["Peladini|nightslayer"] = { 1, 1, 6, 821 },
			["Trû|nightslayer"] = { 2, 0, 9, 773 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 461 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1081 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1181 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 1060 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 461 },
		},
	},
}

