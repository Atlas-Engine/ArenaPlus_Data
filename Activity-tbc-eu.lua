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
	built = 1795521561,
	builtText = "2026-11-24 06:59 AM",
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
			["Ellilol|thunderstrike"] = { 21, 22, 56, 816 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 818 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 751 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 887 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 765 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 765 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 828 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 828 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 743 },
			["Сократ|anniversary"] = { 10, 3, 82, 743 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 959 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 960 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 751 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 1010 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 945 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 765 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 765 },
			["Everlost|spineshatter"] = { 3, 5, -27, 805 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 804 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 858 },
			["Fedow|spineshatter"] = { 6, 1, -20, 921 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 921 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 779 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 953 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 945 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 945 },
			["Quernx|spineshatter"] = { 2, 2, -14, 857 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 1013 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 856 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 1015 },
			["Reâper|spineshatter"] = { 1, 1, -12, 1305 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 855 },
			["Léxington|spineshatter"] = { 0, 1, -19, 1305 },
			["Naydral|spineshatter"] = { 0, 1, -14, 765 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 1305 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 765 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 818 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 1011 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 765 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 824 },
		},
	},
}

