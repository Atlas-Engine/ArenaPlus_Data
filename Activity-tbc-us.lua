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
	built = 1794812316,
	builtText = "2026-11-16 01:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 7, 1, -1, 6 },
			["Gwedysseus|nightslayer"] = { 7, 1, 0, 7 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 12 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 41 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 17, 7, -31, 6 },
			["Gwedysseus|nightslayer"] = { 16, 6, -27, 7 },
			["Bazook|nightslayer"] = { 7, 1, 48, 166 },
			["Truccz|nightslayer"] = { 7, 1, 48, 165 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 12 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 123 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 123 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 41 },
			["Ryanin|dreamscythe"] = { 1, 1, -1, 89 },
			["Shigekazu|nightslayer"] = { 2, 0, 11, 148 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 155 },
			["Wílleh|nightslayer"] = { 2, 0, 11, 148 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 6 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 7 },
			["Bazook|nightslayer"] = { 9, 1, 76, 166 },
			["Truccz|nightslayer"] = { 9, 1, 76, 165 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 12 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 253 },
			["Béon|nightslayer"] = { 4, 2, 4, 253 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 123 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 123 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 89 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 41 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 217 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 216 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 148 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 148 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 298 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 155 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 6 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 7 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 469 },
			["Bazook|nightslayer"] = { 9, 1, 76, 166 },
			["Truccz|nightslayer"] = { 9, 1, 76, 165 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 396 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 12 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 253 },
			["Béon|nightslayer"] = { 4, 2, 4, 253 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 123 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 123 },
			["Ryanin|dreamscythe"] = { 3, 2, -11, 89 },
			["Gzlol|dreamscythe"] = { 1, 3, -28, 41 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 217 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 216 },
			["Levimis|nightslayer"] = { 1, 2, -26, 401 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 148 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 148 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 298 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 155 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gaekpoong|nightslayer"] = { 23, 9, -49, 6 },
			["Gwedysseus|nightslayer"] = { 22, 8, -43, 7 },
			["Lekiz|dreamscythe"] = { 11, 1, 30, 469 },
			["Gzlol|dreamscythe"] = { 1, 10, -66, 41 },
			["Bazook|nightslayer"] = { 9, 1, 76, 166 },
			["Ryanin|dreamscythe"] = { 3, 7, -49, 89 },
			["Truccz|nightslayer"] = { 9, 1, 76, 165 },
			["Grimmajoow|nightslayer"] = { 7, 1, 29, 396 },
			["Faeriejane|nightslayer"] = { 1, 6, -31, 12 },
			["Bazooko|nightslayer"] = { 4, 2, 5, 253 },
			["Béon|nightslayer"] = { 4, 2, 4, 253 },
			["Morepower|nightslayer"] = { 5, 1, 9, 1430 },
			["Yodead|nightslayer"] = { 5, 1, 14, 1425 },
			["Getpopped|dreamscythe"] = { 2, 3, -8, 123 },
			["Pallypwr|dreamscythe"] = { 2, 3, -16, 123 },
			["Bohagons|nightslayer"] = { 1, 2, -20, 217 },
			["Chugzila|nightslayer"] = { 1, 2, -20, 216 },
			["Levimis|nightslayer"] = { 1, 2, -26, 401 },
			["Shigekazu|nightslayer"] = { 3, 0, 18, 148 },
			["Wílleh|nightslayer"] = { 3, 0, 18, 148 },
			["Cogitatos|nightslayer"] = { 2, 0, 0, 1301 },
			["Neytïrï|dreamscythe"] = { 2, 0, 8, 298 },
			["Reverencèx|nightslayer"] = { 2, 0, 0, 1301 },
			["Sunnyslow|nightslayer"] = { 1, 1, -4, 155 },
		},
	},
}

