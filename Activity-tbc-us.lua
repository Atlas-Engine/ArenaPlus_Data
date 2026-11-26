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
	built = 1795708713,
	builtText = "2026-11-26 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Clothfaté|nightslayer"] = { 3, 1, 15, 290 },
			["Kasupi|nightslayer"] = { 3, 1, 4, 284 },
			["Gzlol|dreamscythe"] = { 1, 2, -3, 221 },
			["Ryanin|dreamscythe"] = { 1, 1, -5, 319 },
			["Möxie|dreamscythe"] = { 0, 1, -6, 330 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 10, 5, 4, 330 },
			["Couchman|dreamscythe"] = { 10, 4, 15, 401 },
			["Gzlol|dreamscythe"] = { 4, 2, 20, 221 },
			["Ryanin|dreamscythe"] = { 4, 1, 7, 319 },
			["Willinek|nightslayer"] = { 3, 2, -12, 698 },
			["Clothfaté|nightslayer"] = { 3, 1, 15, 290 },
			["Kasupi|nightslayer"] = { 3, 1, 4, 284 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Möxie|dreamscythe"] = { 10, 5, 4, 330 },
			["Couchman|dreamscythe"] = { 10, 4, 15, 401 },
			["Domenek|nightslayer"] = { 10, 0, 40, 779 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 779 },
			["Gzlol|dreamscythe"] = { 4, 2, 20, 221 },
			["Ryanin|dreamscythe"] = { 4, 1, 7, 319 },
			["Willinek|nightslayer"] = { 3, 2, -12, 698 },
			["Clothfaté|nightslayer"] = { 3, 1, 15, 290 },
			["Kasupi|nightslayer"] = { 3, 1, 4, 284 },
		},
	},
}

