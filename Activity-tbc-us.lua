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
	built = 1794837517,
	builtText = "2026-11-16 08:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 426 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 427 },
			["Bazook|nightslayer"] = { 9, 1, 76, 586 },
			["Truccz|nightslayer"] = { 9, 1, 76, 585 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 432 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 674 },
			["Béon|nightslayer"] = { 4, 2, 4, 673 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 543 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 543 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 509 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 461 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 637 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 636 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 568 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 568 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 718 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 575 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 418 },
			["Leien|nightslayer"] = { 1, 0, 12, 418 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 426 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 427 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 889 },
			["Bazook|nightslayer"] = { 9, 1, 76, 586 },
			["Truccz|nightslayer"] = { 9, 1, 76, 585 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 816 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 432 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 674 },
			["Béon|nightslayer"] = { 4, 2, 4, 673 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 543 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 543 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 509 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 461 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 637 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 636 },
			["Levimis|nightslayer"] = { 1, 2, -26, 821 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 568 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 568 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 718 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 575 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 418 },
			["Leien|nightslayer"] = { 1, 0, 12, 418 },
		},
	},
}

