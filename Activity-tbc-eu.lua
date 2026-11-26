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
	built = 1795683560,
	builtText = "2026-11-26 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 14, 8, 4, 481 },
			["Сократ|anniversary"] = { 14, 8, 4, 414 },
			["Bimbolo|spineshatter"] = { 6, 3, 24, 602 },
			["Ellilol|thunderstrike"] = { 8, 1, 73, 672 },
			["Izabelyrg|spineshatter"] = { 6, 3, 18, 600 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 502 },
			["Shadøwsfall|thunderstrike"] = { 8, 1, 73, 697 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 503 },
			["Rubyjunior|thunderstrike"] = { 2, 5, -52, 713 },
			["Vidykravicka|thunderstrike"] = { 2, 5, -69, 714 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 608 },
			["Gushers|spineshatter"] = { 2, 2, 4, 561 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 558 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 647 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 585 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Bimbolo|spineshatter"] = { 15, 12, -28, 602 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 672 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 697 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 481 },
			["Сократ|anniversary"] = { 14, 8, 4, 414 },
			["Corness|thunderstrike"] = { 15, 5, 116, 764 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 765 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 600 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 713 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 714 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 502 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 503 },
			["Delivers|spineshatter"] = { 6, 2, 11, 801 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 874 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 608 },
			["Gushers|spineshatter"] = { 2, 2, 4, 561 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 558 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 832 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 647 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 585 },
			["Zanven|spineshatter"] = { 1, 0, 9, 832 },
		},
	},
}

