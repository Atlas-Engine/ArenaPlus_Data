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
	built = 1795161513,
	builtText = "2026-11-20 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bananapwn|nightslayer"] = { 3, 5, -40, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 100 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 100 },
			["Ðade|nightslayer"] = { 4, 3, 10, 81 },
			["Palapapa|nightslayer"] = { 4, 0, 28, 151 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 131 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 69 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 100 },
			["Shibax|nightslayer"] = { 0, 3, -40, 100 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 115 },
			["Rjp|nightslayer"] = { 1, 0, 5, 151 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 151 },
			["Rjp|nightslayer"] = { 10, 2, 23, 151 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 233 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 290 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 100 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 100 },
			["Bazook|nightslayer"] = { 5, 2, 29, 209 },
			["Ðade|nightslayer"] = { 4, 3, 10, 81 },
			["Truccz|nightslayer"] = { 5, 2, 29, 208 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 261 },
			["Béon|nightslayer"] = { 2, 4, -14, 261 },
			["Domenek|nightslayer"] = { 4, 2, 4, 280 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 311 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 131 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 69 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 100 },
			["Shibax|nightslayer"] = { 0, 3, -40, 100 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 115 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 151 },
			["Rjp|nightslayer"] = { 10, 2, 23, 151 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 233 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 290 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 100 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 100 },
			["Bazook|nightslayer"] = { 5, 2, 29, 209 },
			["Ðade|nightslayer"] = { 4, 3, 10, 81 },
			["Truccz|nightslayer"] = { 5, 2, 29, 208 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 261 },
			["Béon|nightslayer"] = { 2, 4, -14, 261 },
			["Domenek|nightslayer"] = { 4, 2, 4, 280 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 311 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 131 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 69 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 100 },
			["Shibax|nightslayer"] = { 0, 3, -40, 100 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 115 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 151 },
			["Rjp|nightslayer"] = { 10, 2, 23, 151 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 233 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 290 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 100 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 100 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 100 },
			["Bazook|nightslayer"] = { 5, 2, 29, 209 },
			["Ðade|nightslayer"] = { 4, 3, 10, 81 },
			["Truccz|nightslayer"] = { 5, 2, 29, 208 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 261 },
			["Béon|nightslayer"] = { 2, 4, -14, 261 },
			["Domenek|nightslayer"] = { 4, 2, 4, 280 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 311 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 131 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 69 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 100 },
			["Shibax|nightslayer"] = { 0, 3, -40, 100 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 115 },
		},
	},
}

