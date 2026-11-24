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
	built = 1795539515,
	builtText = "2026-11-24 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Couchman|dreamscythe"] = { 19, 15, 59, 460 },
			["Ryanin|dreamscythe"] = { 21, 10, 43, 470 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 460 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 460 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 617 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 560 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 460 },
			["Jackular|nightslayer"] = { 3, 7, -42, 587 },
			["Probear|nightslayer"] = { 6, 4, 44, 491 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 640 },
			["Xczv|dreamscythe"] = { 3, 6, -43, 680 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 690 },
			["Rjp|nightslayer"] = { 5, 1, 8, 691 },
			["Largefish|nightslayer"] = { 1, 2, 18, 640 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 631 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 492 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 488 },
			["Probear|nightslayer"] = { 5, 0, 5, 491 },
			["Showhan|nightslayer"] = { 5, 0, 0, 486 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ryanin|dreamscythe"] = { 29, 12, 52, 470 },
			["Couchman|dreamscythe"] = { 19, 15, 59, 460 },
			["Restokind|nightslayer"] = { 12, 10, 20, 733 },
			["Xczv|dreamscythe"] = { 11, 7, -21, 680 },
			["Gzlol|dreamscythe"] = { 9, 8, 29, 460 },
			["Notwzbx|dreamscythe"] = { 10, 6, 41, 460 },
			["Neytïrï|dreamscythe"] = { 4, 9, -54, 617 },
			["Ariiana|nightslayer"] = { 10, 0, 39, 560 },
			["Coneily|nightslayer"] = { 7, 3, 27, 750 },
			["Cresyda|dreamscythe"] = { 5, 5, 86, 722 },
			["Dsquizzle|nightslayer"] = { 3, 7, -90, 460 },
			["Jackular|nightslayer"] = { 3, 7, -42, 587 },
			["Probear|nightslayer"] = { 6, 4, 44, 491 },
			["Swackedx|dreamscythe"] = { 5, 5, -82, 640 },
			["Thundersháft|nightslayer"] = { 7, 3, 17, 750 },
			["Ullaron|nightslayer"] = { 6, 4, 78, 733 },
			["Duranabolol|nightslayer"] = { 5, 4, -58, 820 },
			["Palapapa|nightslayer"] = { 5, 1, -1, 690 },
			["Rjp|nightslayer"] = { 5, 1, 8, 691 },
			["Fannypacker|nightslayer"] = { 4, 0, 0, 860 },
			["Tycat|nightslayer"] = { 4, 0, 0, 874 },
			["Largefish|nightslayer"] = { 1, 2, 18, 640 },
			["Wrasal|nightslayer"] = { 1, 2, 18, 798 },
			["Bananapwn|nightslayer"] = { 1, 1, -4, 820 },
			["Grapesøda|nightslayer"] = { 1, 0, 5, 790 },
			["Mägèbrø|nightslayer"] = { 1, 0, 2, 790 },
		},
		[2] = {
			["Ryanin|dreamscythe"] = { 4, 0, 21, 820 },
		},
		[3] = {
			["Canniez|nightslayer"] = { 10, 0, 43, 631 },
			["Druidtommy|nightslayer"] = { 5, 0, 7, 492 },
			["Nytyny|nightslayer"] = { 5, 0, 11, 488 },
			["Probear|nightslayer"] = { 5, 0, 5, 491 },
			["Showhan|nightslayer"] = { 5, 0, 0, 486 },
			["Duranabolol|nightslayer"] = { 2, 2, -37, 820 },
		},
	},
}

