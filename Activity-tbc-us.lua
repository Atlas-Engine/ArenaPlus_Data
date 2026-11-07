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
	built = 1794052713,
	builtText = "2026-11-07 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 178 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 178 },
			["Aversor|nightslayer"] = { 2, 2, -17, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 178 },
			["Allenstout|nightslayer"] = { 19, 14, 89, 213 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 317 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 318 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 307 },
			["Leien|nightslayer"] = { 10, 5, 38, 306 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 358 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 358 },
			["Exthief|nightslayer"] = { 3, 8, -43, 358 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 358 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 336 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 358 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 178 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 193 },
			["Aversor|nightslayer"] = { 2, 2, -17, 178 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 267 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 213 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 178 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 374 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 373 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 317 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 318 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 389 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 336 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 307 },
			["Leien|nightslayer"] = { 10, 5, 38, 306 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 407 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 409 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 358 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 358 },
			["Exthief|nightslayer"] = { 3, 8, -43, 358 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 358 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 358 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 178 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 193 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 421 },
			["Trû|nightslayer"] = { 4, 4, 10, 369 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 429 },
			["Aversor|nightslayer"] = { 2, 2, -17, 178 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 267 },
			["Hybro|nightslayer"] = { 1, 1, -3, 369 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 469 },
			["Arpx|nightslayer"] = { 1, 0, 1, 635 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 575 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 571 },
			["Swky|nightslayer"] = { 0, 1, -4, 503 },
			["Yodead|nightslayer"] = { 1, 0, 2, 621 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 501 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 213 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 178 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 374 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 373 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 317 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 318 },
			["Slowfast|nightslayer"] = { 9, 13, 31, 1207 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 389 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 336 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 307 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 1092 },
			["Leien|nightslayer"] = { 10, 5, 38, 306 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 1090 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 407 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 1270 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 409 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 358 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 358 },
			["Exthief|nightslayer"] = { 3, 8, -43, 358 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 358 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 358 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 178 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 193 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 1200 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1206 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 421 },
			["Trû|nightslayer"] = { 4, 4, 10, 369 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 429 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 469 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 1421 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1241 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1241 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 1421 },
			["Swky|nightslayer"] = { 3, 3, 12, 503 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 790 },
			["Mßison|nightslayer"] = { 2, 3, -10, 790 },
			["Aversor|nightslayer"] = { 2, 2, -17, 178 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 267 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1222 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 1061 },
			["Hybro|nightslayer"] = { 1, 1, -3, 369 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 1061 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1208 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 1421 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1204 },
			["Arpx|nightslayer"] = { 1, 0, 1, 635 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 575 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1241 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 571 },
			["Yodead|nightslayer"] = { 1, 0, 2, 621 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 501 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1241 },
		},
	},
}

