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
	built = 1794261515,
	builtText = "2026-11-09 04:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bazooko|nightslayer"] = { 3, 1, -14, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bazooko|nightslayer"] = { 3, 1, -14, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bazooko|nightslayer"] = { 3, 1, -14, 58 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 340 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 304 },
			["Bbangzz|dreamscythe"] = { 2, 0, 12, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 468 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 468 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 340 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 458 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 381 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 457 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 418 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 418 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 58 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 340 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 304 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 541 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 1138 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 1138 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 1163 },
			["Mßison|nightslayer"] = { 13, 10, -5, 1163 },
			["Creation|nightslayer"] = { 11, 7, -125, 1359 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 468 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 468 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 1050 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 1173 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 1205 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 1194 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 1195 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 541 },
			["Astias|nightslayer"] = { 6, 4, 45, 1042 },
			["Bazooko|nightslayer"] = { 7, 3, -1, 58 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 340 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 1016 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 1380 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 458 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 1066 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 381 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 457 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 1069 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 418 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 418 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 1209 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 1201 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 1016 },
			["Onit|nightslayer"] = { 3, 4, -19, 1082 },
			["Béon|nightslayer"] = { 4, 2, 13, 1023 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 1318 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 340 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 304 },
			["Healobot|nightslayer"] = { 1, 2, -15, 1061 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1318 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1361 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 1086 },
		},
	},
}

