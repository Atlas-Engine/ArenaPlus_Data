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
	built = 1794823163,
	builtText = "2026-11-16 04:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 18, -108, 550 },
			["Sustanøn|spineshatter"] = { 13, 6, 25, 551 },
			["Everlost|spineshatter"] = { 13, 5, 58, 599 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 598 },
			["Flobby|spineshatter"] = { 10, 5, 31, 645 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 645 },
			["Primár|spineshatter"] = { 7, 7, -17, 704 },
			["Therín|spineshatter"] = { 7, 7, 21, 677 },
			["Vidykravicka|thunderstrike"] = { 9, 4, 41, 645 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 645 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 571 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 569 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 645 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 612 },
			["Eaxlow|thunderstrike"] = { 3, 2, -17, 612 },
			["Garad|spineshatter"] = { 4, 1, 21, 645 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 715 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 645 },
			["Mfkaxx|spineshatter"] = { 3, 1, 30, 583 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 645 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 645 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 645 },
			["Izabelyrg|spineshatter"] = { 0, 1, 0, 655 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 550 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 927 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 889 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 551 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 645 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 726 },
			["Сократ|anniversary"] = { 12, 10, -31, 728 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 942 },
			["Everlost|spineshatter"] = { 13, 7, 27, 599 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 825 },
			["Karoups|spineshatter"] = { 13, 7, 26, 848 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 583 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 825 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 598 },
			["Primár|spineshatter"] = { 9, 9, -33, 704 },
			["Therín|spineshatter"] = { 9, 9, 18, 677 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 779 },
			["Flobby|spineshatter"] = { 10, 5, 31, 645 },
			["Oldp|spineshatter"] = { 12, 3, 83, 1112 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 645 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 780 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 747 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 655 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 825 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 825 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 645 },
			["Adpt|spineshatter"] = { 5, 5, -8, 901 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1185 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 901 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1005 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 751 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 991 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 992 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 571 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 569 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 645 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 802 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 612 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 612 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 805 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1231 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1231 },
			["Mblol|spineshatter"] = { 3, 3, 6, 771 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 788 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1100 },
			["Doko|spineshatter"] = { 3, 2, 20, 984 },
			["Garad|spineshatter"] = { 4, 1, 21, 645 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 796 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 795 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 845 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 715 },
			["Walida|spineshatter"] = { 3, 2, 20, 985 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1100 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 645 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 895 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1185 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 877 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 645 },
			["Brubru|spineshatter"] = { 0, 2, -38, 825 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 645 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 645 },
		},
	},
}

