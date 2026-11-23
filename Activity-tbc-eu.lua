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
	built = 1795402762,
	builtText = "2026-11-22 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Bagladybetty|spineshatter"] = { 5, 5, 25, 173 },
			["Moscuerta|spineshatter"] = { 6, 1, 37, 166 },
			["Systemhack|spineshatter"] = { 6, 1, 13, 166 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 18, 18, -24, 191 },
			["Farsaroga|spineshatter"] = { 18, 18, -13, 192 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 166 },
			["Nennx|spineshatter"] = { 13, 7, 89, 273 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 166 },
			["Forksache|spineshatter"] = { 11, 7, -19, 273 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 173 },
			["Hurtie|spineshatter"] = { 7, 8, 9, 305 },
			["Zanven|spineshatter"] = { 7, 8, -22, 305 },
			["Brubru|spineshatter"] = { 3, 9, -93, 189 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 190 },
			["Hööch|spineshatter"] = { 10, 0, 27, 225 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 308 },
			["Mblol|spineshatter"] = { 2, 1, -6, 240 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 240 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 277 },
			["Vannah|spineshatter"] = { 1, 0, 5, 277 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 273 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 284 },
			["Nennx|spineshatter"] = { 3, 0, 16, 273 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 191 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 192 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 305 },
			["Zanven|spineshatter"] = { 18, 13, -41, 305 },
			["Nennx|spineshatter"] = { 15, 10, 69, 273 },
			["Forksache|spineshatter"] = { 13, 7, -2, 273 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 166 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 166 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 513 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 173 },
			["Brubru|spineshatter"] = { 3, 9, -93, 189 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 405 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 190 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 405 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 382 },
			["Hööch|spineshatter"] = { 10, 0, 27, 225 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 308 },
			["Mblol|spineshatter"] = { 2, 1, -6, 240 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 240 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 609 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 609 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 405 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 405 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 277 },
			["Vannah|spineshatter"] = { 1, 0, 5, 277 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 273 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 284 },
			["Nennx|spineshatter"] = { 3, 0, 16, 273 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Everlost|spineshatter"] = { 19, 19, -35, 191 },
			["Farsaroga|spineshatter"] = { 19, 19, -22, 192 },
			["Hurtie|spineshatter"] = { 18, 13, 58, 305 },
			["Zanven|spineshatter"] = { 18, 13, -41, 305 },
			["Nennx|spineshatter"] = { 15, 10, 69, 273 },
			["Forksache|spineshatter"] = { 13, 7, -2, 273 },
			["Moscuerta|spineshatter"] = { 15, 5, 112, 166 },
			["Systemhack|spineshatter"] = { 15, 5, 25, 166 },
			["Cinthya|spineshatter"] = { 13, 3, 44, 513 },
			["Bagladybetty|spineshatter"] = { 7, 8, 16, 173 },
			["Brubru|spineshatter"] = { 3, 9, -93, 189 },
			["Ggnextdisc|spineshatter"] = { 6, 6, -19, 405 },
			["Lôlgroundit|spineshatter"] = { 3, 9, -78, 190 },
			["Milevabog|spineshatter"] = { 6, 6, -19, 405 },
			["Hammasvako|thunderstrike"] = { 7, 3, 9, 382 },
			["Hööch|spineshatter"] = { 10, 0, 27, 225 },
			["ßéstcømp|spineshatter"] = { 10, 0, 84, 308 },
			["Aethèl|spineshatter"] = { 6, 0, 34, 807 },
			["Gougerx|spineshatter"] = { 6, 0, 20, 765 },
			["Bimbolo|spineshatter"] = { 3, 2, -13, 729 },
			["Rhythmictwo|spineshatter"] = { 0, 4, -22, 824 },
			["Zlodey|spineshatter"] = { 0, 4, -22, 823 },
			["Mblol|spineshatter"] = { 2, 1, -6, 240 },
			["Notagainqt|spineshatter"] = { 2, 1, -5, 240 },
			["Foúr|spineshatter"] = { 0, 2, -21, 765 },
			["Keepdistance|spineshatter"] = { 1, 1, -17, 609 },
			["Radamsa|spineshatter"] = { 1, 1, -17, 609 },
			["Egirlshealer|spineshatter"] = { 1, 0, 5, 405 },
			["Gangstuh|spineshatter"] = { 1, 0, 5, 405 },
			["Requiemit|spineshatter"] = { 1, 0, 5, 277 },
			["Vannah|spineshatter"] = { 1, 0, 5, 277 },
		},
		[2] = {
			["Forksache|spineshatter"] = { 3, 0, 16, 273 },
			["Ironhound|spineshatter"] = { 3, 0, 17, 284 },
			["Nennx|spineshatter"] = { 3, 0, 16, 273 },
		},
	},
}

