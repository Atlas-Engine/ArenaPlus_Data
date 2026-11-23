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
	built = 1795391914,
	builtText = "2026-11-22 06:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 880 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 1018 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 1016 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 1100 },
			["Thundersháft|nightslayer"] = { 14, 9, -10, 1240 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 923 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 1090 },
			["Mopz|nightslayer"] = { 10, 9, 70, 1076 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 1361 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 1361 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 1025 },
			["Rjp|nightslayer"] = { 6, 4, -32, 1026 },
			["Xczv|dreamscythe"] = { 9, 1, 77, 1240 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 1240 },
			["Morepower|nightslayer"] = { 2, 4, -33, 1052 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 880 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 1053 },
			["Coneily|nightslayer"] = { 0, 4, -41, 1240 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 1170 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 959 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 1060 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 959 },
		},
	},
}

