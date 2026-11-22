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
	built = 1795370314,
	builtText = "2026-11-22 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 21, 9, -18, 658 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 656 },
			["Gzlol|dreamscythe"] = { 9, 11, -19, 520 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 563 },
			["Mopz|nightslayer"] = { 10, 9, 70, 716 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 665 },
			["Rjp|nightslayer"] = { 6, 4, -32, 666 },
			["Morepower|nightslayer"] = { 2, 4, -33, 692 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 520 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 693 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 599 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 700 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 599 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Gzlol|dreamscythe"] = { 19, 19, -44, 520 },
			["Shigekazu|nightslayer"] = { 21, 9, -18, 658 },
			["Wílleh|nightslayer"] = { 21, 9, -19, 656 },
			["Thundersháft|nightslayer"] = { 17, 9, 4, 880 },
			["Möxie|dreamscythe"] = { 13, 10, 53, 740 },
			["Ryanin|dreamscythe"] = { 9, 11, -67, 563 },
			["Lizzygrey|nightslayer"] = { 10, 9, 60, 730 },
			["Mopz|nightslayer"] = { 10, 9, 70, 716 },
			["Xczv|dreamscythe"] = { 12, 4, 43, 880 },
			["Magicb|dreamscythe"] = { 6, 4, 0, 1001 },
			["Neytïrï|dreamscythe"] = { 9, 1, 82, 1001 },
			["Palapapa|nightslayer"] = { 6, 4, -39, 665 },
			["Rjp|nightslayer"] = { 6, 4, -32, 666 },
			["Zvn|dreamscythe"] = { 6, 4, -14, 880 },
			["Morepower|nightslayer"] = { 2, 4, -33, 692 },
			["Notwzbx|dreamscythe"] = { 5, 1, 19, 520 },
			["Pumpz|nightslayer"] = { 2, 4, 2, 693 },
			["Coneily|nightslayer"] = { 0, 4, -41, 880 },
			["Bananapwn|nightslayer"] = { 1, 1, -3, 810 },
			["Druudix|nightslayer"] = { 2, 0, 8, 1130 },
			["Warex|nightslayer"] = { 2, 0, 8, 1130 },
			["Cogitatos|nightslayer"] = { 1, 0, 3, 599 },
			["Duranabolol|nightslayer"] = { 0, 1, -24, 1184 },
			["Lionette|dreamscythe"] = { 0, 1, -6, 700 },
			["Reverencèx|nightslayer"] = { 1, 0, 3, 599 },
		},
	},
}

