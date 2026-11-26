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
	built = 1795669112,
	builtText = "2026-11-25 11:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Willinek|nightslayer"] = { 3, 2, -12, 38 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 10, 0, 40, 119 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 119 },
			["Willinek|nightslayer"] = { 3, 2, -12, 38 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 10, 0, 40, 119 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 119 },
			["Willinek|nightslayer"] = { 3, 2, -12, 38 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Domenek|nightslayer"] = { 10, 0, 40, 119 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 119 },
			["Willinek|nightslayer"] = { 3, 2, -12, 38 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Morepower|nightslayer"] = { 9, 5, 60, 1412 },
			["Yodead|nightslayer"] = { 9, 5, 57, 1412 },
			["Domenek|nightslayer"] = { 10, 0, 40, 119 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 119 },
			["Myo|nightslayer"] = { 6, 4, 14, 1361 },
			["Tusamak|nightslayer"] = { 6, 4, 14, 1361 },
			["Palapapa|nightslayer"] = { 2, 4, -50, 1407 },
			["Rjp|nightslayer"] = { 2, 4, -44, 1408 },
			["Willinek|nightslayer"] = { 3, 2, -12, 38 },
		},
	},
}

