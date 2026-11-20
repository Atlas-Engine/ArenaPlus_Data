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
	built = 1795150713,
	builtText = "2026-11-19 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Rjp|nightslayer"] = { 7, 2, 14, 7 },
			["Bazook|nightslayer"] = { 5, 2, 29, 29 },
			["Bonecrank|dreamscythe"] = { 3, 4, -3, 53 },
			["Truccz|nightslayer"] = { 5, 2, 29, 28 },
			["Palapapa|nightslayer"] = { 4, 2, -18, 34 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 53 },
			["Rjp|nightslayer"] = { 9, 2, 18, 7 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 110 },
			["Palapapa|nightslayer"] = { 6, 2, -15, 34 },
			["Bazook|nightslayer"] = { 5, 2, 29, 29 },
			["Truccz|nightslayer"] = { 5, 2, 29, 28 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 81 },
			["Béon|nightslayer"] = { 2, 4, -14, 81 },
			["Domenek|nightslayer"] = { 4, 2, 4, 100 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 131 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 53 },
			["Rjp|nightslayer"] = { 9, 2, 18, 7 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 110 },
			["Palapapa|nightslayer"] = { 6, 2, -15, 34 },
			["Bazook|nightslayer"] = { 5, 2, 29, 29 },
			["Truccz|nightslayer"] = { 5, 2, 29, 28 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 81 },
			["Béon|nightslayer"] = { 2, 4, -14, 81 },
			["Domenek|nightslayer"] = { 4, 2, 4, 100 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 131 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 53 },
			["Rjp|nightslayer"] = { 9, 2, 18, 7 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 110 },
			["Palapapa|nightslayer"] = { 6, 2, -15, 34 },
			["Bazook|nightslayer"] = { 5, 2, 29, 29 },
			["Truccz|nightslayer"] = { 5, 2, 29, 28 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 81 },
			["Béon|nightslayer"] = { 2, 4, -14, 81 },
			["Domenek|nightslayer"] = { 4, 2, 4, 100 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 131 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 53 },
			["Rjp|nightslayer"] = { 9, 2, 18, 7 },
			["Bazooko|nightslayer"] = { 3, 7, -29, 81 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 110 },
			["Palapapa|nightslayer"] = { 6, 2, -15, 34 },
			["Bazook|nightslayer"] = { 5, 2, 29, 29 },
			["Truccz|nightslayer"] = { 5, 2, 29, 28 },
			["Béon|nightslayer"] = { 2, 4, -14, 81 },
			["Domenek|nightslayer"] = { 4, 2, 4, 100 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 131 },
			["Hybrox|nightslayer"] = { 1, 1, -2, 1386 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 1360 },
			["Ryanin|dreamscythe"] = { 1, 0, 5, 1360 },
		},
	},
}

