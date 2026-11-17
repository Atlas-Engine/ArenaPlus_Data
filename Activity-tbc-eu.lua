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
	built = 1794938366,
	builtText = "2026-11-17 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Doko|spineshatter"] = { 4, 4, 17, 33 },
			["Walida|spineshatter"] = { 4, 4, 17, 33 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 49 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 15 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 15 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 49 },
			["Brubru|spineshatter"] = { 1, 3, -29, 41 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 41 },
			["Jostix|spineshatter"] = { 0, 2, -23, 45 },
			["Mortallovex|spineshatter"] = { 0, 2, -19, 45 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Doko|spineshatter"] = { 4, 4, 17, 33 },
			["Walida|spineshatter"] = { 4, 4, 17, 33 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 49 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 15 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 15 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 49 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 64 },
			["Icehell|spineshatter"] = { 5, 0, 33, 65 },
			["Brubru|spineshatter"] = { 1, 3, -29, 41 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 41 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 108 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 108 },
			["Jostix|spineshatter"] = { 0, 2, -23, 45 },
			["Mortallovex|spineshatter"] = { 0, 2, -19, 45 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 312 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 302 },
			["Doko|spineshatter"] = { 4, 4, 17, 33 },
			["Walida|spineshatter"] = { 4, 4, 17, 33 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 49 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 15 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 15 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 49 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 64 },
			["Icehell|spineshatter"] = { 5, 0, 33, 65 },
			["Brubru|spineshatter"] = { 1, 3, -29, 41 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 41 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 108 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 108 },
			["Jostix|spineshatter"] = { 0, 2, -23, 45 },
			["Mortallovex|spineshatter"] = { 0, 2, -19, 45 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Djznx|thunderstrike"] = { 8, 2, 1, 312 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 302 },
			["Doko|spineshatter"] = { 4, 4, 17, 33 },
			["Walida|spineshatter"] = { 4, 4, 17, 33 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 49 },
			["Keepdistance|spineshatter"] = { 6, 0, 49, 15 },
			["Radamsa|spineshatter"] = { 6, 0, 49, 15 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 49 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 64 },
			["Icehell|spineshatter"] = { 5, 0, 33, 65 },
			["Brubru|spineshatter"] = { 1, 3, -29, 41 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 41 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 108 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 108 },
			["Jostix|spineshatter"] = { 0, 2, -23, 45 },
			["Mortallovex|spineshatter"] = { 0, 2, -19, 45 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 1149 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 1272 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 1067 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 945 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 949 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 1230 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 1230 },
			["Vidykravicka|thunderstrike"] = { 9, 3, 45, 1170 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 1125 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 1125 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 1170 },
			["Djznx|thunderstrike"] = { 8, 2, 1, 312 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 1066 },
			["Lyswr|spineshatter"] = { 9, 1, 65, 1414 },
			["Maraani|thunderstrike"] = { 8, 2, -6, 302 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 1190 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 1119 },
			["Zalguu|spineshatter"] = { 9, 1, 65, 1415 },
			["Agaj|thunderstrike"] = { 4, 5, -45, 1421 },
			["Zapahsexa|thunderstrike"] = { 4, 5, -46, 1416 },
			["Doko|spineshatter"] = { 4, 4, 17, 33 },
			["Keepdistance|spineshatter"] = { 7, 1, 34, 15 },
			["Radamsa|spineshatter"] = { 7, 1, 34, 15 },
			["Walida|spineshatter"] = { 4, 4, 17, 33 },
			["Almeri|spineshatter"] = { 4, 3, -26, 1305 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 1305 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 1210 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 1210 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 1125 },
			["Drainèr|spineshatter"] = { 3, 3, -18, 49 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 1164 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 1110 },
			["Xnatry|spineshatter"] = { 3, 3, -9, 49 },
			["Elizondax|spineshatter"] = { 5, 0, 33, 64 },
			["Icehell|spineshatter"] = { 5, 0, 33, 65 },
			["Brubru|spineshatter"] = { 1, 3, -29, 41 },
			["Everlost|spineshatter"] = { 3, 1, 15, 1076 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 1073 },
			["Kamenskii|spineshatter"] = { 1, 3, -22, 41 },
			["Rotarepmi|thunderstrike"] = { 2, 1, 2, 108 },
			["Vetó|thunderstrike"] = { 2, 1, 6, 108 },
			["Jostix|spineshatter"] = { 0, 2, -23, 45 },
			["Karoups|spineshatter"] = { 1, 1, -9, 1272 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 1383 },
			["Mortallovex|spineshatter"] = { 0, 2, -19, 45 },
			["Oldp|spineshatter"] = { 0, 2, -30, 1383 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 1440 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 1305 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 1305 },
			["Minð|thunderstrike"] = { 1, 0, 2, 1305 },
			["Pinkwidow|spineshatter"] = { 1, 0, 10, 45 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 1305 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 1305 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 1305 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 1163 },
		},
	},
}

