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
	built = 1794844714,
	builtText = "2026-11-16 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 17, 7, -31, 546 },
			["Gwedysseus|nightslayer"] = { 16, 6, -27, 547 },
			["Bazook|nightslayer"] = { 7, 1, 48, 706 },
			["Truccz|nightslayer"] = { 7, 1, 48, 705 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 552 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 663 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 663 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 581 },
			["Ryanin|dreamscythe"] = { 1, 1, -1, 628 },
			["Shigekazu|nightslayer"] = { 2, 0, 11, 688 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 695 },
			["Wílleh|nightslayer"] = { 2, 0, 11, 688 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 538 },
			["Leien|nightslayer"] = { 1, 0, 12, 538 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 546 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 547 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 1009 },
			["Bazook|nightslayer"] = { 9, 1, 76, 706 },
			["Truccz|nightslayer"] = { 9, 1, 76, 705 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 936 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 552 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 793 },
			["Béon|nightslayer"] = { 4, 2, 4, 793 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 663 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 663 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 628 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 581 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 757 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 756 },
			["Levimis|nightslayer"] = { 1, 2, -26, 941 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 688 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 688 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 838 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 695 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 538 },
			["Leien|nightslayer"] = { 1, 0, 12, 538 },
		},
	},
}

