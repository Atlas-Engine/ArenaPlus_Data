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
	built = 1794826761,
	builtText = "2026-11-16 05:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 18, -108, 610 },
			["Sustanøn|spineshatter"] = { 13, 6, 25, 611 },
			["Everlost|spineshatter"] = { 13, 5, 58, 659 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 658 },
			["Flobby|spineshatter"] = { 10, 5, 31, 705 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 705 },
			["Vidykravicka|thunderstrike"] = { 9, 4, 41, 705 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 705 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 631 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 629 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 705 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 672 },
			["Eaxlow|thunderstrike"] = { 3, 2, -17, 672 },
			["Garad|spineshatter"] = { 4, 1, 21, 705 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 705 },
			["Mfkaxx|spineshatter"] = { 3, 1, 30, 643 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 705 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 705 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 705 },
			["Izabelyrg|spineshatter"] = { 0, 1, 0, 715 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 15, 19, -92, 610 },
			["Shadøwsfall|thunderstrike"] = { 22, 11, 88, 987 },
			["Ellilol|thunderstrike"] = { 22, 10, 94, 949 },
			["Sustanøn|spineshatter"] = { 15, 13, -35, 611 },
			["Vidykravicka|thunderstrike"] = { 16, 7, 85, 705 },
			["Пиноккио|anniversary"] = { 12, 10, -31, 786 },
			["Сократ|anniversary"] = { 12, 10, -31, 788 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 1002 },
			["Everlost|spineshatter"] = { 13, 7, 27, 659 },
			["Funkyxd|spineshatter"] = { 17, 3, 131, 885 },
			["Karoups|spineshatter"] = { 13, 7, 26, 908 },
			["Mfkaxx|spineshatter"] = { 10, 10, 90, 643 },
			["Twatcatcher|spineshatter"] = { 17, 3, 131, 885 },
			["Patrickwoo|spineshatter"] = { 13, 5, 13, 658 },
			["Primár|spineshatter"] = { 9, 9, -33, 764 },
			["Therín|spineshatter"] = { 9, 9, 18, 737 },
			["Ctrlaltdad|thunderstrike"] = { 11, 4, 96, 839 },
			["Flobby|spineshatter"] = { 10, 5, 31, 705 },
			["Oldp|spineshatter"] = { 12, 3, 83, 1172 },
			["Rejverka|spineshatter"] = { 10, 5, 31, 705 },
			["Ungnevird|thunderstrike"] = { 11, 4, 34, 840 },
			["Rubyjunior|thunderstrike"] = { 10, 4, 76, 807 },
			["Izabelyrg|spineshatter"] = { 4, 8, -75, 715 },
			["Jarnotrolli|spineshatter"] = { 3, 8, -68, 885 },
			["Oldtobye|spineshatter"] = { 3, 8, -77, 885 },
			["Vetó|thunderstrike"] = { 6, 5, -35, 705 },
			["Adpt|spineshatter"] = { 5, 5, -8, 961 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 1245 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 961 },
			["Dominus|spineshatter"] = { 8, 2, 41, 1065 },
			["Gougerpala|spineshatter"] = { 6, 4, 113, 811 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 1051 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 1052 },
			["Stovo|thunderstrike"] = { 4, 6, -33, 631 },
			["Xionc|thunderstrike"] = { 4, 6, -30, 629 },
			["Senikss|thunderstrike"] = { 6, 3, 10, 705 },
			["Discogyilkos|spineshatter"] = { 4, 4, 17, 862 },
			["Eaxlow|thunderstrike"] = { 5, 3, -6, 672 },
			["Seeyalolz|thunderstrike"] = { 5, 3, 7, 672 },
			["Setupxd|spineshatter"] = { 4, 4, -7, 865 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 1291 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 1291 },
			["Mblol|spineshatter"] = { 3, 3, 6, 831 },
			["Notagainqt|spineshatter"] = { 3, 3, 6, 848 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 1160 },
			["Doko|spineshatter"] = { 3, 2, 20, 1044 },
			["Garad|spineshatter"] = { 4, 1, 21, 705 },
			["Ilovejade|spineshatter"] = { 4, 1, -14, 856 },
			["Invinciblexx|spineshatter"] = { 4, 1, -14, 855 },
			["Shadowpapa|spineshatter"] = { 1, 4, -14, 905 },
			["Tyzin|spineshatter"] = { 4, 1, 21, 775 },
			["Walida|spineshatter"] = { 3, 2, 20, 1045 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 1160 },
			["Aethèl|spineshatter"] = { 1, 3, -24, 705 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 955 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 1245 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 937 },
			["Sauronorc|spineshatter"] = { 1, 3, -18, 705 },
			["Brubru|spineshatter"] = { 0, 2, -38, 885 },
			["Clozapine|spineshatter"] = { 0, 1, -22, 705 },
			["Fnrxz|spineshatter"] = { 0, 1, -22, 705 },
		},
	},
}

