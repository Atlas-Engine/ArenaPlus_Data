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
	built = 1795888759,
	builtText = "2026-11-28 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Invinciblexx|spineshatter"] = { 4, 2, -23, 45 },
			["Bonzilla|spineshatter"] = { 0, 1, -6, 45 },
			["Desecrætion|spineshatter"] = { 0, 1, -6, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 3, 4, 8, 102 },
			["Notagainqt|spineshatter"] = { 3, 4, 8, 72 },
			["Ilovejade|spineshatter"] = { 4, 2, -23, 94 },
			["Invinciblexx|spineshatter"] = { 4, 2, -23, 45 },
			["Bonzilla|spineshatter"] = { 0, 1, -6, 45 },
			["Desecrætion|spineshatter"] = { 0, 1, -6, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 3, 4, 8, 102 },
			["Notagainqt|spineshatter"] = { 3, 4, 8, 72 },
			["Ilovejade|spineshatter"] = { 4, 2, -23, 94 },
			["Invinciblexx|spineshatter"] = { 4, 2, -23, 45 },
			["Bonzilla|spineshatter"] = { 0, 1, -6, 45 },
			["Desecrætion|spineshatter"] = { 0, 1, -6, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Mblol|spineshatter"] = { 3, 4, 8, 102 },
			["Notagainqt|spineshatter"] = { 3, 4, 8, 72 },
			["Ilovejade|spineshatter"] = { 4, 2, -23, 94 },
			["Invinciblexx|spineshatter"] = { 4, 2, -23, 45 },
			["Bonzilla|spineshatter"] = { 0, 1, -6, 45 },
			["Desecrætion|spineshatter"] = { 0, 1, -6, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 33, 21, 130, 945 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 1094 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 1089 },
			["Quernx|spineshatter"] = { 16, 2, 52, 1178 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 1177 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 1061 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 1251 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 1252 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 1178 },
			["Mblol|spineshatter"] = { 6, 4, 16, 102 },
			["Notagainqt|spineshatter"] = { 6, 4, 16, 72 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 1125 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 1354 },
			["Ilovejade|spineshatter"] = { 5, 2, -22, 94 },
			["Invinciblexx|spineshatter"] = { 5, 2, -22, 45 },
			["Gushers|spineshatter"] = { 4, 2, 7, 1055 },
			["Desm|spineshatter"] = { 5, 0, 27, 1305 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 1305 },
			["Matteex|spineshatter"] = { 4, 1, 30, 945 },
			["Miracles|spineshatter"] = { 1, 1, -5, 1391 },
			["Bonzilla|spineshatter"] = { 0, 1, -6, 45 },
			["Desecrætion|spineshatter"] = { 0, 1, -6, 45 },
			["Gfal|spineshatter"] = { 0, 1, -18, 1380 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 1102 },
		},
	},
}

