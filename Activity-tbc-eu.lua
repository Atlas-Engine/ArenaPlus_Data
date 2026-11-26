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
	built = 1795705165,
	builtText = "2026-11-26 09:59 AM",
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
			["Bimbolo|spineshatter"] = { 15, 12, -28, 962 },
			["Ellilol|thunderstrike"] = { 20, 7, 82, 1032 },
			["Shadøwsfall|thunderstrike"] = { 20, 7, 82, 1057 },
			["Пиноккио|anniversary"] = { 14, 8, 4, 841 },
			["Сократ|anniversary"] = { 14, 8, 4, 775 },
			["Corness|thunderstrike"] = { 15, 5, 116, 1124 },
			["Grimroll|thunderstrike"] = { 15, 5, 115, 1125 },
			["Izabelyrg|spineshatter"] = { 9, 7, -18, 960 },
			["Rubyjunior|thunderstrike"] = { 4, 6, -55, 1073 },
			["Vidykravicka|thunderstrike"] = { 4, 6, -79, 1074 },
			["Moscuerta|spineshatter"] = { 6, 3, 35, 862 },
			["Systemhack|spineshatter"] = { 6, 3, 3, 863 },
			["Delivers|spineshatter"] = { 6, 2, 11, 1161 },
			["Druidcoachx|spineshatter"] = { 6, 2, -14, 1234 },
			["Darkmid|spineshatter"] = { 0, 4, -54, 968 },
			["Gushers|spineshatter"] = { 2, 2, 4, 921 },
			["Iggysmalls|spineshatter"] = { 2, 2, -21, 918 },
			["Hurtie|spineshatter"] = { 1, 0, 10, 1192 },
			["Ilovejade|spineshatter"] = { 1, 0, 1, 1007 },
			["Invinciblexx|spineshatter"] = { 1, 0, 1, 945 },
			["Zanven|spineshatter"] = { 1, 0, 9, 1192 },
		},
	},
}

