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
	built = 1794113917,
	builtText = "2026-11-07 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 6, 1, 41, 50 },
			["ßraxtør|nightslayer"] = { 6, 1, 41, 51 },
			["Allenstout|nightslayer"] = { 2, 2, 19, 57 },
			["Jingjingbaby|nightslayer"] = { 2, 2, 19, 57 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 55 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 57 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 50 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 51 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 91 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 118 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 118 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 118 },
			["Gzlol|dreamscythe"] = { 3, 5, -49, 118 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 57 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 57 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 90 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 118 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 118 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 55 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 57 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 50 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 51 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 91 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 118 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 118 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 118 },
			["Gzlol|dreamscythe"] = { 4, 6, -56, 118 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 57 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 57 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 90 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 118 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 118 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 55 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 57 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 50 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 51 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 91 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 118 },
			["Shigekazu|nightslayer"] = { 6, 6, -17, 118 },
			["Wílleh|nightslayer"] = { 6, 6, -17, 118 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 118 },
			["Allenstout|nightslayer"] = { 2, 4, 5, 57 },
			["Jingjingbaby|nightslayer"] = { 2, 4, 5, 57 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 90 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 455 },
			["Bohagons|nightslayer"] = { 0, 1, -11, 118 },
			["Chugzila|nightslayer"] = { 0, 1, -11, 118 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 55 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 57 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 24, 24, 60, 57 },
			["Jingjingbaby|nightslayer"] = { 24, 24, 60, 57 },
			["Shigekazu|nightslayer"] = { 20, 19, -31, 118 },
			["Wílleh|nightslayer"] = { 20, 19, -31, 118 },
			["Ragequitqtt|nightslayer"] = { 17, 7, 87, 50 },
			["ßraxtør|nightslayer"] = { 17, 7, 87, 51 },
			["Fanthom|nightslayer"] = { 11, 11, -18, 1394 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 1393 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 1409 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 1327 },
			["Inyntz|nightslayer"] = { 8, 7, -23, 91 },
			["Leien|nightslayer"] = { 10, 5, 38, 1326 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 1427 },
			["Gzlol|dreamscythe"] = { 7, 7, -44, 118 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 1429 },
			["Bohagons|nightslayer"] = { 8, 4, 17, 118 },
			["Chugzila|nightslayer"] = { 8, 4, 17, 118 },
			["Exthief|nightslayer"] = { 3, 8, -43, 1378 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 1378 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 1357 },
			["Doobmaxtwo|nightslayer"] = { 5, 5, -3, 118 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 1378 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 1198 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 1213 },
			["Trû|nightslayer"] = { 4, 4, 10, 1389 },
			["Doobmax|nightslayer"] = { 3, 2, 20, 90 },
			["Namkijun|nightslayer"] = { 2, 3, -8, 766 },
			["Ryanin|dreamscythe"] = { 2, 3, -35, 455 },
			["Slowfast|nightslayer"] = { 2, 3, -14, 767 },
			["Aversor|nightslayer"] = { 2, 2, -17, 1198 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 1287 },
			["Jodaldal|nightslayer"] = { 3, 0, 18, 838 },
			["Saplinq|nightslayer"] = { 2, 1, 8, 983 },
			["Sunnyslow|nightslayer"] = { 3, 0, 9, 838 },
			["Gankmasterr|nightslayer"] = { 1, 1, 0, 1000 },
			["Hybro|nightslayer"] = { 1, 1, -3, 1389 },
			["Manthony|dreamscythe"] = { 1, 0, 3, 55 },
			["Ssk|dreamscythe"] = { 1, 0, 3, 57 },
		},
		[3] = {
			["Showhan|nightslayer"] = { 1, 1, -19, 790 },
		},
	},
}

