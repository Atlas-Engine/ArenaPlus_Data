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
	built = 1794884318,
	builtText = "2026-11-16 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Astias|nightslayer"] = { 2, 2, 1, 41 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 43 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 62 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 73 },
			["Ichix|nightslayer"] = { 7, 2, 82, 73 },
			["Astias|nightslayer"] = { 2, 2, 1, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 161 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 43 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 94 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 90 },
			["Konnz|nightslayer"] = { 1, 0, 3, 148 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 147 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 1, 4, -72, 116 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 62 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 73 },
			["Ichix|nightslayer"] = { 7, 2, 82, 73 },
			["Astias|nightslayer"] = { 2, 2, 1, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 161 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 43 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 94 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 90 },
			["Konnz|nightslayer"] = { 1, 0, 3, 148 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 147 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 1, 4, -72, 116 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 16, 10, -9, 62 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 73 },
			["Ichix|nightslayer"] = { 7, 2, 82, 73 },
			["Astias|nightslayer"] = { 2, 2, 1, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 161 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 43 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 94 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 90 },
			["Konnz|nightslayer"] = { 1, 0, 3, 148 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 147 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 1, 4, -72, 116 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Faeriejane|nightslayer"] = { 17, 16, -40, 62 },
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 1206 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 1207 },
			["Bazook|nightslayer"] = { 9, 1, 76, 1366 },
			["Truccz|nightslayer"] = { 9, 1, 76, 1365 },
			["Fouzz|nightslayer"] = { 7, 2, 80, 73 },
			["Ichix|nightslayer"] = { 7, 2, 82, 73 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 1323 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 1323 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 1289 },
			["Astias|nightslayer"] = { 2, 2, 1, 41 },
			["Bananapwn|nightslayer"] = { 2, 2, -30, 161 },
			["Deezbloomz|nightslayer"] = { 2, 2, 1, 43 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 1241 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 1417 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 1416 },
			["Dinnoo|nightslayer"] = { 2, 1, -15, 94 },
			["Plasticsurgn|nightslayer"] = { 2, 1, -15, 90 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 1348 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 1348 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 1355 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 1198 },
			["Konnz|nightslayer"] = { 1, 0, 3, 148 },
			["Leien|nightslayer"] = { 1, 0, 12, 1198 },
			["Platinumamex|nightslayer"] = { 1, 0, 3, 147 },
		},
		[3] = {
			["Umàdbro|nightslayer"] = { 1, 4, -72, 116 },
		},
	},
}

