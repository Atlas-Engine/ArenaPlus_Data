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
	built = 1794830314,
	builtText = "2026-11-16 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 7, 1, -1, 306 },
			["Gwedysseus|nightslayer"] = { 7, 1, 0, 307 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 312 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 341 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 298 },
			["Leien|nightslayer"] = { 1, 0, 12, 298 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 306 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 307 },
			["Bazook|nightslayer"] = { 9, 1, 76, 466 },
			["Truccz|nightslayer"] = { 9, 1, 76, 465 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 696 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 312 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 553 },
			["Béon|nightslayer"] = { 4, 2, 4, 553 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 423 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 423 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 388 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 341 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 517 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 516 },
			["Levimis|nightslayer"] = { 1, 2, -26, 701 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 448 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 448 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 598 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 455 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 298 },
			["Leien|nightslayer"] = { 1, 0, 12, 298 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 306 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 307 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 769 },
			["Bazook|nightslayer"] = { 9, 1, 76, 466 },
			["Truccz|nightslayer"] = { 9, 1, 76, 465 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 696 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 312 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 553 },
			["Béon|nightslayer"] = { 4, 2, 4, 553 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 423 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 423 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 388 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 341 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 517 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 516 },
			["Levimis|nightslayer"] = { 1, 2, -26, 701 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 448 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 448 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 598 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 455 },
			["Feldargon|nightslayer"] = { 1, 0, 13, 298 },
			["Leien|nightslayer"] = { 1, 0, 12, 298 },
		},
	},
}

