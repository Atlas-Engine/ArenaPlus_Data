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
	built = 1794254313,
	builtText = "2026-11-09 02:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 348 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 348 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 220 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 338 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 261 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 337 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 298 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 298 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 220 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 184 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 348 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 348 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 220 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 338 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 261 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 337 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 298 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 298 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 220 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 184 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 420 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 1018 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 1018 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 1043 },
			["Mßison|nightslayer"] = { 13, 10, -5, 1043 },
			["Creation|nightslayer"] = { 11, 9, -159, 1239 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 348 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 348 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 930 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 1053 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 1085 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 1074 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 1075 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 420 },
			["Astias|nightslayer"] = { 6, 4, 45, 922 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 220 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 896 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 1260 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 338 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 946 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 261 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 337 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 949 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 298 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 298 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 1089 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 1081 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 896 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 1346 },
			["Onit|nightslayer"] = { 3, 4, -19, 961 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 1198 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 901 },
			["Béon|nightslayer"] = { 4, 2, 13, 903 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 1336 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 220 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 184 },
			["Healobot|nightslayer"] = { 1, 2, -15, 941 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1198 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1241 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 966 },
		},
	},
}

