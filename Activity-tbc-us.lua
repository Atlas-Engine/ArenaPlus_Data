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
	built = 1794279513,
	builtText = "2026-11-09 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Frotted|nightslayer"] = { 5, 1, 39, 48 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Erinthoss|nightslayer"] = { 7, 11, 11, 151 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 150 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 94 },
			["Swky|nightslayer"] = { 8, 6, -103, 76 },
			["Frotted|nightslayer"] = { 8, 2, 56, 48 },
			["Zofì|nightslayer"] = { 6, 4, 20, 127 },
			["Astias|nightslayer"] = { 5, 2, 67, 178 },
			["Dwg|nightslayer"] = { 5, 2, 66, 178 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 178 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 178 },
			["Antho|nightslayer"] = { 1, 1, -10, 178 },
			["Skulls|nightslayer"] = { 1, 1, -10, 178 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 178 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 178 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 8, 2, 14, 178 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Erinthoss|nightslayer"] = { 7, 11, 11, 151 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 150 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 94 },
			["Swky|nightslayer"] = { 8, 6, -103, 76 },
			["Bazook|nightslayer"] = { 9, 1, 0, 281 },
			["Frotted|nightslayer"] = { 8, 2, 56, 48 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 253 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 253 },
			["Zofì|nightslayer"] = { 6, 4, 20, 127 },
			["Astias|nightslayer"] = { 5, 3, 67, 178 },
			["Dwg|nightslayer"] = { 5, 3, 66, 178 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 220 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 178 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 178 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 248 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 246 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 358 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 234 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 237 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 255 },
			["Antho|nightslayer"] = { 1, 1, -10, 178 },
			["Pogger|nightslayer"] = { 1, 1, -23, 275 },
			["Skulls|nightslayer"] = { 1, 1, -10, 178 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 178 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 255 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 178 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 8, 2, 14, 178 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 249 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 251 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Erinthoss|nightslayer"] = { 7, 11, 11, 151 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 150 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 94 },
			["Swky|nightslayer"] = { 8, 6, -103, 76 },
			["Bazook|nightslayer"] = { 9, 1, 0, 281 },
			["Frotted|nightslayer"] = { 8, 2, 56, 48 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 681 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 253 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 253 },
			["Zofì|nightslayer"] = { 6, 4, 20, 127 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 718 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 718 },
			["Astias|nightslayer"] = { 5, 3, 67, 178 },
			["Dwg|nightslayer"] = { 5, 3, 66, 178 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 220 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 178 },
			["Bbangzz|dreamscythe"] = { 5, 1, 18, 640 },
			["Jamzki|nightslayer"] = { 4, 2, 3, 178 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 248 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 246 },
			["Bazooko|nightslayer"] = { 3, 1, -14, 358 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 640 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 604 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 234 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 237 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 255 },
			["Antho|nightslayer"] = { 1, 1, -10, 178 },
			["Pogger|nightslayer"] = { 1, 1, -23, 275 },
			["Skulls|nightslayer"] = { 1, 1, -10, 178 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 178 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 255 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 178 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 8, 2, 14, 178 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 249 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 251 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 1438 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 1438 },
			["Astias|nightslayer"] = { 11, 7, 112, 178 },
			["Erinthoss|nightslayer"] = { 7, 11, 11, 151 },
			["Squidgim|nightslayer"] = { 7, 11, 11, 150 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 768 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 768 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 1350 },
			["Ariiana|nightslayer"] = { 8, 6, -102, 94 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 840 },
			["Swky|nightslayer"] = { 8, 6, -103, 76 },
			["Bazook|nightslayer"] = { 9, 1, 0, 281 },
			["Bazooko|nightslayer"] = { 7, 3, -1, 358 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 640 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 1316 },
			["Frotted|nightslayer"] = { 8, 2, 56, 48 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 758 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 1366 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 681 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 757 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 1369 },
			["Tryactin|nightslayer"] = { 6, 4, 45, 253 },
			["Xanniepakiow|nightslayer"] = { 6, 4, 47, 253 },
			["Zofì|nightslayer"] = { 6, 4, 20, 127 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 718 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 718 },
			["Dwg|nightslayer"] = { 5, 3, 66, 178 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 1316 },
			["Jamzki|nightslayer"] = { 4, 3, -18, 178 },
			["Onit|nightslayer"] = { 3, 4, -19, 1381 },
			["Seeyoutmrw|nightslayer"] = { 4, 3, -5, 220 },
			["Tomtwocox|nightslayer"] = { 4, 3, -6, 178 },
			["Béon|nightslayer"] = { 4, 2, 13, 1323 },
			["Orangeded|nightslayer"] = { 3, 2, 1, 248 },
			["Soyfreebeef|nightslayer"] = { 3, 2, 21, 246 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 640 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 604 },
			["Tehexd|nightslayer"] = { 3, 1, 21, 234 },
			["Healobot|nightslayer"] = { 1, 2, -15, 1361 },
			["Moosedeuce|dreamscythe"] = { 2, 1, 4, 237 },
			["Pwnologist|nightslayer"] = { 1, 2, -10, 255 },
			["Antho|nightslayer"] = { 1, 1, -10, 178 },
			["Pogger|nightslayer"] = { 1, 1, -23, 275 },
			["Skulls|nightslayer"] = { 1, 1, -10, 178 },
			["Tyrkisovjqt|nightslayer"] = { 1, 1, 1, 178 },
			["Martinovich|nightslayer"] = { 0, 1, -16, 255 },
			["Squisheh|nightslayer"] = { 0, 1, -16, 178 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 8, 2, 14, 178 },
			["Drstrangezz|nightslayer"] = { 3, 0, 16, 249 },
			["Happyhambrgr|nightslayer"] = { 3, 0, 17, 251 },
		},
	},
}

