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
	built = 1794110313,
	builtText = "2026-11-07 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 11, 6, 46, 58 },
			["ßraxtør|nightslayer"] = { 11, 6, 46, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 31 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 58 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 58 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 58 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 30 },
			["Allenstout|nightslayer"] = { 0, 2, -14, 58 },
			["Jingjingbaby|nightslayer"] = { 0, 2, -14, 58 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 58 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 11, 6, 46, 58 },
			["ßraxtør|nightslayer"] = { 11, 6, 46, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 31 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 58 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 58 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 58 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 30 },
			["Allenstout|nightslayer"] = { 0, 2, -14, 58 },
			["Jingjingbaby|nightslayer"] = { 0, 2, -14, 58 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 58 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 11, 6, 46, 58 },
			["ßraxtør|nightslayer"] = { 11, 6, 46, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 31 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 58 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 58 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 58 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 30 },
			["Allenstout|nightslayer"] = { 0, 2, -14, 58 },
			["Jingjingbaby|nightslayer"] = { 0, 2, -14, 58 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 58 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 58 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 11, 6, 46, 58 },
			["ßraxtør|nightslayer"] = { 11, 6, 46, 58 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 31 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 58 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 58 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 58 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 58 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 30 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 395 },
			["Namkijun|nightslayer"] = { 2, 1, 0, 706 },
			["Slowfast|nightslayer"] = { 2, 1, -4, 707 },
			["Allenstout|nightslayer"] = { 0, 2, -14, 58 },
			["Jingjingbaby|nightslayer"] = { 0, 2, -14, 58 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 58 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 58 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 22, 41, 58 },
			["Jingjingbaby|nightslayer"] = { 22, 22, 41, 58 },
			["Shigekazu|nightslayer"] = { 20, 19, -31, 58 },
			["Wílleh|nightslayer"] = { 20, 19, -31, 58 },
			["Fanthom|nightslayer"] = { 11, 11, -18, 1334 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 1333 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1349 },
			["Ragequitqtt|nightslayer"] = { 11, 6, 46, 58 },
			["ßraxtør|nightslayer"] = { 11, 6, 46, 58 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 1267 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 31 },
			["Leien|nightslayer"] = { 10, 5, 38, 1266 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1367 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 58 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1369 },
			["Bohagons|nightslayer"] = { 8, 4, 17, 58 },
			["Chugzila|nightslayer"] = { 8, 4, 17, 58 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1318 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1318 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 1296 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 58 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1318 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1138 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1153 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 1381 },
			["Trû|nightslayer"] = { 4, 4, 10, 1329 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 1389 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 30 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 706 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 395 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 707 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1138 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1227 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 778 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 923 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 778 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 940 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1329 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 1429 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 730 },
		},
	},
}

