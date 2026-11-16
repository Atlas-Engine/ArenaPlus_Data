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
	built = 1794815964,
	builtText = "2026-11-16 02:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 430 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 431 },
			["Everlost|spineshatter"] = { 13, 7, 27, 479 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 705 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 478 },
			["Primár|spineshatter"] = { 9, 9, -33, 584 },
			["Therín|spineshatter"] = { 9, 9, 18, 557 },
			["Mfkaxx|spineshatter"] = { 10, 7, 119, 463 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 659 },
			["Flobby|spineshatter"] = { 10, 5, 31, 525 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 525 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 660 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 627 },
			["Пиноккио|anniversary"] = { 8, 6, -1, 606 },
			["Сократ|anniversary"] = { 8, 6, -1, 608 },
			["Twatcatcher|spineshatter"] = { 11, 2, 85, 705 },
			["Vidykravicka|thunderstrike"] = { 9, 4, 41, 525 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 535 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 705 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 705 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 525 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 631 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 451 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 449 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 525 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 682 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 492 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 492 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 685 },
			["Mblol|spineshatter"] = { 3, 3, 6, 651 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 668 },
			["Garad|spineshatter"] = { 4, 1, 21, 525 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 676 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 675 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 595 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 525 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 525 },
			["Brubru|spineshatter"] = { 0, 2, -38, 705 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 525 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 525 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 430 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 807 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 769 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 431 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 525 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 606 },
			["Сократ|anniversary"] = { 12, 10, -31, 608 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 822 },
			["Everlost|spineshatter"] = { 13, 7, 27, 479 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 705 },
			["Karoups|spineshatter"] = { 13, 7, 26, 728 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 463 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 705 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 478 },
			["Primár|spineshatter"] = { 9, 9, -33, 584 },
			["Therín|spineshatter"] = { 9, 9, 18, 557 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 659 },
			["Flobby|spineshatter"] = { 10, 5, 31, 525 },
			["Oldp|spineshatter"] = { 12, 3, 83, 992 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 525 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 660 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 627 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 535 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 705 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 705 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 525 },
			["Adpt|spineshatter"] = { 5, 5, -8, 781 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1065 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 781 },
			["Dominus|spineshatter"] = { 8, 2, 41, 885 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 631 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 871 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 872 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 451 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 449 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 525 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 682 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 492 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 492 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 685 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1111 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1111 },
			["Mblol|spineshatter"] = { 3, 3, 6, 651 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 668 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 980 },
			["Doko|spineshatter"] = { 3, 2, 20, 865 },
			["Garad|spineshatter"] = { 4, 1, 21, 525 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 676 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 675 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 725 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 595 },
			["Walida|spineshatter"] = { 3, 2, 20, 865 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 980 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 525 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 775 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1065 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 757 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 525 },
			["Brubru|spineshatter"] = { 0, 2, -38, 705 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 525 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 525 },
		},
	},
}

