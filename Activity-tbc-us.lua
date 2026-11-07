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
	built = 1794013116,
	builtText = "2026-11-06 07:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 3, 2, 18, 107 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 130 },
			["Mßison|nightslayer"] = { 2, 3, -10, 130 },
			["Swky|nightslayer"] = { 3, 2, 16, 121 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 3, 2, 18, 107 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 130 },
			["Mßison|nightslayer"] = { 2, 3, -10, 130 },
			["Swky|nightslayer"] = { 3, 2, 16, 121 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 547 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 432 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 430 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 610 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 540 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 546 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 581 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 581 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 107 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 130 },
			["Mßison|nightslayer"] = { 2, 3, -10, 130 },
			["Swky|nightslayer"] = { 3, 2, 16, 121 },
			["Enviz|nightslayer"] = { 3, 1, 8, 562 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 401 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 401 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 548 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 544 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 581 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 581 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 547 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 1139 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 432 },
			["Onit|nightslayer"] = { 8, 7, 14, 1207 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 430 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 610 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 1181 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 1186 },
			["Ariiana|nightslayer"] = { 9, 2, 30, 107 },
			["Swky|nightslayer"] = { 9, 2, 28, 121 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1254 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1255 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 540 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1357 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 546 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1301 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 761 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 581 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 581 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 761 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 130 },
			["Mßison|nightslayer"] = { 2, 3, -10, 130 },
			["Enviz|nightslayer"] = { 3, 1, 8, 562 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1395 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1274 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1276 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 941 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1282 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1396 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1212 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 941 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1121 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 401 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1301 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 1032 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 401 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1326 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 548 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 761 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 544 },
			["Peladini|nightslayer"] = { 1, 1, 6, 941 },
			["Trû|nightslayer"] = { 2, 0, 9, 893 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 581 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1201 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1301 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 1180 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 581 },
		},
	},
}

