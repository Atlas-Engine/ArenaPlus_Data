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
	built = 1795157912,
	builtText = "2026-11-20 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Bananapwn|nightslayer"] = { 3, 5, -40, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 40 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 40 },
			["Ðade|nightslayer"] = { 4, 3, 10, 21 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 9 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 40 },
			["Shibax|nightslayer"] = { 0, 3, -40, 40 },
			["Floridaboi|nightslayer"] = { 0, 1, -18, 55 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 8, 2, 10, 91 },
			["Rjp|nightslayer"] = { 8, 2, 19, 91 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 40 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 40 },
			["Bazook|nightslayer"] = { 5, 2, 29, 149 },
			["Bonecrank|dreamscythe"] = { 3, 4, -3, 173 },
			["Ðade|nightslayer"] = { 4, 3, 10, 21 },
			["Truccz|nightslayer"] = { 5, 2, 29, 148 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 71 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 9 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 40 },
			["Shibax|nightslayer"] = { 0, 3, -40, 40 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 55 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 91 },
			["Rjp|nightslayer"] = { 10, 2, 23, 91 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 173 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 230 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 40 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 40 },
			["Bazook|nightslayer"] = { 5, 2, 29, 149 },
			["Ðade|nightslayer"] = { 4, 3, 10, 21 },
			["Truccz|nightslayer"] = { 5, 2, 29, 148 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 201 },
			["Béon|nightslayer"] = { 2, 4, -14, 201 },
			["Domenek|nightslayer"] = { 4, 2, 4, 220 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 251 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 71 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 9 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 40 },
			["Shibax|nightslayer"] = { 0, 3, -40, 40 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 55 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 91 },
			["Rjp|nightslayer"] = { 10, 2, 23, 91 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 173 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 230 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 40 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 40 },
			["Bazook|nightslayer"] = { 5, 2, 29, 149 },
			["Ðade|nightslayer"] = { 4, 3, 10, 21 },
			["Truccz|nightslayer"] = { 5, 2, 29, 148 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 201 },
			["Béon|nightslayer"] = { 2, 4, -14, 201 },
			["Domenek|nightslayer"] = { 4, 2, 4, 220 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 251 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 71 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 9 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 40 },
			["Shibax|nightslayer"] = { 0, 3, -40, 40 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 55 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 91 },
			["Rjp|nightslayer"] = { 10, 2, 23, 91 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 173 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 230 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 40 },
			["Gzlol|dreamscythe"] = { 5, 3, -14, 40 },
			["Ryanin|dreamscythe"] = { 5, 3, -24, 40 },
			["Bazook|nightslayer"] = { 5, 2, 29, 149 },
			["Ðade|nightslayer"] = { 4, 3, 10, 21 },
			["Truccz|nightslayer"] = { 5, 2, 29, 148 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 201 },
			["Béon|nightslayer"] = { 2, 4, -14, 201 },
			["Domenek|nightslayer"] = { 4, 2, 4, 220 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 251 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 71 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 9 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 40 },
			["Shibax|nightslayer"] = { 0, 3, -40, 40 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 55 },
		},
	},
}

