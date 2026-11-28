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
	built = 1795877962,
	builtText = "2026-11-28 09:59 AM",
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
			["Thadoraa|spineshatter"] = { 33, 21, 130, 765 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 914 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 909 },
			["Quernx|spineshatter"] = { 16, 2, 52, 998 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 997 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 881 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 1071 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 1072 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 998 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 945 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 1174 },
			["Gushers|spineshatter"] = { 4, 2, 7, 875 },
			["Desm|spineshatter"] = { 5, 0, 27, 1125 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 1125 },
			["Matteex|spineshatter"] = { 4, 1, 30, 765 },
			["Mblol|spineshatter"] = { 3, 0, 8, 1125 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 1240 },
			["Miracles|spineshatter"] = { 1, 1, -5, 1211 },
			["Gfal|spineshatter"] = { 0, 1, -18, 1200 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 922 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 968 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 945 },
		},
	},
}

