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
	built = 1793991513,
	builtText = "2026-11-06 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 41 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 1, 16, 72 },
			["Sunnyslow|nightslayer"] = { 4, 1, -5, 70 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 41 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 187 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 72 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 70 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 250 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 180 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 186 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 221 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 221 },
			["Enviz|nightslayer"] = { 3, 1, 8, 202 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 41 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 41 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 188 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 184 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 221 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 187 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 72 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 70 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 250 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 180 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 186 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 602 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 401 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 221 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 221 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 401 },
			["Swky|nightslayer"] = { 6, 0, 12, 607 },
			["Enviz|nightslayer"] = { 3, 1, 8, 202 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 581 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 581 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 41 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 672 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 41 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 188 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 401 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 184 },
			["Peladini|nightslayer"] = { 1, 1, 6, 581 },
			["Trû|nightslayer"] = { 2, 0, 9, 533 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 221 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 221 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Slowfast|nightslayer"] = { 9, 13, 31, 187 },
			["Checkmater|nightslayer"] = { 8, 7, 14, 779 },
			["Jodaldal|nightslayer"] = { 14, 1, 84, 72 },
			["Onit|nightslayer"] = { 8, 7, 14, 847 },
			["Sunnyslow|nightslayer"] = { 14, 1, 25, 70 },
			["Namkijun|nightslayer"] = { 4, 10, -34, 250 },
			["Bohagons|nightslayer"] = { 10, 3, 15, 821 },
			["Chugzila|nightslayer"] = { 10, 3, 15, 825 },
			["Chtibyxes|nightslayer"] = { 9, 0, 72, 894 },
			["Kaobeecee|nightslayer"] = { 9, 0, 73, 895 },
			["Gankmasterr|nightslayer"] = { 2, 6, -31, 180 },
			["Heartwork|nightslayer"] = { 5, 3, 39, 997 },
			["Hurururu|nightslayer"] = { 5, 3, 48, 186 },
			["Jamzki|nightslayer"] = { 5, 3, 19, 941 },
			["Ariiana|nightslayer"] = { 6, 0, 12, 602 },
			["Flexrage|nightslayer"] = { 6, 0, 38, 401 },
			["Gaekpoong|nightslayer"] = { 4, 2, -10, 221 },
			["Gwedysseus|nightslayer"] = { 4, 2, -10, 221 },
			["Hyperxewl|nightslayer"] = { 6, 0, 38, 401 },
			["Swky|nightslayer"] = { 6, 0, 12, 607 },
			["Enviz|nightslayer"] = { 3, 1, 8, 202 },
			["Fannypacker|nightslayer"] = { 2, 2, -19, 1035 },
			["Footlongfred|nightslayer"] = { 0, 4, -44, 914 },
			["Homiekisserx|nightslayer"] = { 0, 4, -44, 916 },
			["Mindprison|nightslayer"] = { 0, 4, -65, 581 },
			["Riskybiznes|dreamscythe"] = { 2, 2, -19, 922 },
			["Tycat|nightslayer"] = { 2, 2, -19, 1035 },
			["Lestát|nightslayer"] = { 2, 1, 10, 852 },
			["Saplinq|nightslayer"] = { 1, 2, 9, 581 },
			["Wetfloorsign|nightslayer"] = { 2, 1, 8, 761 },
			["Cardiackcc|nightslayer"] = { 1, 1, -3, 41 },
			["Chrispratt|nightslayer"] = { 2, 0, 8, 941 },
			["Cpdx|nightslayer"] = { 1, 1, -6, 672 },
			["Khameini|dreamscythe"] = { 1, 1, -6, 41 },
			["Lefttenclear|nightslayer"] = { 2, 0, 8, 966 },
			["Llamallamaa|dreamscythe"] = { 1, 1, 4, 188 },
			["Minixboy|nightslayer"] = { 2, 0, 11, 401 },
			["Nobzz|nightslayer"] = { 1, 1, -5, 184 },
			["Peladini|nightslayer"] = { 1, 1, 6, 581 },
			["Trû|nightslayer"] = { 2, 0, 9, 533 },
			["Hairforkids|nightslayer"] = { 1, 0, 2, 221 },
			["Ïxïxïxïx|nightslayer"] = { 1, 0, 3, 841 },
			["Shieldabuser|nightslayer"] = { 0, 1, -2, 941 },
			["Zasekle|nightslayer"] = { 1, 0, 2, 820 },
			["Zeedoggx|nightslayer"] = { 1, 0, 5, 221 },
		},
	},
}

