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
	built = 1795543113,
	builtText = "2026-11-24 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 520 },
			["Ryanin|dreamscythe"] = { 21, 10, 43, 529 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 520 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 520 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 677 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 620 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 520 },
			["Jackular|nightslayer"] = { 3, 7, -42, 647 },
			["Probear|nightslayer"] = { 6, 4, 44, 550 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 700 },
			["Largefish|nightslayer"] = { 1, 2, 18, 700 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 691 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 552 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 548 },
			["Probear|nightslayer"] = { 5, 0, 5, 550 },
			["Showhan|nightslayer"] = { 5, 0, 0, 546 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 529 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 520 },
			["Restokind|nightslayer"] = { 12, 10, 20, 793 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 740 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 520 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 520 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 677 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 620 },
			["Coneily|nightslayer"] = { 7, 3, 27, 810 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 782 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 520 },
			["Jackular|nightslayer"] = { 3, 7, -42, 647 },
			["Probear|nightslayer"] = { 6, 4, 44, 550 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 700 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 810 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 793 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 880 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 750 },
			["Rjp|nightslayer"] = { 5, 1, 8, 751 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 920 },
			["Tycat|nightslayer"] = { 4, 0, 0, 934 },
			["Largefish|nightslayer"] = { 1, 2, 18, 700 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 858 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 880 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 850 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 850 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 880 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 691 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 552 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 548 },
			["Probear|nightslayer"] = { 5, 0, 5, 550 },
			["Showhan|nightslayer"] = { 5, 0, 0, 546 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 880 },
		},
	},
}

