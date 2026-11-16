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
	built = 1794812364,
	builtText = "2026-11-16 01:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 370 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 371 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 465 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 546 },
			["Сократ|anniversary"] = { 12, 10, -31, 548 },
			["Everlost|spineshatter"] = { 13, 7, 27, 419 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 645 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 418 },
			["Primár|spineshatter"] = { 9, 9, -33, 524 },
			["Therín|spineshatter"] = { 9, 9, 18, 497 },
			["Mfkaxx|spineshatter"] = { 10, 7, 119, 403 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 599 },
			["Flobby|spineshatter"] = { 10, 5, 31, 465 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 465 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 600 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 567 },
			["Ellilol|thunderstrike"] = { 10, 3, 74, 709 },
			["Twatcatcher|spineshatter"] = { 11, 2, 85, 645 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 475 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 645 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 645 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 465 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 571 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 391 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 389 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 465 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 622 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 432 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 432 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 625 },
			["Mblol|spineshatter"] = { 3, 3, 6, 591 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 608 },
			["Garad|spineshatter"] = { 4, 1, 21, 465 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 616 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 615 },
			["Karoups|spineshatter"] = { 1, 4, -33, 668 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 665 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 535 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 465 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 715 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 697 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 465 },
			["Brubru|spineshatter"] = { 0, 2, -38, 645 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 465 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 465 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 370 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 747 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 709 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 371 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 465 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 546 },
			["Сократ|anniversary"] = { 12, 10, -31, 548 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 762 },
			["Everlost|spineshatter"] = { 13, 7, 27, 419 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 645 },
			["Karoups|spineshatter"] = { 13, 7, 26, 668 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 403 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 645 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 418 },
			["Primár|spineshatter"] = { 9, 9, -33, 524 },
			["Therín|spineshatter"] = { 9, 9, 18, 497 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 599 },
			["Flobby|spineshatter"] = { 10, 5, 31, 465 },
			["Oldp|spineshatter"] = { 12, 3, 83, 932 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 465 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 600 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 567 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 475 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 645 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 645 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 465 },
			["Adpt|spineshatter"] = { 5, 5, -8, 721 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1005 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 721 },
			["Dominus|spineshatter"] = { 8, 2, 41, 825 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 571 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 811 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 812 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 391 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 389 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 465 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 622 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 432 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 432 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 625 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1051 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1051 },
			["Mblol|spineshatter"] = { 3, 3, 6, 591 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 608 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 920 },
			["Doko|spineshatter"] = { 3, 2, 20, 805 },
			["Garad|spineshatter"] = { 4, 1, 21, 465 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 616 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 615 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 665 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 535 },
			["Walida|spineshatter"] = { 3, 2, 20, 805 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 920 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 465 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 715 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1005 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 697 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 465 },
			["Brubru|spineshatter"] = { 0, 2, -38, 645 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 465 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 465 },
		},
	},
}

