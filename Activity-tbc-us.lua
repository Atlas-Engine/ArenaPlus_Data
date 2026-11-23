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
	built = 1795399114,
	builtText = "2026-11-22 08:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 9 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 9 },
			["Willinek|nightslayer"] = { 10, 0, 69, 117 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 87 },
			["Yodead|nightslayer"] = { 0, 1, -20, 87 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 9 },
			["Willinek|nightslayer"] = { 10, 0, 69, 117 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 87 },
			["Yodead|nightslayer"] = { 0, 1, -20, 87 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 9 },
			["Willinek|nightslayer"] = { 10, 0, 69, 117 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 87 },
			["Yodead|nightslayer"] = { 0, 1, -20, 87 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 1138 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 1136 },
			["Gzlol|dreamscythe"] = { 14, 15, -20, 1000 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 1220 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 1043 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 1210 },
			["Mopz|nightslayer"] = { 10, 9, 70, 1196 },
			["Neytïrï|dreamscythe"] = { 11, 1, 81, 9 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 1145 },
			["Rjp|nightslayer"] = { 6, 4, -32, 1146 },
			["Willinek|nightslayer"] = { 10, 0, 69, 117 },
			["Zvn|dreamscythe"] = { 5, 4, -21, 1360 },
			["Xczv|dreamscythe"] = { 6, 1, 48, 1360 },
			["Morepower|nightslayer"] = { 2, 4, -33, 1172 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 1000 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 1173 },
			["Coneily|nightslayer"] = { 0, 4, -41, 1360 },
			["Thundersháft|nightslayer"] = { 0, 4, -49, 1360 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 1290 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 1079 },
			["Gnaw|nightslayer"] = { 0, 1, -20, 87 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 1180 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 1079 },
			["Yodead|nightslayer"] = { 0, 1, -20, 87 },
		},
	},
}

