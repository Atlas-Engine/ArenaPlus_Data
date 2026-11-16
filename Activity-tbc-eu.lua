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
	built = 1794819564,
	builtText = "2026-11-16 03:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 18, -108, 490 },
			["Sustanøn|spineshatter"] = { 13, 6, 25, 491 },
			["Everlost|spineshatter"] = { 13, 5, 58, 539 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 538 },
			["Mfkaxx|spineshatter"] = { 10, 7, 119, 523 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 719 },
			["Flobby|spineshatter"] = { 10, 5, 31, 585 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 585 },
			["Primár|spineshatter"] = { 7, 7, -17, 644 },
			["Therín|spineshatter"] = { 7, 7, 21, 617 },
			["Vidykravicka|thunderstrike"] = { 9, 4, 41, 585 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 585 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 691 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 511 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 509 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 585 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 552 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 552 },
			["Ungnevird|thunderstrike"] = { 6, 2, 31, 720 },
			["Пиноккио|anniversary"] = { 4, 4, -7, 666 },
			["Сократ|anniversary"] = { 4, 4, -7, 668 },
			["Garad|spineshatter"] = { 4, 1, 21, 585 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 655 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 585 },
			["Rubyjunior|thunderstrike"] = { 3, 1, 24, 687 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 585 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 585 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 585 },
			["Izabelyrg|spineshatter"] = { 0, 1, 0, 595 },
			["Mblol|spineshatter"] = { 0, 1, -4, 711 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 490 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 867 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 829 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 491 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 585 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 666 },
			["Сократ|anniversary"] = { 12, 10, -31, 668 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 882 },
			["Everlost|spineshatter"] = { 13, 7, 27, 539 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 765 },
			["Karoups|spineshatter"] = { 13, 7, 26, 788 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 523 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 765 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 538 },
			["Primár|spineshatter"] = { 9, 9, -33, 644 },
			["Therín|spineshatter"] = { 9, 9, 18, 617 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 719 },
			["Flobby|spineshatter"] = { 10, 5, 31, 585 },
			["Oldp|spineshatter"] = { 12, 3, 83, 1052 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 585 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 720 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 687 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 595 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 765 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 765 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 585 },
			["Adpt|spineshatter"] = { 5, 5, -8, 841 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1125 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 841 },
			["Dominus|spineshatter"] = { 8, 2, 41, 945 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 691 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 931 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 932 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 511 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 509 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 585 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 742 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 552 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 552 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 745 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1171 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1171 },
			["Mblol|spineshatter"] = { 3, 3, 6, 711 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 728 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1040 },
			["Doko|spineshatter"] = { 3, 2, 20, 925 },
			["Garad|spineshatter"] = { 4, 1, 21, 585 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 736 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 735 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 785 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 655 },
			["Walida|spineshatter"] = { 3, 2, 20, 925 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1040 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 585 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 835 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1125 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 817 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 585 },
			["Brubru|spineshatter"] = { 0, 2, -38, 765 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 585 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 585 },
		},
	},
}

