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
	built = 1794049115,
	builtText = "2026-11-07 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 153 },
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 118 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 118 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 133 },
			["Aversor|nightslayer"] = { 2, 2, -17, 118 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 153 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 118 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 257 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 258 },
			["Fanthom|nightslayer"] = { 11, 11, -18, 314 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 313 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 329 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 247 },
			["Leien|nightslayer"] = { 10, 5, 38, 246 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 347 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 349 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 298 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 298 },
			["Exthief|nightslayer"] = { 3, 8, -43, 298 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 298 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 277 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 298 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 118 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 133 },
			["Trû|nightslayer"] = { 4, 4, 10, 309 },
			["Aversor|nightslayer"] = { 2, 2, -17, 118 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 207 },
			["Hybro|nightslayer"] = { 1, 1, -3, 309 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 153 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 118 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 314 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 313 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 257 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 258 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 329 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 277 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 247 },
			["Leien|nightslayer"] = { 10, 5, 38, 246 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 347 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 349 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 298 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 298 },
			["Exthief|nightslayer"] = { 3, 8, -43, 298 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 298 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 298 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 118 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 133 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 361 },
			["Trû|nightslayer"] = { 4, 4, 10, 309 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 369 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 409 },
			["Aversor|nightslayer"] = { 2, 2, -17, 118 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 207 },
			["Hybro|nightslayer"] = { 1, 1, -3, 309 },
			["Arpx|nightslayer"] = { 1, 0, 1, 575 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 515 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 512 },
			["Swky|nightslayer"] = { 0, 1, -4, 443 },
			["Yodead|nightslayer"] = { 1, 0, 2, 561 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 441 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 153 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 118 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 314 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 313 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 257 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 258 },
			["Slowfast|nightslayer"] = { 9, 13, 31, 1147 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 329 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 277 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 247 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 1032 },
			["Leien|nightslayer"] = { 10, 5, 38, 246 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 1030 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 347 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 1210 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 349 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 298 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 298 },
			["Exthief|nightslayer"] = { 3, 8, -43, 298 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 298 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 298 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 118 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 133 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 1140 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1146 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 361 },
			["Trû|nightslayer"] = { 4, 4, 10, 309 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 369 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 409 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 1361 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1181 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1181 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 1361 },
			["Swky|nightslayer"] = { 3, 3, 12, 443 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 730 },
			["Mßison|nightslayer"] = { 2, 3, -10, 730 },
			["Aversor|nightslayer"] = { 2, 2, -17, 118 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 207 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1162 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1001 },
			["Hybro|nightslayer"] = { 1, 1, -3, 309 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1001 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1148 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 1361 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1144 },
			["Arpx|nightslayer"] = { 1, 0, 1, 575 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 515 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1181 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 512 },
			["Yodead|nightslayer"] = { 1, 0, 2, 561 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 441 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1181 },
		},
	},
}

