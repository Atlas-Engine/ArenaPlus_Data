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
	built = 1794041918,
	builtText = "2026-11-07 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 12, 11, 43, 33 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 19, 14, 89, 33 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 137 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 138 },
			["Jingjingbaby|nightslayer"] = { 10, 9, 12, 178 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 127 },
			["Leien|nightslayer"] = { 10, 5, 38, 126 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 178 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 178 },
			["Exthief|nightslayer"] = { 3, 8, -43, 178 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 178 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 157 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 33 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 194 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 193 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 137 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 138 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 209 },
			["Jingjingbaby|nightslayer"] = { 10, 9, 12, 178 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 127 },
			["Leien|nightslayer"] = { 10, 5, 38, 126 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 227 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 229 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 178 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 178 },
			["Exthief|nightslayer"] = { 3, 8, -43, 178 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 178 },
			["Cazsandra|dreamscythe"] = { 4, 6, -36, 157 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 178 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 241 },
			["Trû|nightslayer"] = { 4, 4, 10, 189 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 249 },
			["Hybro|nightslayer"] = { 1, 1, -3, 189 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 289 },
			["Swky|nightslayer"] = { 0, 1, -4, 323 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 321 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 33 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 194 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 193 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 137 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 138 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 209 },
			["Jingjingbaby|nightslayer"] = { 10, 9, 12, 178 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 157 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 127 },
			["Leien|nightslayer"] = { 10, 5, 38, 126 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 227 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 229 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 178 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 178 },
			["Exthief|nightslayer"] = { 3, 8, -43, 178 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 178 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 178 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 241 },
			["Trû|nightslayer"] = { 4, 4, 10, 189 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 249 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 289 },
			["Swky|nightslayer"] = { 3, 3, 12, 323 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 610 },
			["Mßison|nightslayer"] = { 2, 3, -10, 610 },
			["Hybro|nightslayer"] = { 1, 1, -3, 189 },
			["Arpx|nightslayer"] = { 1, 0, 1, 455 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 395 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 392 },
			["Yodead|nightslayer"] = { 1, 0, 2, 441 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 321 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Allenstout|nightslayer"] = { 22, 20, 55, 33 },
			["Fanthom|nightslayer"] = { 19, 15, -18, 194 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 193 },
			["Shigekazu|nightslayer"] = { 14, 13, -14, 137 },
			["Wílleh|nightslayer"] = { 14, 13, -14, 138 },
			["Slowfast|nightslayer"] = { 9, 13, 31, 1027 },
			["Furioustrike|dreamscythe"] = { 12, 8, 22, 209 },
			["Jingjingbaby|nightslayer"] = { 10, 9, 12, 178 },
			["Cazsandra|dreamscythe"] = { 10, 8, -16, 157 },
			["Feldargon|nightslayer"] = { 10, 5, 52, 127 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 912 },
			["Leien|nightslayer"] = { 10, 5, 38, 126 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 910 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 227 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 1090 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 229 },
			["Bohagons|nightslayer"] = { 8, 3, 28, 178 },
			["Chugzila|nightslayer"] = { 8, 3, 28, 178 },
			["Exthief|nightslayer"] = { 3, 8, -43, 178 },
			["Heartwork|nightslayer"] = { 3, 8, -54, 178 },
			["Hybrox|nightslayer"] = { 6, 4, 34, 178 },
			["Trû|nightslayer"] = { 6, 4, 19, 189 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 1021 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 1026 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 241 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 249 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 289 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 1241 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 1061 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 1061 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 1241 },
			["Swky|nightslayer"] = { 3, 3, 12, 323 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 610 },
			["Mßison|nightslayer"] = { 2, 3, -10, 610 },
			["Enviz|nightslayer"] = { 3, 1, 8, 1042 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 1421 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 1421 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 881 },
			["Hybro|nightslayer"] = { 1, 1, -3, 189 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 881 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 1028 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 1241 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 1024 },
			["Peladini|nightslayer"] = { 1, 1, 6, 1421 },
			["Arpx|nightslayer"] = { 1, 0, 1, 455 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 395 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 1061 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 392 },
			["Yodead|nightslayer"] = { 1, 0, 2, 441 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 321 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 1061 },
		},
	},
}

