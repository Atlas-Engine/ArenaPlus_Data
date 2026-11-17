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
	built = 1794895165,
	builtText = "2026-11-17 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Gougerpala|spineshatter"] = { 11, 2, 90, 225 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 229 },
			["Lifeburst|spineshatter"] = { 10, 2, 43, 347 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 346 },
			["Everlost|spineshatter"] = { 3, 1, 15, 356 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 353 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 429 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 552 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 347 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 225 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 229 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 510 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 510 },
			["Vidykravicka|thunderstrike"] = { 9, 3, 45, 450 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 405 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 405 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 450 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 346 },
			["Lyswr|spineshatter"] = { 9, 1, 65, 694 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 470 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 399 },
			["Zalguu|spineshatter"] = { 9, 1, 65, 695 },
			["Agaj|thunderstrike"] = { 4, 5, -45, 701 },
			["Zapahsexa|thunderstrike"] = { 4, 5, -46, 696 },
			["Almeri|spineshatter"] = { 4, 3, -26, 585 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 585 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 490 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 490 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 405 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 444 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 390 },
			["Everlost|spineshatter"] = { 3, 1, 15, 356 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 353 },
			["Karoups|spineshatter"] = { 1, 1, -9, 552 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 706 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 663 },
			["Oldp|spineshatter"] = { 0, 2, -30, 663 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 704 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 720 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 585 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 585 },
			["Minð|thunderstrike"] = { 1, 0, 2, 585 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 585 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 585 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 585 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 443 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Izabelyrg|spineshatter"] = { 19, 13, 45, 429 },
			["Kaelolo|spineshatter"] = { 18, 10, 79, 552 },
			["Lifeburst|spineshatter"] = { 14, 6, 17, 347 },
			["Lyswr|spineshatter"] = { 14, 2, 90, 694 },
			["Zalguu|spineshatter"] = { 14, 2, 90, 695 },
			["Gougerpala|spineshatter"] = { 11, 2, 90, 225 },
			["Mfkaxx|spineshatter"] = { 11, 2, 67, 229 },
			["Snupydawg|spineshatter"] = { 5, 8, -31, 510 },
			["Vidykravicka|thunderstrike"] = { 10, 3, 51, 450 },
			["Zazazazaa|spineshatter"] = { 5, 8, -31, 510 },
			["Eaxlow|thunderstrike"] = { 8, 3, 11, 405 },
			["Seeyalolz|thunderstrike"] = { 8, 3, 25, 405 },
			["Senikss|thunderstrike"] = { 9, 2, 48, 450 },
			["Agaj|thunderstrike"] = { 5, 5, -45, 701 },
			["Evaberger|spineshatter"] = { 8, 2, 48, 346 },
			["Mdmaxlockx|spineshatter"] = { 8, 2, 80, 470 },
			["Monstertilin|thunderstrike"] = { 10, 0, 39, 765 },
			["Woodmanx|spineshatter"] = { 6, 4, -11, 399 },
			["Zapahsexa|thunderstrike"] = { 5, 5, -46, 696 },
			["Almeri|spineshatter"] = { 4, 3, -26, 585 },
			["Energywyrm|spineshatter"] = { 4, 3, -26, 585 },
			["Reasonicus|spineshatter"] = { 5, 2, -5, 490 },
			["Vincentxd|spineshatter"] = { 5, 2, -5, 490 },
			["Bagladybetty|spineshatter"] = { 3, 3, 1, 405 },
			["Easilyamused|thunderstrike"] = { 4, 2, 30, 444 },
			["Iogaila|spineshatter"] = { 1, 5, -87, 734 },
			["Nøstun|spineshatter"] = { 3, 3, -43, 390 },
			["Everlost|spineshatter"] = { 3, 1, 15, 356 },
			["Farsaroga|spineshatter"] = { 3, 1, 18, 353 },
			["Karoups|spineshatter"] = { 1, 1, -9, 552 },
			["Keepdistance|spineshatter"] = { 1, 1, -15, 706 },
			["Kuromiczek|spineshatter"] = { 0, 2, -24, 663 },
			["Oldp|spineshatter"] = { 0, 2, -30, 663 },
			["Radamsa|spineshatter"] = { 1, 1, -15, 704 },
			["Yæmz|spineshatter"] = { 2, 0, 6, 720 },
			["Dotgyneco|thunderstrike"] = { 1, 0, 2, 585 },
			["Ellectrons|spineshatter"] = { 1, 0, 2, 585 },
			["Minð|thunderstrike"] = { 1, 0, 2, 585 },
			["Pojebmamu|spineshatter"] = { 1, 0, 2, 585 },
			["Samwellx|spineshatter"] = { 1, 0, 2, 585 },
			["Trashergodx|spineshatter"] = { 1, 0, 0, 585 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 3, 3, -54, 443 },
		},
	},
}

