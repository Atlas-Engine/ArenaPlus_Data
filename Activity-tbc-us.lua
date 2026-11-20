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
	built = 1795147114,
	builtText = "2026-11-19 10:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 50 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 21 },
			["Béon|nightslayer"] = { 2, 4, -14, 21 },
			["Bonecrank|dreamscythe"] = { 3, 1, 24, 40 },
			["Palapapa|nightslayer"] = { 2, 0, 3, 40 },
			["Rjp|nightslayer"] = { 2, 0, 4, 40 },
			["Domenek|nightslayer"] = { 0, 1, -15, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 50 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 21 },
			["Béon|nightslayer"] = { 2, 4, -14, 21 },
			["Domenek|nightslayer"] = { 4, 2, 4, 40 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 71 },
			["Bonecrank|dreamscythe"] = { 3, 1, 24, 40 },
			["Palapapa|nightslayer"] = { 2, 0, 3, 40 },
			["Rjp|nightslayer"] = { 2, 0, 4, 40 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 50 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 21 },
			["Béon|nightslayer"] = { 2, 4, -14, 21 },
			["Domenek|nightslayer"] = { 4, 2, 4, 40 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 71 },
			["Bonecrank|dreamscythe"] = { 3, 1, 24, 40 },
			["Palapapa|nightslayer"] = { 2, 0, 3, 40 },
			["Rjp|nightslayer"] = { 2, 0, 4, 40 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 50 },
			["Bazooko|nightslayer"] = { 2, 4, -12, 21 },
			["Béon|nightslayer"] = { 2, 4, -14, 21 },
			["Domenek|nightslayer"] = { 4, 2, 4, 40 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 71 },
			["Bonecrank|dreamscythe"] = { 3, 1, 24, 40 },
			["Palapapa|nightslayer"] = { 2, 0, 3, 40 },
			["Rjp|nightslayer"] = { 2, 0, 4, 40 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bazooko|nightslayer"] = { 3, 7, -29, 21 },
			["Béon|nightslayer"] = { 3, 7, -34, 21 },
			["Neytïrï|dreamscythe"] = { 4, 5, -53, 50 },
			["Ryanin|dreamscythe"] = { 6, 2, 9, 1300 },
			["Zvn|dreamscythe"] = { 5, 2, 20, 1383 },
			["Domenek|nightslayer"] = { 4, 2, 4, 40 },
			["Druidalina|nightslayer"] = { 4, 2, 4, 71 },
			["Xczv|dreamscythe"] = { 3, 2, -2, 1428 },
			["Bonecrank|dreamscythe"] = { 3, 1, 24, 40 },
			["Hybrox|nightslayer"] = { 1, 1, -2, 1326 },
			["Palapapa|nightslayer"] = { 2, 0, 3, 40 },
			["Rjp|nightslayer"] = { 2, 0, 4, 40 },
			["Gzlol|dreamscythe"] = { 1, 0, 6, 1300 },
		},
	},
}

