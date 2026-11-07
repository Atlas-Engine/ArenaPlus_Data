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
	built = 1794056313,
	builtText = "2026-11-07 07:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Missxo|nightslayer"] = { 2, 1, 10, 24 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 23 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Missxo|nightslayer"] = { 2, 1, 10, 24 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 23 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 273 },
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 238 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 238 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 253 },
			["Aversor|nightslayer"] = { 2, 2, -17, 238 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 327 },
			["Missxo|nightslayer"] = { 2, 1, 10, 24 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 23 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 273 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 238 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 434 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 433 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 377 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 378 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 449 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 396 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 367 },
			["Leien|nightslayer"] = { 10, 5, 38, 366 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 467 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 469 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 418 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 418 },
			["Exthief|nightslayer"] = { 3, 8, -43, 418 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 418 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 418 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 238 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 253 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 481 },
			["Trû|nightslayer"] = { 4, 4, 10, 429 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 489 },
			["Aversor|nightslayer"] = { 2, 2, -17, 238 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 327 },
			["Missxo|nightslayer"] = { 2, 1, 10, 24 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 23 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 40 },
			["Hybro|nightslayer"] = { 1, 1, -3, 429 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 529 },
			["Arpx|nightslayer"] = { 1, 0, 1, 695 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 635 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 631 },
			["Swky|nightslayer"] = { 0, 1, -4, 563 },
			["Yodead|nightslayer"] = { 1, 0, 2, 681 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 561 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 273 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 238 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 434 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 433 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 377 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 378 },
			["Slowfast|nightslayer"] = { 9, 13, 31, 1267 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 449 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 396 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 367 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 1152 },
			["Leien|nightslayer"] = { 10, 5, 38, 366 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 1150 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 467 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 1330 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 469 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 418 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 418 },
			["Exthief|nightslayer"] = { 3, 8, -43, 418 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 418 },
			["Gankmasterr|nightslayer"] = { 3, 7, -31, 40 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 418 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 238 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 253 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1266 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 481 },
			["Trû|nightslayer"] = { 4, 4, 10, 429 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 489 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 529 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1301 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1301 },
			["Swky|nightslayer"] = { 3, 3, 12, 563 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 850 },
			["Mßison|nightslayer"] = { 2, 3, -10, 850 },
			["Aversor|nightslayer"] = { 2, 2, -17, 238 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 327 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1282 },
			["Missxo|nightslayer"] = { 2, 1, 10, 24 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 23 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1121 },
			["Hybro|nightslayer"] = { 1, 1, -3, 429 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1121 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1268 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1264 },
			["Arpx|nightslayer"] = { 1, 0, 1, 695 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 635 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1301 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 631 },
			["Yodead|nightslayer"] = { 1, 0, 2, 681 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 561 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1301 },
		},
	},
}

