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
	built = 1794059913,
	builtText = "2026-11-07 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 0, 2, -10, 23 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Missxo|nightslayer"] = { 2, 1, 10, 84 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 83 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 100 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 23 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 333 },
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 298 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 298 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 313 },
			["Aversor|nightslayer"] = { 2, 2, -17, 298 },
			["Missxo|nightslayer"] = { 2, 1, 10, 84 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 83 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 100 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 23 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 333 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 298 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 494 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 493 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 437 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 438 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 509 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 427 },
			["Leien|nightslayer"] = { 10, 5, 38, 426 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 527 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 529 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 478 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 478 },
			["Exthief|nightslayer"] = { 3, 8, -43, 478 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 478 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 456 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 478 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 298 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 313 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 541 },
			["Trû|nightslayer"] = { 4, 4, 10, 489 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 549 },
			["Aversor|nightslayer"] = { 2, 2, -17, 298 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 387 },
			["Missxo|nightslayer"] = { 2, 1, 10, 84 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 83 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 100 },
			["Hybro|nightslayer"] = { 1, 1, -3, 489 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 23 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 589 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 695 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 691 },
			["Swky|nightslayer"] = { 0, 1, -4, 623 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 621 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 333 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 298 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 494 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 493 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 437 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 438 },
			["Slowfast|nightslayer"] = { 9, 15, 21, 23 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 509 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 456 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 427 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 1212 },
			["Leien|nightslayer"] = { 10, 5, 38, 426 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 1210 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 527 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 1390 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 529 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 478 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 478 },
			["Exthief|nightslayer"] = { 3, 8, -43, 478 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 478 },
			["Gankmasterr|nightslayer"] = { 3, 7, -31, 100 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 478 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 298 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 313 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1326 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 541 },
			["Trû|nightslayer"] = { 4, 4, 10, 489 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 549 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 589 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1361 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1361 },
			["Swky|nightslayer"] = { 3, 3, 12, 623 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 910 },
			["Mßison|nightslayer"] = { 2, 3, -10, 910 },
			["Aversor|nightslayer"] = { 2, 2, -17, 298 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 387 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1342 },
			["Missxo|nightslayer"] = { 2, 1, 10, 84 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 83 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1181 },
			["Hybro|nightslayer"] = { 1, 1, -3, 489 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1181 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1328 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1324 },
			["Arpx|nightslayer"] = { 1, 0, 1, 755 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 695 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1361 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 691 },
			["Yodead|nightslayer"] = { 1, 0, 2, 741 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 621 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1361 },
		},
	},
}

