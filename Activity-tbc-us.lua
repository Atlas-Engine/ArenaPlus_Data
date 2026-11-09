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
	built = 1794250714,
	builtText = "2026-11-09 01:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 0, 12, 160 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 124 },
			["Bbangzz|dreamscythe"] = { 2, 0, 12, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 288 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 288 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 160 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 278 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 201 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 277 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 238 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 238 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 160 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 124 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 288 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 288 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 160 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 278 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 201 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 277 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 238 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 238 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 160 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 124 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 360 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 958 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 958 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 983 },
			["Mßison|nightslayer"] = { 13, 10, -5, 983 },
			["Creation|nightslayer"] = { 11, 9, -159, 1179 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 288 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 288 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 870 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 993 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 1025 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 1014 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 1015 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 360 },
			["Astias|nightslayer"] = { 6, 4, 45, 862 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 160 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 836 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 1200 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 278 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 886 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 201 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 277 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 889 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 238 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 238 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 1029 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 1021 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 836 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 1286 },
			["Onit|nightslayer"] = { 3, 4, -19, 901 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 1138 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 841 },
			["Béon|nightslayer"] = { 4, 2, 13, 843 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 1276 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 160 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 124 },
			["Healobot|nightslayer"] = { 1, 2, -15, 881 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1138 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1181 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 906 },
		},
	},
}

