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
	built = 1794020314,
	builtText = "2026-11-06 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 35 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 73 },
			["Arpx|nightslayer"] = { 1, 0, 1, 95 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 35 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 31 },
			["Yodead|nightslayer"] = { 1, 0, 2, 81 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 73 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 227 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 250 },
			["Mßison|nightslayer"] = { 2, 3, -10, 250 },
			["Swky|nightslayer"] = { 3, 2, 16, 241 },
			["Arpx|nightslayer"] = { 1, 0, 1, 95 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 35 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 31 },
			["Yodead|nightslayer"] = { 1, 0, 2, 81 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 667 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 552 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 550 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 73 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 666 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 701 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 701 },
			["Ariiana|nightslayer"] = { 3, 2, 18, 227 },
			["Gankmasterr|nightslayer"] = { 2, 3, -12, 660 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 250 },
			["Mßison|nightslayer"] = { 2, 3, -10, 250 },
			["Swky|nightslayer"] = { 3, 2, 16, 241 },
			["Enviz|nightslayer"] = { 3, 1, 8, 682 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 521 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 521 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 668 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 664 },
			["Arpx|nightslayer"] = { 1, 0, 1, 95 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 35 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 701 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 31 },
			["Yodead|nightslayer"] = { 1, 0, 2, 81 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 667 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 1259 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 552 },
			["Onit|nightslayer"] = { 8, 7, 14, 1327 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 550 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 730 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 1301 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 1305 },
			["Ariiana|nightslayer"] = { 9, 2, 30, 227 },
			["Swky|nightslayer"] = { 9, 2, 28, 241 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 1374 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 1375 },
			["Cazsandra|dreamscythe"] = { 6, 2, 20, 73 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 660 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 666 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 1421 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 881 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 701 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 701 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 881 },
			["Lutenantdan|nightslayer"] = { 2, 3, -10, 250 },
			["Mßison|nightslayer"] = { 2, 3, -10, 250 },
			["Enviz|nightslayer"] = { 3, 1, 8, 682 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 1394 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 1396 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 1061 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 1402 },
			["Lestát|nightslayer"] = { 2, 1, 10, 1332 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 1061 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 1241 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 521 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 1421 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 1152 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 521 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 668 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 881 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 664 },
			["Peladini|nightslayer"] = { 1, 1, 6, 1061 },
			["Trû|nightslayer"] = { 2, 0, 9, 1013 },
			["Arpx|nightslayer"] = { 1, 0, 1, 95 },
			["Dirtydeedss|dreamscythe"] = { 1, 0, 4, 35 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 701 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 1321 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 1421 },
			["Spicyarmpits|dreamscythe"] = { 1, 0, 6, 31 },
			["Yodead|nightslayer"] = { 1, 0, 2, 81 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 1300 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 701 },
		},
	},
}

