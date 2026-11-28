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

ns.ACTIVITY_BY_REGION["tbc-eu"] = {
	built = 1795874359,
	builtText = "2026-11-28 08:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 6, 3, 15, 705 },
			["Matteex|spineshatter"] = { 4, 1, 30, 705 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 33, 21, 130, 705 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 854 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 849 },
			["Quernx|spineshatter"] = { 16, 2, 52, 938 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 937 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 821 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 1011 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 1012 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 938 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 885 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 1114 },
			["Gushers|spineshatter"] = { 4, 2, 7, 815 },
			["Desm|spineshatter"] = { 5, 0, 27, 1065 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 1065 },
			["Matteex|spineshatter"] = { 4, 1, 30, 705 },
			["Mblol|spineshatter"] = { 3, 0, 8, 1065 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 1180 },
			["Miracles|spineshatter"] = { 1, 1, -5, 1151 },
			["Gfal|spineshatter"] = { 0, 1, -18, 1140 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 862 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 907 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 885 },
		},
	},
}

