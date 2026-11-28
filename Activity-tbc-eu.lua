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
	built = 1795834758,
	builtText = "2026-11-27 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 6, 3, 15, 45 },
			["Matteex|spineshatter"] = { 4, 1, 30, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 6, 3, -5, 161 },
			["Thadoraa|spineshatter"] = { 6, 3, 15, 45 },
			["Gushers|spineshatter"] = { 4, 2, 7, 155 },
			["Matteex|spineshatter"] = { 4, 1, 30, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 14, 7, 46, 45 },
			["Quernx|spineshatter"] = { 16, 2, 52, 278 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 277 },
			["Ellilol|thunderstrike"] = { 9, 7, -51, 194 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 161 },
			["Shadøwsfall|thunderstrike"] = { 9, 7, -51, 189 },
			["Ggnextdisc|spineshatter"] = { 5, 6, -22, 351 },
			["Milevabog|spineshatter"] = { 5, 6, 0, 352 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 278 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 225 },
			["Gushers|spineshatter"] = { 4, 2, 7, 155 },
			["Matteex|spineshatter"] = { 4, 1, 30, 45 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 202 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 247 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 225 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 33, 21, 130, 45 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 194 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 189 },
			["Quernx|spineshatter"] = { 16, 2, 52, 278 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 277 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 161 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 351 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 352 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 278 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 225 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 454 },
			["Gushers|spineshatter"] = { 4, 2, 7, 155 },
			["Desm|spineshatter"] = { 5, 0, 27, 405 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 405 },
			["Matteex|spineshatter"] = { 4, 1, 30, 45 },
			["Mblol|spineshatter"] = { 3, 0, 8, 405 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 520 },
			["Miracles|spineshatter"] = { 1, 1, -5, 491 },
			["Gfal|spineshatter"] = { 0, 1, -18, 480 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 202 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 247 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 225 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 33, 21, 130, 45 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 194 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 189 },
			["Quernx|spineshatter"] = { 16, 2, 52, 278 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 277 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 161 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 351 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 352 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 278 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 225 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 454 },
			["Gushers|spineshatter"] = { 4, 2, 7, 155 },
			["Desm|spineshatter"] = { 5, 0, 27, 405 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 405 },
			["Matteex|spineshatter"] = { 4, 1, 30, 45 },
			["Mblol|spineshatter"] = { 3, 0, 8, 405 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 520 },
			["Miracles|spineshatter"] = { 1, 1, -5, 491 },
			["Gfal|spineshatter"] = { 0, 1, -18, 480 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 202 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 247 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 225 },
		},
	},
}

