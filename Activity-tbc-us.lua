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
	built = 1794016715,
	builtText = "2026-11-06 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 13 },
			["Arpx|nightslayer"] = { 1, 0, 1, 35 },
			["Yodead|nightslayer"] = { 1, 0, 2, 21 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 13 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 167 },
			["Arpx|nightslayer"] = { 1, 0, 1, 35 },
			["Yodead|nightslayer"] = { 1, 0, 2, 21 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 13 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 167 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 190 },
			["Mßison|nightslayer"] = { 2, 3, -10, 190 },
			["Swky|nightslayer"] = { 3, 2, 16, 181 },
			["Arpx|nightslayer"] = { 1, 0, 1, 35 },
			["Yodead|nightslayer"] = { 1, 0, 2, 21 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 607 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 492 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 490 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 670 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 13 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 600 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 606 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 641 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 641 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 167 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 190 },
			["Mßison|nightslayer"] = { 2, 3, -10, 190 },
			["Swky|nightslayer"] = { 3, 2, 16, 181 },
			["Enviz|nightslayer"] = { 3, 1, 8, 622 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 461 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 461 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 608 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 604 },
			["Arpx|nightslayer"] = { 1, 0, 1, 35 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 641 },
			["Yodead|nightslayer"] = { 1, 0, 2, 21 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 641 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 607 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 1199 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 492 },
			["Onit|nightslayer"] = { 8, 7, 14, 1267 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 490 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 670 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 1241 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 1245 },
			["Ariiana|nightslayer"] = { 9, 2, 30, 167 },
			["Swky|nightslayer"] = { 9, 2, 28, 181 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1314 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1315 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 13 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 600 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 1417 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 606 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1361 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 821 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 641 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 641 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 821 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 190 },
			["Mßison|nightslayer"] = { 2, 3, -10, 190 },
			["Enviz|nightslayer"] = { 3, 1, 8, 622 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1334 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1336 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 1001 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1342 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1272 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 1001 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1181 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 461 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1361 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 1092 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 461 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 1386 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 608 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 821 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 604 },
			["Peladini|nightslayer"] = { 1, 1, 6, 1001 },
			["Trû|nightslayer"] = { 2, 0, 9, 953 },
			["Arpx|nightslayer"] = { 1, 0, 1, 35 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 641 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1261 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1361 },
			["Yodead|nightslayer"] = { 1, 0, 2, 21 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 1240 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 641 },
		},
	},
}

