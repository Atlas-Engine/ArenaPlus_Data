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
	built = 1794009514,
	builtText = "2026-11-06 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 3, 2, 18, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 3, 2, 18, 47 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 70 },
			["Mßison|nightslayer"] = { 2, 3, -10, 70 },
			["Swky|nightslayer"] = { 3, 2, 16, 61 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 3, 2, 18, 47 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 70 },
			["Mßison|nightslayer"] = { 2, 3, -10, 70 },
			["Swky|nightslayer"] = { 3, 2, 16, 61 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 341 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 487 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 372 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 370 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 550 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 480 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 486 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 701 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 521 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 521 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 701 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 47 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 70 },
			["Mßison|nightslayer"] = { 2, 3, -10, 70 },
			["Swky|nightslayer"] = { 3, 2, 16, 61 },
			["Enviz|nightslayer"] = { 3, 1, 8, 502 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 341 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 341 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 488 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 701 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 484 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 521 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 521 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 487 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 1079 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 372 },
			["Onit|nightslayer"] = { 8, 7, 14, 1147 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 370 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 550 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 1121 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 1125 },
			["Ariiana|nightslayer"] = { 9, 2, 30, 47 },
			["Swky|nightslayer"] = { 9, 2, 28, 61 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1194 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1195 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 480 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1297 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 486 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1241 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 701 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 521 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 521 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 701 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 70 },
			["Mßison|nightslayer"] = { 2, 3, -10, 70 },
			["Enviz|nightslayer"] = { 3, 1, 8, 502 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1335 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1214 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1216 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 881 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1222 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1335 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1152 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 881 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1061 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 341 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1241 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 972 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 341 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1266 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 488 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 701 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 484 },
			["Peladini|nightslayer"] = { 1, 1, 6, 881 },
			["Trû|nightslayer"] = { 2, 0, 9, 833 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 521 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1141 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1241 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 1120 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 521 },
		},
	},
}

