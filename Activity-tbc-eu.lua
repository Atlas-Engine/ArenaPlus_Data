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
	built = 1794941959,
	builtText = "2026-11-17 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jostix|spineshatter"] = { 4, 5, -78, 34 },
			["Mortallovex|spineshatter"] = { 4, 5, -49, 42 },
			["Pinkwidow|spineshatter"] = { 5, 4, 24, 44 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Jostix|spineshatter"] = { 4, 7, -101, 34 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 42 },
			["Pinkwidow|spineshatter"] = { 6, 4, 34, 44 },
			["Doko|spineshatter"] = { 4, 4, 17, 93 },
			["Walida|spineshatter"] = { 4, 4, 17, 93 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 109 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 75 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 75 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 109 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 124 },
			["Icehell|spineshatter"] = { 5, 0, 33, 125 },
			["Brubru|spineshatter"] = { 1, 3, -29, 101 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 101 },
			["Almeri|spineshatter"] = { 1, 2, -19, 64 },
			["Energywyrm|spineshatter"] = { 1, 2, -19, 67 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 168 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 168 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Jostix|spineshatter"] = { 4, 7, -101, 34 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 42 },
			["Pinkwidow|spineshatter"] = { 6, 4, 34, 44 },
			["Doko|spineshatter"] = { 4, 4, 17, 93 },
			["Walida|spineshatter"] = { 4, 4, 17, 93 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 109 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 75 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 75 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 109 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 124 },
			["Icehell|spineshatter"] = { 5, 0, 33, 125 },
			["Brubru|spineshatter"] = { 1, 3, -29, 101 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 101 },
			["Almeri|spineshatter"] = { 1, 2, -19, 64 },
			["Energywyrm|spineshatter"] = { 1, 2, -19, 67 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 168 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 168 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Jostix|spineshatter"] = { 4, 7, -101, 34 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 42 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 372 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 362 },
			["Pinkwidow|spineshatter"] = { 6, 4, 34, 44 },
			["Doko|spineshatter"] = { 4, 4, 17, 93 },
			["Walida|spineshatter"] = { 4, 4, 17, 93 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 109 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 75 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 75 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 109 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 124 },
			["Icehell|spineshatter"] = { 5, 0, 33, 125 },
			["Brubru|spineshatter"] = { 1, 3, -29, 101 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 101 },
			["Almeri|spineshatter"] = { 1, 2, -19, 64 },
			["Energywyrm|spineshatter"] = { 1, 2, -19, 67 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 168 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 168 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 1209 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 1332 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 1127 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 1005 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 1009 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 1290 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 1290 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 1185 },
			["Jostix|spineshatter"] = { 4, 7, -101, 34 },
			["Mortallovex|spineshatter"] = { 4, 7, -68, 42 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 1185 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 1229 },
			["Vidykravicka|thunderstrike"] = { 9, 2, 57, 1229 },
			["Almeri|spineshatter"] = { 5, 5, -45, 64 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 372 },
			["Energywyrm|spineshatter"] = { 5, 5, -45, 67 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 1126 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 362 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 1250 },
			["Pinkwidow|spineshatter"] = { 6, 4, 34, 44 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 1179 },
			["Doko|spineshatter"] = { 4, 4, 17, 93 },
			["Walida|spineshatter"] = { 4, 4, 17, 93 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 1270 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 1270 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 1185 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 109 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 1224 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 75 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 1170 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 75 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 109 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 124 },
			["Icehell|spineshatter"] = { 5, 0, 33, 125 },
			["Brubru|spineshatter"] = { 1, 3, -29, 101 },
			["Everlost|spineshatter"] = { 3, 1, 15, 1136 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 1133 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 101 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 168 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 168 },
			["Karoups|spineshatter"] = { 1, 1, -9, 1332 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1365 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1365 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1365 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1365 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1365 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1365 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 1222 },
		},
	},
}

