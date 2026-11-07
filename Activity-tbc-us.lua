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
	built = 1794045516,
	builtText = "2026-11-07 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 58 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 58 },
			["Aversor|nightslayer"] = { 2, 2, -17, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 93 },
			["Jingjingbaby|nightslayer"] = { 12, 11, 43, 58 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 58 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 73 },
			["Aversor|nightslayer"] = { 2, 2, -17, 58 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 147 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 93 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 58 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 197 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 198 },
			["Fanthom|nightslayer"] = { 11, 11, -18, 254 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 253 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 269 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 187 },
			["Leien|nightslayer"] = { 10, 5, 38, 186 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 287 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 289 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 238 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 238 },
			["Exthief|nightslayer"] = { 3, 8, -43, 238 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 238 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 217 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 238 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 58 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 73 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 301 },
			["Trû|nightslayer"] = { 4, 4, 10, 249 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 309 },
			["Aversor|nightslayer"] = { 2, 2, -17, 58 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 147 },
			["Hybro|nightslayer"] = { 1, 1, -3, 249 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 349 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 93 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 58 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 254 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 253 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 197 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 198 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 269 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 217 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 187 },
			["Leien|nightslayer"] = { 10, 5, 38, 186 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 287 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 289 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 238 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 238 },
			["Exthief|nightslayer"] = { 3, 8, -43, 238 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 238 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 238 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 58 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 73 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 301 },
			["Trû|nightslayer"] = { 4, 4, 10, 249 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 309 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 349 },
			["Swky|nightslayer"] = { 3, 3, 12, 383 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 670 },
			["Mßison|nightslayer"] = { 2, 3, -10, 670 },
			["Aversor|nightslayer"] = { 2, 2, -17, 58 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 147 },
			["Hybro|nightslayer"] = { 1, 1, -3, 249 },
			["Arpx|nightslayer"] = { 1, 0, 1, 515 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 455 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 452 },
			["Yodead|nightslayer"] = { 1, 0, 2, 501 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 381 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 93 },
			["Jingjingbaby|nightslayer"] = { 22, 20, 55, 58 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 254 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 253 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 197 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 198 },
			["Slowfast|nightslayer"] = { 9, 13, 31, 1087 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 269 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 217 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 187 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 972 },
			["Leien|nightslayer"] = { 10, 5, 38, 186 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 970 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 287 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 1150 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 289 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 238 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 238 },
			["Exthief|nightslayer"] = { 3, 8, -43, 238 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 238 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 238 },
			["Negitoromaki|nightslayer"] = { 5, 5, -17, 58 },
			["Reverencèx|nightslayer"] = { 5, 5, -31, 73 },
			["Trû|nightslayer"] = { 6, 4, 19, 249 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 1080 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1086 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 301 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 309 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 349 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 1301 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1121 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1121 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 1301 },
			["Swky|nightslayer"] = { 3, 3, 12, 383 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 670 },
			["Mßison|nightslayer"] = { 2, 3, -10, 670 },
			["Aversor|nightslayer"] = { 2, 2, -17, 58 },
			["Cogitatos|nightslayer"] = { 2, 2, -29, 147 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1102 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 941 },
			["Hybro|nightslayer"] = { 1, 1, -3, 249 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 941 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1088 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 1301 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1084 },
			["Arpx|nightslayer"] = { 1, 0, 1, 515 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 455 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1121 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 452 },
			["Yodead|nightslayer"] = { 1, 0, 2, 501 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 381 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1121 },
		},
	},
}

