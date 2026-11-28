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
	built = 1795823979,
	builtText = "2026-11-27 06:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Sheezlong|spineshatter"] = { 3, 7, -35, 46 },
			["Izabelyrg|spineshatter"] = { 6, 1, 30, 46 },
			["Thadoraa|spineshatter"] = { 6, 1, 48, 46 },
			["Ellilol|thunderstrike"] = { 4, 2, -16, 15 },
			["Shadøwsfall|thunderstrike"] = { 4, 2, -16, 9 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 22 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 46 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Quernx|spineshatter"] = { 16, 2, 52, 98 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 97 },
			["Ellilol|thunderstrike"] = { 9, 7, -51, 15 },
			["Shadøwsfall|thunderstrike"] = { 9, 7, -51, 9 },
			["Thadoraa|spineshatter"] = { 8, 4, 31, 46 },
			["Ggnextdisc|spineshatter"] = { 5, 6, -22, 172 },
			["Milevabog|spineshatter"] = { 5, 6, 0, 173 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 99 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 46 },
			["Izabelyrg|spineshatter"] = { 6, 1, 30, 46 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 22 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 68 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 46 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 27, 18, 115, 46 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 15 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 9 },
			["Quernx|spineshatter"] = { 16, 2, 52, 98 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 97 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 172 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 173 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 99 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 46 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 274 },
			["Izabelyrg|spineshatter"] = { 6, 1, 30, 46 },
			["Desm|spineshatter"] = { 5, 0, 27, 226 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 226 },
			["Mblol|spineshatter"] = { 3, 0, 8, 226 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 340 },
			["Miracles|spineshatter"] = { 1, 1, -5, 311 },
			["Gfal|spineshatter"] = { 0, 1, -18, 300 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 22 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 68 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 46 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 27, 18, 115, 46 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 15 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 9 },
			["Quernx|spineshatter"] = { 16, 2, 52, 98 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 97 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 172 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 173 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 99 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 46 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 274 },
			["Izabelyrg|spineshatter"] = { 6, 1, 30, 46 },
			["Desm|spineshatter"] = { 5, 0, 27, 226 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 226 },
			["Mblol|spineshatter"] = { 3, 0, 8, 226 },
			["Notagainqt|spineshatter"] = { 3, 0, 8, 340 },
			["Miracles|spineshatter"] = { 1, 1, -5, 311 },
			["Gfal|spineshatter"] = { 0, 1, -18, 300 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 22 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 68 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 46 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Thadoraa|spineshatter"] = { 27, 18, 115, 46 },
			["Ellilol|thunderstrike"] = { 15, 14, -102, 15 },
			["Shadøwsfall|thunderstrike"] = { 15, 14, -102, 9 },
			["Quernx|spineshatter"] = { 16, 2, 52, 98 },
			["Stupidänimal|spineshatter"] = { 16, 2, 51, 97 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -14, 172 },
			["Milevabog|spineshatter"] = { 6, 6, 10, 173 },
			["Alisanne|spineshatter"] = { 3, 7, -35, 99 },
			["Hurtie|spineshatter"] = { 4, 6, -9, 1435 },
			["Mblol|spineshatter"] = { 8, 2, 13, 226 },
			["Notagainqt|spineshatter"] = { 8, 2, 13, 340 },
			["Sheezlong|spineshatter"] = { 3, 7, -35, 46 },
			["Zanven|spineshatter"] = { 4, 6, -16, 1432 },
			["Bimbolo|spineshatter"] = { 5, 4, -18, 274 },
			["Izabelyrg|spineshatter"] = { 6, 1, 30, 46 },
			["Desm|spineshatter"] = { 5, 0, 27, 226 },
			["Mashylya|spineshatter"] = { 5, 0, 43, 226 },
			["Miracles|spineshatter"] = { 1, 1, -5, 311 },
			["Gfal|spineshatter"] = { 0, 1, -18, 300 },
			["Iggysmalls|spineshatter"] = { 0, 1, -18, 22 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 68 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 46 },
		},
	},
}

