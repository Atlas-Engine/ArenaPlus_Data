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
	built = 1795154313,
	builtText = "2026-11-20 12:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 4, 0, 28, 31 },
			["Floridaboi|nightslayer"] = { 0, 1, 0, 33 },
			["Rjp|nightslayer"] = { 1, 0, 5, 31 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 31 },
			["Rjp|nightslayer"] = { 10, 2, 23, 31 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 113 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 170 },
			["Bazook|nightslayer"] = { 5, 2, 29, 89 },
			["Truccz|nightslayer"] = { 5, 2, 29, 88 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 141 },
			["Béon|nightslayer"] = { 2, 4, -14, 141 },
			["Domenek|nightslayer"] = { 0, 1, -15, 160 },
			["Floridaboi|nightslayer"] = { 0, 1, 0, 33 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 31 },
			["Rjp|nightslayer"] = { 10, 2, 23, 31 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 113 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 170 },
			["Bazook|nightslayer"] = { 5, 2, 29, 89 },
			["Truccz|nightslayer"] = { 5, 2, 29, 88 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 141 },
			["Béon|nightslayer"] = { 2, 4, -14, 141 },
			["Domenek|nightslayer"] = { 4, 2, 4, 160 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 191 },
			["Floridaboi|nightslayer"] = { 0, 1, 0, 33 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 31 },
			["Rjp|nightslayer"] = { 10, 2, 23, 31 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 113 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 170 },
			["Bazook|nightslayer"] = { 5, 2, 29, 89 },
			["Truccz|nightslayer"] = { 5, 2, 29, 88 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 141 },
			["Béon|nightslayer"] = { 2, 4, -14, 141 },
			["Domenek|nightslayer"] = { 4, 2, 4, 160 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 191 },
			["Floridaboi|nightslayer"] = { 0, 1, 0, 33 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Palapapa|nightslayer"] = { 10, 2, 13, 31 },
			["Rjp|nightslayer"] = { 10, 2, 23, 31 },
			["Bonecrank|dreamscythe"] = { 6, 5, 21, 113 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 170 },
			["Bazook|nightslayer"] = { 5, 2, 29, 89 },
			["Truccz|nightslayer"] = { 5, 2, 29, 88 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 141 },
			["Béon|nightslayer"] = { 2, 4, -14, 141 },
			["Domenek|nightslayer"] = { 4, 2, 4, 160 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 191 },
			["Floridaboi|nightslayer"] = { 0, 1, 0, 33 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 1420 },
			["Ryanin|dreamscythe"] = { 1, 0, 5, 1420 },
		},
	},
}

