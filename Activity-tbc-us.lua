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
	built = 1794023913,
	builtText = "2026-11-06 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 58 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 58 },
			["Swky|nightslayer"] = { 0, 1, -4, 23 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 21 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 58 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 58 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 133 },
			["Arpx|nightslayer"] = { 1, 0, 1, 155 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 95 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 91 },
			["Swky|nightslayer"] = { 0, 1, -4, 23 },
			["Yodead|nightslayer"] = { 1, 0, 2, 141 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 21 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 58 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 58 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 133 },
			["Swky|nightslayer"] = { 3, 3, 12, 23 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 287 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 310 },
			["Mßison|nightslayer"] = { 2, 3, -10, 310 },
			["Arpx|nightslayer"] = { 1, 0, 1, 155 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 95 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 91 },
			["Yodead|nightslayer"] = { 1, 0, 2, 141 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 21 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 58 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 58 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 133 },
			["Swky|nightslayer"] = { 3, 3, 12, 23 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 287 },
			["Jodaldal|nightslayer"] = { 4, 1, 16, 612 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 310 },
			["Mßison|nightslayer"] = { 2, 3, -10, 310 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 610 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 581 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 581 },
			["Arpx|nightslayer"] = { 1, 0, 1, 155 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 95 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 91 },
			["Yodead|nightslayer"] = { 1, 0, 2, 141 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 21 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 727 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 612 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 610 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 790 },
			["Fanthom|nightslayer"] = { 8, 4, 0, 58 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 58 },
			["Swky|nightslayer"] = { 9, 3, 24, 23 },
			["Ariiana|nightslayer"] = { 9, 2, 30, 287 },
			["Bohagons|nightslayer"] = { 8, 3, 11, 1361 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 1365 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 1319 },
			["Onit|nightslayer"] = { 5, 4, 10, 1387 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 133 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 720 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 726 },
			["Chtibyxes|nightslayer"] = { 6, 0, 60, 1434 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 941 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 761 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 761 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 941 },
			["Kaobeecee|nightslayer"] = { 6, 0, 61, 1435 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 310 },
			["Mßison|nightslayer"] = { 2, 3, -10, 310 },
			["Enviz|nightslayer"] = { 3, 1, 8, 742 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 1121 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1392 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 1121 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1301 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 581 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 1212 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 581 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 728 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 941 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 724 },
			["Peladini|nightslayer"] = { 1, 1, 6, 1121 },
			["Trû|nightslayer"] = { 2, 0, 9, 1073 },
			["Zasekle|nightslayer"] = { 2, 0, 8, 21 },
			["Arpx|nightslayer"] = { 1, 0, 1, 155 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 95 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 761 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1381 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 91 },
			["Yodead|nightslayer"] = { 1, 0, 2, 141 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 761 },
		},
	},
}

