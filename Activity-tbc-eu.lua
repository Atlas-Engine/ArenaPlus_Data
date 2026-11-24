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
	built = 1795489159,
	builtText = "2026-11-23 09:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 11, 14, -25, 276 },
			["Shadøwsfall|thunderstrike"] = { 11, 14, -25, 278 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 225 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 225 },
			["Izabelyrg|spineshatter"] = { 8, 10, -60, 211 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 288 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 288 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 203 },
			["Сократ|anniversary"] = { 10, 3, 82, 202 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 211 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 225 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 225 },
			["Everlost|spineshatter"] = { 3, 5, -27, 265 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 264 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 318 },
			["Bimbolo|spineshatter"] = { 5, 2, 45, 347 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 239 },
			["Quernx|spineshatter"] = { 2, 2, -14, 317 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 316 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 315 },
			["Naydral|spineshatter"] = { 0, 1, -14, 225 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 225 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 278 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 225 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 284 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 276 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 278 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 211 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 347 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 225 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 225 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 288 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 288 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 203 },
			["Сократ|anniversary"] = { 10, 3, 82, 202 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 419 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 420 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 211 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 470 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 405 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 225 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 225 },
			["Everlost|spineshatter"] = { 3, 5, -27, 265 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 264 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 318 },
			["Fedow|spineshatter"] = { 6, 1, -20, 381 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 381 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 239 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 413 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 405 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 405 },
			["Quernx|spineshatter"] = { 2, 2, -14, 317 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 473 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 316 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 475 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 315 },
			["Naydral|spineshatter"] = { 0, 1, -14, 225 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 225 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 278 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 471 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 225 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 284 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Ellilol|thunderstrike"] = { 21, 22, 56, 276 },
			["Shadøwsfall|thunderstrike"] = { 21, 22, 56, 278 },
			["Izabelyrg|spineshatter"] = { 18, 12, 3, 211 },
			["Bimbolo|spineshatter"] = { 20, 8, 144, 347 },
			["Aethèl|spineshatter"] = { 9, 9, 7, 225 },
			["Amadeeus|spineshatter"] = { 9, 9, -25, 225 },
			["Nimmsi|thunderstrike"] = { 10, 3, -51, 288 },
			["Phukkhislife|thunderstrike"] = { 10, 3, -34, 288 },
			["Пиноккио|anniversary"] = { 10, 3, 82, 203 },
			["Сократ|anniversary"] = { 10, 3, 82, 202 },
			["Snupydawg|spineshatter"] = { 6, 6, 2, 419 },
			["Zazazazaa|spineshatter"] = { 6, 6, 2, 420 },
			["Pinkwidow|spineshatter"] = { 3, 8, -44, 211 },
			["Bernadotte|thunderstrike"] = { 8, 2, 37, 470 },
			["Monstertilin|thunderstrike"] = { 8, 2, 33, 405 },
			["Görlöm|spineshatter"] = { 4, 5, -49, 225 },
			["Cinthya|spineshatter"] = { 3, 5, -10, 225 },
			["Everlost|spineshatter"] = { 3, 5, -27, 265 },
			["Patrickwoo|spineshatter"] = { 3, 5, -50, 264 },
			["Bagladybetty|spineshatter"] = { 3, 4, -3, 318 },
			["Fedow|spineshatter"] = { 6, 1, -20, 381 },
			["Predatorxd|spineshatter"] = { 6, 1, -4, 381 },
			["Qpidq|spineshatter"] = { 4, 2, -1, 239 },
			["Milevabog|spineshatter"] = { 3, 2, 17, 413 },
			["Makayas|thunderstrike"] = { 1, 3, -34, 405 },
			["Møøxy|thunderstrike"] = { 1, 3, -34, 405 },
			["Quernx|spineshatter"] = { 2, 2, -14, 317 },
			["Rotarepmi|thunderstrike"] = { 1, 3, -35, 473 },
			["Stupidänimal|spineshatter"] = { 2, 2, -14, 316 },
			["Vetó|thunderstrike"] = { 1, 3, -30, 475 },
			["Reâper|spineshatter"] = { 1, 1, -12, 765 },
			["Zulwi|thunderstrike"] = { 1, 1, -4, 315 },
			["Léxington|spineshatter"] = { 0, 1, -19, 765 },
			["Naydral|spineshatter"] = { 0, 1, -14, 225 },
			["Tiffster|spineshatter"] = { 0, 1, -18, 765 },
		},
		[3] = {
			["Bouncus|spineshatter"] = { 2, 0, 5, 225 },
			["Crabzxtrapzx|spineshatter"] = { 2, 0, 5, 278 },
			["Mdmaxlockx|spineshatter"] = { 2, 0, 8, 471 },
			["Tbchypè|spineshatter"] = { 2, 0, 5, 225 },
			["Tchadow|spineshatter"] = { 0, 1, -10, 284 },
		},
	},
}

