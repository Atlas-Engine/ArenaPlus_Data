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
	built = 1795507114,
	builtText = "2026-11-24 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jackular|nightslayer"] = { 3, 7, -42, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 77 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 100 },
			["Ryanin|dreamscythe"] = { 9, 4, 64, 100 },
			["Jackular|nightslayer"] = { 3, 7, -42, 47 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 100 },
			["Xczv|dreamscythe"] = { 3, 6, -43, 140 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 150 },
			["Probear|nightslayer"] = { 5, 1, 47, 100 },
			["Rjp|nightslayer"] = { 5, 1, 8, 151 },
			["Largefish|nightslayer"] = { 1, 2, 18, 100 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 100 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 91 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 100 },
			["Restokind|nightslayer"] = { 12, 10, 20, 193 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 140 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 77 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 100 },
			["Coneily|nightslayer"] = { 7, 3, 27, 210 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 182 },
			["Jackular|nightslayer"] = { 3, 7, -42, 47 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 100 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 210 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 193 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 280 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 150 },
			["Probear|nightslayer"] = { 5, 1, 47, 100 },
			["Rjp|nightslayer"] = { 5, 1, 8, 151 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 320 },
			["Tycat|nightslayer"] = { 4, 0, 0, 334 },
			["Largefish|nightslayer"] = { 1, 2, 18, 100 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 258 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 280 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 250 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 250 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 280 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 91 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 280 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 100 },
			["Restokind|nightslayer"] = { 12, 10, 20, 193 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 140 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 77 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 100 },
			["Coneily|nightslayer"] = { 7, 3, 27, 210 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 182 },
			["Jackular|nightslayer"] = { 3, 7, -42, 47 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 100 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 210 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 193 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 280 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 150 },
			["Probear|nightslayer"] = { 5, 1, 47, 100 },
			["Rjp|nightslayer"] = { 5, 1, 8, 151 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 320 },
			["Tycat|nightslayer"] = { 4, 0, 0, 334 },
			["Largefish|nightslayer"] = { 1, 2, 18, 100 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 258 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 280 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 250 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 250 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 280 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 91 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 280 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 17, 6, 73, 100 },
			["Restokind|nightslayer"] = { 12, 10, 20, 193 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 140 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 77 },
			["Notwzbx|dreamscythe"] = { 9, 4, 64, 100 },
			["Coneily|nightslayer"] = { 7, 3, 27, 210 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 182 },
			["Jackular|nightslayer"] = { 3, 7, -42, 47 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 100 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 210 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 193 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 280 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 150 },
			["Probear|nightslayer"] = { 5, 1, 47, 100 },
			["Rjp|nightslayer"] = { 5, 1, 8, 151 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 320 },
			["Tycat|nightslayer"] = { 4, 0, 0, 334 },
			["Largefish|nightslayer"] = { 1, 2, 18, 100 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 258 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 280 },
			["Gzlol|dreamscythe"] = { 0, 2, -8, 100 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 250 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 250 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 280 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 91 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 280 },
		},
	},
}

