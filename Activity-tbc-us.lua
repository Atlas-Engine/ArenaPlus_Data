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
	built = 1795229913,
	builtText = "2026-11-20 09:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -31, 105 },
			["Tycat|nightslayer"] = { 2, 2, -31, 105 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 100 },
			["Ryanin|dreamscythe"] = { 1, 0, 3, 160 },
			["Xczv|dreamscythe"] = { 1, 0, 5, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -31, 105 },
			["Tycat|nightslayer"] = { 2, 2, -31, 105 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 100 },
			["Ryanin|dreamscythe"] = { 1, 0, 3, 160 },
			["Xczv|dreamscythe"] = { 1, 0, 5, 160 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Fannypacker|nightslayer"] = { 2, 2, -31, 105 },
			["Tycat|nightslayer"] = { 2, 2, -31, 105 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 100 },
			["Ryanin|dreamscythe"] = { 1, 0, 3, 160 },
			["Xczv|dreamscythe"] = { 1, 0, 5, 160 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 13, 5, 28, 160 },
			["Gzlol|dreamscythe"] = { 12, 5, 45, 1060 },
			["Palapapa|nightslayer"] = { 10, 2, 13, 1291 },
			["Rjp|nightslayer"] = { 10, 2, 23, 1291 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 1373 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 1430 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 1240 },
			["Bazook|nightslayer"] = { 5, 2, 29, 1349 },
			["Ðade|nightslayer"] = { 4, 3, 10, 1221 },
			["Truccz|nightslayer"] = { 5, 2, 29, 1348 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 1401 },
			["Béon|nightslayer"] = { 2, 4, -14, 1401 },
			["Henra|nightslayer"] = { 1, 4, -70, 1060 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 1060 },
			["Fannypacker|nightslayer"] = { 2, 2, -31, 105 },
			["Tycat|nightslayer"] = { 2, 2, -31, 105 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 1271 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 1209 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 1240 },
			["Shibax|nightslayer"] = { 0, 3, -40, 1240 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 1255 },
			["Zvn|dreamscythe"] = { 2, 0, 35, 100 },
			["Domenek|nightslayer"] = { 0, 1, -15, 1420 },
			["Xczv|dreamscythe"] = { 1, 0, 5, 160 },
		},
	},
}

