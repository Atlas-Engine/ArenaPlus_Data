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
	built = 1795190311,
	builtText = "2026-11-20 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 5, 45, 400 },
			["Ryanin|dreamscythe"] = { 12, 5, 25, 437 },
			["Palapapa|nightslayer"] = { 8, 2, 10, 631 },
			["Rjp|nightslayer"] = { 8, 2, 19, 631 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 580 },
			["Bazook|nightslayer"] = { 5, 2, 29, 689 },
			["Bonecrank|dreamscythe"] = { 3, 4, -3, 713 },
			["Ðade|nightslayer"] = { 4, 3, 10, 561 },
			["Truccz|nightslayer"] = { 5, 2, 29, 688 },
			["Henra|nightslayer"] = { 1, 4, -70, 400 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 400 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 611 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 549 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 580 },
			["Shibax|nightslayer"] = { 0, 3, -40, 580 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 595 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 12, 5, 45, 400 },
			["Ryanin|dreamscythe"] = { 12, 5, 25, 437 },
			["Palapapa|nightslayer"] = { 10, 2, 13, 631 },
			["Rjp|nightslayer"] = { 10, 2, 23, 631 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 713 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 769 },
			["Bananapwn|nightslayer"] = { 3, 5, -40, 580 },
			["Bazook|nightslayer"] = { 5, 2, 29, 689 },
			["Ðade|nightslayer"] = { 4, 3, 10, 561 },
			["Truccz|nightslayer"] = { 5, 2, 29, 688 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 741 },
			["Béon|nightslayer"] = { 2, 4, -14, 741 },
			["Domenek|nightslayer"] = { 4, 2, 4, 760 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 791 },
			["Henra|nightslayer"] = { 1, 4, -70, 400 },
			["Onvremalo|nightslayer"] = { 1, 4, -49, 400 },
			["Floridaboy|nightslayer"] = { 3, 0, 33, 611 },
			["Floridachico|nightslayer"] = { 2, 1, 29, 549 },
			["Papapyro|nightslayer"] = { 0, 3, -32, 580 },
			["Shibax|nightslayer"] = { 0, 3, -40, 580 },
			["Floridaboi|nightslayer"] = { 0, 2, -18, 595 },
		},
	},
}

