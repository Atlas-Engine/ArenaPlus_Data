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
	built = 1794031116,
	builtText = "2026-11-07 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 11, 11, -18, 14 },
			["Redubbed|nightslayer"] = { 11, 11, -18, 13 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 47 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 49 },
			["Allenstout|nightslayer"] = { 3, 6, -34, 48 },
			["Hybro|nightslayer"] = { 1, 1, -3, 9 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 19, 15, -18, 14 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 13 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 47 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 49 },
			["Allenstout|nightslayer"] = { 3, 6, -34, 48 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 61 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 69 },
			["Hybro|nightslayer"] = { 1, 1, -3, 9 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 109 },
			["Swky|nightslayer"] = { 0, 1, -4, 143 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 141 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 19, 15, -18, 14 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 13 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 47 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 49 },
			["Allenstout|nightslayer"] = { 3, 6, -34, 48 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 253 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 61 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 69 },
			["Hybro|nightslayer"] = { 1, 1, -3, 9 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 109 },
			["Arpx|nightslayer"] = { 1, 0, 1, 275 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 215 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 212 },
			["Swky|nightslayer"] = { 0, 1, -4, 143 },
			["Yodead|nightslayer"] = { 1, 0, 2, 261 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 141 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 19, 15, -18, 14 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 13 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 47 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 49 },
			["Allenstout|nightslayer"] = { 3, 6, -34, 48 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 253 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 61 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 69 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 109 },
			["Swky|nightslayer"] = { 3, 3, 12, 143 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 430 },
			["Mßison|nightslayer"] = { 2, 3, -10, 430 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 701 },
			["Hybro|nightslayer"] = { 1, 1, -3, 9 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 701 },
			["Arpx|nightslayer"] = { 1, 0, 1, 275 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 215 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 212 },
			["Yodead|nightslayer"] = { 1, 0, 2, 261 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 141 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 19, 15, -18, 14 },
			["Redubbed|nightslayer"] = { 19, 15, -18, 13 },
			["Slowfast|nightslayer"] = { 9, 13, 31, 847 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 732 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 730 },
			["Ariiana|dreamscythe"] = { 8, 6, 13, 47 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 910 },
			["Swackedx|dreamscythe"] = { 8, 6, 21, 49 },
			["Ariiana|nightslayer"] = { 9, 3, 26, 109 },
			["Swky|nightslayer"] = { 9, 3, 24, 143 },
			["Allenstout|nightslayer"] = { 3, 6, -34, 48 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 1439 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 253 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 840 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 846 },
			["Ïxïxïxïx|nightslayer"] = { 7, 1, 23, 61 },
			["Zasekl|nightslayer"] = { 6, 1, 99, 69 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 1061 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 881 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 881 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 1061 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 430 },
			["Mßison|nightslayer"] = { 2, 3, -10, 430 },
			["Enviz|nightslayer"] = { 3, 1, 8, 862 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 1241 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 1241 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1421 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 701 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 1332 },
			["Hybro|nightslayer"] = { 1, 1, -3, 9 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 701 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 848 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 1061 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 844 },
			["Peladini|nightslayer"] = { 1, 1, 6, 1241 },
			["Trû|nightslayer"] = { 2, 0, 9, 1193 },
			["Arpx|nightslayer"] = { 1, 0, 1, 275 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 215 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 881 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 212 },
			["Yodead|nightslayer"] = { 1, 0, 2, 261 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 141 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 881 },
		},
	},
}

