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
	built = 1795179559,
	builtText = "2026-11-20 07:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 645 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 877 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 875 },
			["Forksache|spineshatter"] = { 12, 11, -73, 911 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 1365 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 825 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 832 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 921 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 942 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 753 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 1001 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 1003 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 887 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 886 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 825 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 872 },
			["Mblol|spineshatter"] = { 6, 1, 32, 825 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 825 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 990 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 990 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 898 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 645 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 762 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 825 },
			["Karoups|spineshatter"] = { 1, 2, -6, 917 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 896 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 1185 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 825 },
		},
	},
}

