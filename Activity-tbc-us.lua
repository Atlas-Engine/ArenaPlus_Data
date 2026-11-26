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
	built = 1795687111,
	builtText = "2026-11-26 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 10, 4, 15, 41 },
			["Möxie|dreamscythe"] = { 10, 4, 10, 41 },
			["Gzlol|dreamscythe"] = { 3, 0, 23, 41 },
			["Ryanin|dreamscythe"] = { 3, 0, 12, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 10, 4, 15, 41 },
			["Möxie|dreamscythe"] = { 10, 4, 10, 41 },
			["Gzlol|dreamscythe"] = { 3, 0, 23, 41 },
			["Ryanin|dreamscythe"] = { 3, 0, 12, 41 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 10, 4, 15, 41 },
			["Möxie|dreamscythe"] = { 10, 4, 10, 41 },
			["Willinek|nightslayer"] = { 3, 2, -12, 338 },
			["Gzlol|dreamscythe"] = { 3, 0, 23, 41 },
			["Ryanin|dreamscythe"] = { 3, 0, 12, 41 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 10, 4, 15, 41 },
			["Möxie|dreamscythe"] = { 10, 4, 10, 41 },
			["Domenek|nightslayer"] = { 10, 0, 40, 419 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 419 },
			["Willinek|nightslayer"] = { 3, 2, -12, 338 },
			["Gzlol|dreamscythe"] = { 3, 0, 23, 41 },
			["Ryanin|dreamscythe"] = { 3, 0, 12, 41 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 10, 4, 15, 41 },
			["Möxie|dreamscythe"] = { 10, 4, 10, 41 },
			["Domenek|nightslayer"] = { 10, 0, 40, 419 },
			["Druidalina|nightslayer"] = { 10, 0, 40, 419 },
			["Willinek|nightslayer"] = { 3, 2, -12, 338 },
			["Gzlol|dreamscythe"] = { 3, 0, 23, 41 },
			["Ryanin|dreamscythe"] = { 3, 0, 12, 41 },
		},
	},
}

