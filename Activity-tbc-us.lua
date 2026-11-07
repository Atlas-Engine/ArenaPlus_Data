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
	built = 1794027517,
	builtText = "2026-11-06 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Ariiana|nightslayer"] = { 0, 1, -4, 49 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 118 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 118 },
			["Ariiana|nightslayer"] = { 0, 1, -4, 49 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 155 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 152 },
			["Swky|nightslayer"] = { 0, 1, -4, 83 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 81 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 118 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 118 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 193 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 49 },
			["Arpx|nightslayer"] = { 1, 0, 1, 215 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 155 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 152 },
			["Swky|nightslayer"] = { 0, 1, -4, 83 },
			["Yodead|nightslayer"] = { 1, 0, 2, 201 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 81 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fanthom|nightslayer"] = { 8, 4, 0, 118 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 118 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 193 },
			["Ariiana|nightslayer"] = { 3, 3, 14, 49 },
			["Swky|nightslayer"] = { 3, 3, 12, 83 },
			["Jodaldal|nightslayer"] = { 4, 1, 16, 672 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 370 },
			["Mßison|nightslayer"] = { 2, 3, -10, 370 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 670 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 641 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 641 },
			["Arpx|nightslayer"] = { 1, 0, 1, 215 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 155 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 152 },
			["Yodead|nightslayer"] = { 1, 0, 2, 201 },
			["Zasekle|nightslayer"] = { 1, 0, 6, 81 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 787 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 672 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 670 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 850 },
			["Ariiana|nightslayer"] = { 9, 3, 26, 49 },
			["Fanthom|nightslayer"] = { 8, 4, 0, 118 },
			["Redubbed|nightslayer"] = { 8, 4, 0, 118 },
			["Swky|nightslayer"] = { 9, 3, 24, 83 },
			["Bohagons|nightslayer"] = { 8, 3, 11, 1421 },
			["Chugzila|nightslayer"] = { 8, 3, 11, 1426 },
			["Checkmater|nightslayer"] = { 5, 4, 10, 1379 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 193 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 780 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 786 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 1001 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 821 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 821 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 1001 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 370 },
			["Mßison|nightslayer"] = { 2, 3, -10, 370 },
			["Enviz|nightslayer"] = { 3, 1, 8, 802 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 1181 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 1181 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1361 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 641 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 1272 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 641 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 788 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 1001 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 784 },
			["Peladini|nightslayer"] = { 1, 1, 6, 1181 },
			["Trû|nightslayer"] = { 2, 0, 9, 1134 },
			["Zasekle|nightslayer"] = { 2, 0, 8, 81 },
			["Arpx|nightslayer"] = { 1, 0, 1, 215 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 155 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 821 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 152 },
			["Yodead|nightslayer"] = { 1, 0, 2, 201 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 821 },
		},
	},
}

