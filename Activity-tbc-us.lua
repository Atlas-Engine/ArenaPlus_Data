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
	built = 1794265115,
	builtText = "2026-11-09 05:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 9, 1, 0, 41 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 6 },
			["Adilette|nightslayer"] = { 1, 2, -9, 14 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 15 },
			["Pogger|nightslayer"] = { 1, 1, -23, 35 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 9, 1, 0, 41 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 6 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 118 },
			["Adilette|nightslayer"] = { 1, 2, -9, 14 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 15 },
			["Pogger|nightslayer"] = { 1, 1, -23, 35 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 9, 1, 0, 41 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 6 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 118 },
			["Adilette|nightslayer"] = { 1, 2, -9, 14 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 15 },
			["Pogger|nightslayer"] = { 1, 1, -23, 35 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 528 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 528 },
			["Bazook|nightslayer"] = { 9, 1, 0, 41 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 400 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 518 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 441 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 517 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 478 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 478 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 6 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 118 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 400 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 364 },
			["Adilette|nightslayer"] = { 1, 2, -9, 14 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 601 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 15 },
			["Pogger|nightslayer"] = { 1, 1, -23, 35 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 1198 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 1198 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 1223 },
			["Mßison|nightslayer"] = { 13, 10, -5, 1223 },
			["Creation|nightslayer"] = { 11, 7, -125, 1419 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 528 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 528 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 1110 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 1233 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 1265 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 1254 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 1255 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 601 },
			["Astias|nightslayer"] = { 6, 4, 45, 1102 },
			["Bazook|nightslayer"] = { 9, 1, 0, 41 },
			["Bazooko|nightslayer"] = { 7, 3, -1, 118 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 400 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 1076 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 518 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 1126 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 441 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 517 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 1129 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 478 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 478 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 1269 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 1261 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 1076 },
			["Onit|nightslayer"] = { 3, 4, -19, 1142 },
			["Béon|nightslayer"] = { 4, 2, 13, 1083 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 6 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 1378 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 400 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 364 },
			["Adilette|nightslayer"] = { 1, 2, -9, 14 },
			["Healobot|nightslayer"] = { 1, 2, -15, 1121 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 15 },
			["Pogger|nightslayer"] = { 1, 1, -23, 35 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1378 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1421 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 1146 },
		},
	},
}

