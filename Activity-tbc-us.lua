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
	built = 1794268716,
	builtText = "2026-11-09 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 40 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 54 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 57 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 9, 1, 0, 101 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 40 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 68 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 66 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 178 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 54 },
			["Adilette|nightslayer"] = { 1, 2, -9, 74 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 57 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 75 },
			["Pogger|nightslayer"] = { 1, 1, -23, 95 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 75 },
		},
		[3] = {
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 69 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 71 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bazook|nightslayer"] = { 9, 1, 0, 101 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 40 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 68 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 66 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 178 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 54 },
			["Adilette|nightslayer"] = { 1, 2, -9, 74 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 57 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 75 },
			["Pogger|nightslayer"] = { 1, 1, -23, 95 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 75 },
		},
		[3] = {
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 69 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 71 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 588 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 588 },
			["Bazook|nightslayer"] = { 9, 1, 0, 101 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 460 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 579 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 501 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 577 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 538 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 538 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 40 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 68 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 66 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 178 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 460 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 424 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 54 },
			["Adilette|nightslayer"] = { 1, 2, -9, 74 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 661 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 57 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 75 },
			["Pogger|nightslayer"] = { 1, 1, -23, 95 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 75 },
		},
		[3] = {
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 69 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 71 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 1258 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 1258 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 1283 },
			["Mßison|nightslayer"] = { 13, 10, -5, 1283 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 588 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 588 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 1170 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 1293 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 1325 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 1314 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 1315 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 661 },
			["Astias|nightslayer"] = { 6, 4, 45, 1162 },
			["Bazook|nightslayer"] = { 9, 1, 0, 101 },
			["Bazooko|nightslayer"] = { 7, 3, -1, 178 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 460 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 1136 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 579 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 1186 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 501 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 577 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 1189 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 538 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 538 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 1329 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 1321 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 1136 },
			["Onit|nightslayer"] = { 3, 4, -19, 1202 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 40 },
			["Béon|nightslayer"] = { 4, 2, 13, 1143 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 68 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 66 },
			["Tnyni|nightslayer"] = { 5, 0, 29, 1438 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 460 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 424 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 54 },
			["Adilette|nightslayer"] = { 1, 2, -9, 74 },
			["Healobot|nightslayer"] = { 1, 2, -15, 1181 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 57 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 75 },
			["Pogger|nightslayer"] = { 1, 1, -23, 95 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1438 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 1206 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 75 },
		},
		[3] = {
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 69 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 71 },
		},
	},
}

