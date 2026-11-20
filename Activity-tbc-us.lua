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
	built = 1795175912,
	builtText = "2026-11-20 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 7, 2, 59, 160 },
			["Henra|nightslayer"] = { 1, 4, -70, 160 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 160 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 5, 45, 160 },
			["Ryanin|dreamscythe"] = { 12, 5, 25, 197 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 340 },
			["Ðade|nightslayer"] = { 4, 3, 10, 321 },
			["Henra|nightslayer"] = { 1, 4, -70, 160 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 160 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 309 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 340 },
			["Shibax|nightslayer"] = { 0, 3, -40, 340 },
			["Floridaboi|nightslayer"] = { 0, 1, -18, 355 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 5, 45, 160 },
			["Ryanin|dreamscythe"] = { 12, 5, 25, 197 },
			["Palapapa|nightslayer"] = { 10, 2, 13, 391 },
			["Rjp|nightslayer"] = { 10, 2, 23, 391 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 473 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 530 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 340 },
			["Bazook|nightslayer"] = { 5, 2, 29, 449 },
			["Ðade|nightslayer"] = { 4, 3, 10, 321 },
			["Truccz|nightslayer"] = { 5, 2, 29, 448 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 501 },
			["Béon|nightslayer"] = { 2, 4, -14, 501 },
			["Domenek|nightslayer"] = { 4, 2, 4, 520 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 551 },
			["Henra|nightslayer"] = { 1, 4, -70, 160 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 160 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 371 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 309 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 340 },
			["Shibax|nightslayer"] = { 0, 3, -40, 340 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 355 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 5, 45, 160 },
			["Ryanin|dreamscythe"] = { 12, 5, 25, 197 },
			["Palapapa|nightslayer"] = { 10, 2, 13, 391 },
			["Rjp|nightslayer"] = { 10, 2, 23, 391 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 473 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 530 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 340 },
			["Bazook|nightslayer"] = { 5, 2, 29, 449 },
			["Ðade|nightslayer"] = { 4, 3, 10, 321 },
			["Truccz|nightslayer"] = { 5, 2, 29, 448 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 501 },
			["Béon|nightslayer"] = { 2, 4, -14, 501 },
			["Domenek|nightslayer"] = { 4, 2, 4, 520 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 551 },
			["Henra|nightslayer"] = { 1, 4, -70, 160 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 160 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 371 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 309 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 340 },
			["Shibax|nightslayer"] = { 0, 3, -40, 340 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 355 },
		},
	},
}

