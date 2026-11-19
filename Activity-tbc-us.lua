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
	built = 1795089512,
	builtText = "2026-11-19 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 1, 0, 6, 340 },
			["Ryanin|dreamscythe"] = { 1, 0, 5, 340 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Kiyt|dreamscythe"] = { 8, 2, 21, 481 },
			["Xczv|dreamscythe"] = { 8, 2, 8, 468 },
			["Ryanin|dreamscythe"] = { 6, 2, 9, 340 },
			["Zvn|dreamscythe"] = { 5, 2, 20, 423 },
			["Bazooko|nightslayer"] = { 1, 3, -17, 418 },
			["Béon|nightslayer"] = { 1, 3, -20, 423 },
			["Hybrox|nightslayer"] = { 1, 1, -2, 366 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 340 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Kiyt|dreamscythe"] = { 8, 2, 21, 481 },
			["Xczv|dreamscythe"] = { 8, 2, 8, 468 },
			["Ryanin|dreamscythe"] = { 6, 2, 9, 340 },
			["Zvn|dreamscythe"] = { 5, 2, 20, 423 },
			["Bazooko|nightslayer"] = { 1, 3, -17, 418 },
			["Béon|nightslayer"] = { 1, 3, -20, 423 },
			["Domenek|nightslayer"] = { 2, 1, 0, 1132 },
			["Druidalina|nightslayer"] = { 2, 1, 0, 1132 },
			["Hybrox|nightslayer"] = { 1, 1, -2, 366 },
			["Morepower|nightslayer"] = { 2, 0, 5, 1102 },
			["Yodead|nightslayer"] = { 2, 0, 6, 1103 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 340 },
		},
	},
}

