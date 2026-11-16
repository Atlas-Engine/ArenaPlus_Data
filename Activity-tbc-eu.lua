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
	built = 1794808763,
	builtText = "2026-11-16 12:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Stovo|thunderstrike"] = { 4, 5, -22, 331 },
			["Xionc|thunderstrike"] = { 4, 5, -20, 329 },
			["Orcabrina|spineshatter"] = { 5, 3, 28, 310 },
			["Sustanøn|spineshatter"] = { 5, 3, 10, 311 },
			["Everlost|spineshatter"] = { 3, 2, 9, 359 },
			["Patrickwoo|spineshatter"] = { 3, 2, -3, 358 },
			["Mfkaxx|spineshatter"] = { 1, 1, 16, 343 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 310 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 687 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 311 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 405 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 486 },
			["Сократ|anniversary"] = { 12, 10, -31, 488 },
			["Everlost|spineshatter"] = { 13, 7, 27, 359 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 585 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 343 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 585 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 358 },
			["Primár|spineshatter"] = { 9, 9, -33, 464 },
			["Therín|spineshatter"] = { 9, 9, 18, 437 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 539 },
			["Flobby|spineshatter"] = { 10, 5, 31, 405 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 405 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 540 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 507 },
			["Ellilol|thunderstrike"] = { 10, 3, 74, 649 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 415 },
			["Dapqueue|spineshatter"] = { 6, 5, -2, 702 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 585 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 585 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 405 },
			["Adpt|spineshatter"] = { 5, 5, -8, 661 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 661 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 511 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 331 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 329 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 405 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 562 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 372 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 372 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 565 },
			["Mblol|spineshatter"] = { 3, 3, 6, 531 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 548 },
			["Garad|spineshatter"] = { 4, 1, 21, 405 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 556 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 555 },
			["Karoups|spineshatter"] = { 1, 4, -33, 608 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 605 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 475 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 405 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 655 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 637 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 405 },
			["Brubru|spineshatter"] = { 0, 2, -38, 585 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 405 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 405 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 310 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 687 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 649 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 311 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 405 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 486 },
			["Сократ|anniversary"] = { 12, 10, -31, 488 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 702 },
			["Everlost|spineshatter"] = { 13, 7, 27, 359 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 585 },
			["Karoups|spineshatter"] = { 13, 7, 26, 608 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 343 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 585 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 358 },
			["Primár|spineshatter"] = { 9, 9, -33, 464 },
			["Therín|spineshatter"] = { 9, 9, 18, 437 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 539 },
			["Flobby|spineshatter"] = { 10, 5, 31, 405 },
			["Oldp|spineshatter"] = { 12, 3, 83, 872 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 405 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 540 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 507 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 415 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 585 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 585 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 405 },
			["Adpt|spineshatter"] = { 5, 5, -8, 661 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 945 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 661 },
			["Dominus|spineshatter"] = { 8, 2, 41, 765 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 511 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 751 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 752 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 331 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 329 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 405 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 562 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 372 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 372 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 565 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 991 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 991 },
			["Mblol|spineshatter"] = { 3, 3, 6, 531 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 548 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 860 },
			["Doko|spineshatter"] = { 3, 2, 20, 744 },
			["Garad|spineshatter"] = { 4, 1, 21, 405 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 556 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 555 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 605 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 475 },
			["Walida|spineshatter"] = { 3, 2, 20, 745 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 860 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 405 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 655 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 945 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 637 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 405 },
			["Brubru|spineshatter"] = { 0, 2, -38, 585 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 405 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 405 },
		},
	},
}

