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
	built = 1794063512,
	builtText = "2026-11-07 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Missxo|nightslayer"] = { 2, 1, 10, 144 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 143 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 160 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 83 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 358 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 358 },
			["Aversor|nightslayer"] = { 2, 2, -17, 358 },
			["Missxo|nightslayer"] = { 2, 1, 10, 144 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 143 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 160 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 83 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 393 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 358 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 554 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 553 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 497 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 497 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 569 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 487 },
			["Leien|nightslayer"] = { 10, 5, 38, 486 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 587 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 589 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 538 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 538 },
			["Exthief|nightslayer"] = { 3, 8, -43, 538 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 538 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 516 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 538 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 358 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 373 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 601 },
			["Trû|nightslayer"] = { 4, 4, 10, 549 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 608 },
			["Aversor|nightslayer"] = { 2, 2, -17, 358 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 447 },
			["Missxo|nightslayer"] = { 2, 1, 10, 144 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 143 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 160 },
			["Hybro|nightslayer"] = { 1, 1, -3, 549 },
			["Slowfast|nightslayer"] = { 0, 2, -10, 83 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 649 },
			["Swky|nightslayer"] = { 0, 1, -4, 683 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 681 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 393 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 358 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 554 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 553 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 497 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 497 },
			["Slowfast|nightslayer"] = { 9, 15, 21, 83 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 569 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 516 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 487 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 1272 },
			["Leien|nightslayer"] = { 10, 5, 38, 486 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 1270 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 587 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 589 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 538 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 538 },
			["Exthief|nightslayer"] = { 3, 8, -43, 538 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 538 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 538 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 358 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 373 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1386 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 601 },
			["Trû|nightslayer"] = { 4, 4, 10, 549 },
			["Gankmasterr|nightslayer"] = { 3, 4, -12, 160 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 608 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 649 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1421 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1421 },
			["Swky|nightslayer"] = { 3, 3, 12, 683 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 970 },
			["Mßison|nightslayer"] = { 2, 3, -10, 970 },
			["Aversor|nightslayer"] = { 2, 2, -17, 358 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 447 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1402 },
			["Missxo|nightslayer"] = { 2, 1, 10, 144 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 143 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1241 },
			["Hybro|nightslayer"] = { 1, 1, -3, 549 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1241 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1388 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1384 },
			["Arpx|nightslayer"] = { 1, 0, 1, 815 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 755 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1421 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 751 },
			["Yodead|nightslayer"] = { 1, 0, 2, 801 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 681 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1421 },
		},
	},
}

