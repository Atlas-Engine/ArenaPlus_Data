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
	built = 1795831159,
	builtText = "2026-11-27 08:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 101 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 165 },
			["Thadoraa|spineshatter"] = { 6, 1, 48, 165 },
			["Ellilol|thunderstrike"] = { 4, 2, -16, 134 },
			["Gushers|spineshatter"] = { 4, 2, 7, 95 },
			["Shadøwsfall|thunderstrike"] = { 4, 2, -16, 129 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 142 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 27, 18, 115, 165 },
			["Shadøwsfall|thunderstrike"] = { 14, 14, -108, 129 },
			["Ellilol|thunderstrike"] = { 10, 9, -81, 134 },
			["Quernx|spineshatter"] = { 16, 2, 52, 218 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 217 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 101 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 291 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 292 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 218 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 165 },
			["Gushers|spineshatter"] = { 4, 2, 7, 95 },
			["Desm|spineshatter"] = { 5, 0, 27, 345 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 345 },
			["Mblol|spineshatter"] = { 3, 0, 8, 345 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 142 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 187 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 27, 18, 115, 165 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 134 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 129 },
			["Quernx|spineshatter"] = { 16, 2, 52, 218 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 217 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 101 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 291 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 292 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 218 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 165 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 394 },
			["Gushers|spineshatter"] = { 4, 2, 7, 95 },
			["Desm|spineshatter"] = { 5, 0, 27, 345 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 345 },
			["Mblol|spineshatter"] = { 3, 0, 8, 345 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 460 },
			["Miracles|spineshatter"] = { 1, 1, -5, 431 },
			["Gfal|spineshatter"] = { 0, 1, -18, 420 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 142 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 187 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 27, 18, 115, 165 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 134 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 129 },
			["Quernx|spineshatter"] = { 16, 2, 52, 218 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 217 },
			["Izabelyrg|spineshatter"] = { 12, 4, 25, 101 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 291 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 292 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 218 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 165 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 394 },
			["Gushers|spineshatter"] = { 4, 2, 7, 95 },
			["Desm|spineshatter"] = { 5, 0, 27, 345 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 345 },
			["Mblol|spineshatter"] = { 3, 0, 8, 345 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 460 },
			["Miracles|spineshatter"] = { 1, 1, -5, 431 },
			["Gfal|spineshatter"] = { 0, 1, -18, 420 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 142 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 187 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 165 },
		},
	},
}

