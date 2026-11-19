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
	built = 1795103914,
	builtText = "2026-11-19 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 6, 2, 9, 580 },
			["Zvn|dreamscythe"] = { 5, 2, 20, 663 },
			["Xczv|dreamscythe"] = { 3, 2, -2, 708 },
			["Bazooko|nightslayer"] = { 1, 3, -17, 658 },
			["Béon|nightslayer"] = { 1, 3, -20, 663 },
			["Hybrox|nightslayer"] = { 1, 1, -2, 606 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 580 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kiyt|dreamscythe"] = { 8, 2, 21, 721 },
			["Xczv|dreamscythe"] = { 8, 2, 8, 708 },
			["Ryanin|dreamscythe"] = { 6, 2, 9, 580 },
			["Zvn|dreamscythe"] = { 5, 2, 20, 663 },
			["Bazooko|nightslayer"] = { 1, 3, -17, 658 },
			["Béon|nightslayer"] = { 1, 3, -20, 663 },
			["Domenek|nightslayer"] = { 2, 1, 0, 1372 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 1372 },
			["Hybrox|nightslayer"] = { 1, 1, -2, 606 },
			["Morepower|nightslayer"] = { 2, 0, 5, 1342 },
			["Yodead|nightslayer"] = { 2, 0, 6, 1343 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 580 },
		},
	},
}

