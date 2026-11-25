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
	built = 1795622313,
	builtText = "2026-11-25 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 632 },
			["Yodead|nightslayer"] = { 9, 5, 57, 632 },
			["Myo|nightslayer"] = { 6, 4, 14, 581 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 581 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 627 },
			["Rjp|nightslayer"] = { 2, 4, -44, 628 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 717 },
			["Mopz|nightslayer"] = { 1, 1, -5, 715 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 632 },
			["Yodead|nightslayer"] = { 9, 5, 57, 632 },
			["Myo|nightslayer"] = { 6, 4, 14, 581 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 581 },
			["Fannypacker|nightslayer"] = { 8, 0, 0, 765 },
			["Tycat|nightslayer"] = { 8, 0, 0, 779 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 627 },
			["Rjp|nightslayer"] = { 2, 4, -44, 628 },
			["Lizzygrey|nightslayer"] = { 1, 4, -28, 717 },
			["Mopz|nightslayer"] = { 1, 3, -20, 715 },
			["Jamzki|nightslayer"] = { 1, 1, -19, 991 },
			["Wopz|nightslayer"] = { 0, 1, 0, 729 },
		},
	},
}

