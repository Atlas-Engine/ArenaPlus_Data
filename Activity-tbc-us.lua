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

ns.ACTIVITY_BY_REGION["tbc-us"] = {
	built = 1794391111,
	builtText = "2026-11-11 04:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Boxxing|nightslayer"] = { 7, 4, 36, 154 },
			["Ihealyoupeel|nightslayer"] = { 7, 4, 36, 155 },
			["Druudix|nightslayer"] = { 5, 4, -10, 169 },
			["Warex|nightslayer"] = { 5, 4, -10, 169 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 17, 17, -9, 221 },
			["Wílleh|nightslayer"] = { 17, 17, -9, 221 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 154 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 155 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 210 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 211 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 229 },
			["Fanthom|nightslayer"] = { 7, 9, -21, 241 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 230 },
			["Redubbed|nightslayer"] = { 7, 9, -21, 221 },
			["Dinnoo|nightslayer"] = { 10, 4, 40, 316 },
			["Plasticsurgn|nightslayer"] = { 10, 4, 40, 306 },
			["Druudix|nightslayer"] = { 5, 4, -10, 169 },
			["Warex|nightslayer"] = { 5, 4, -10, 169 },
			["Cream|nightslayer"] = { 8, 0, 28, 277 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 273 },
			["Creation|nightslayer"] = { 6, 0, 78, 359 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 255 },
			["Jingjingbaby|nightslayer"] = { 2, 3, -8, 338 },
			["Yodead|nightslayer"] = { 1, 4, -39, 256 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 224 },
			["Trû|nightslayer"] = { 1, 2, -8, 221 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 221 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 221 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 154 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 155 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 241 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 221 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 210 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 211 },
			["Creation|nightslayer"] = { 14, 5, 128, 359 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 364 },
			["Yodead|nightslayer"] = { 7, 12, -80, 256 },
			["Morepower|nightslayer"] = { 7, 10, -45, 373 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 369 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 229 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 338 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 230 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 316 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 306 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 420 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 422 },
			["Druudix|nightslayer"] = { 5, 4, -10, 169 },
			["Warex|nightslayer"] = { 5, 4, -10, 169 },
			["Cream|nightslayer"] = { 8, 0, 28, 277 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 273 },
			["Levimis|nightslayer"] = { 4, 3, 11, 457 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 255 },
			["Zofì|nightslayer"] = { 4, 1, 14, 510 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 224 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 401 },
			["Stooky|nightslayer"] = { 1, 2, -30, 401 },
			["Trû|nightslayer"] = { 1, 2, -8, 221 },
			["Xpectdeath|nightslayer"] = { 1, 2, -7, 371 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 630 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 631 },
			["Duudah|nightslayer"] = { 1, 0, 3, 581 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Shigekazu|nightslayer"] = { 29, 20, 87, 221 },
			["Wílleh|nightslayer"] = { 29, 20, 87, 221 },
			["Boxxing|nightslayer"] = { 13, 13, 11, 154 },
			["Ihealyoupeel|nightslayer"] = { 13, 13, 11, 155 },
			["Fanthom|nightslayer"] = { 12, 13, 9, 241 },
			["Redubbed|nightslayer"] = { 12, 13, 9, 221 },
			["Facemaskx|nightslayer"] = { 11, 9, 40, 210 },
			["Surveillant|nightslayer"] = { 11, 9, 40, 211 },
			["Creation|nightslayer"] = { 14, 5, 128, 359 },
			["Stopsniping|nightslayer"] = { 14, 5, 27, 364 },
			["Yodead|nightslayer"] = { 7, 12, -80, 256 },
			["Morepower|nightslayer"] = { 7, 10, -45, 373 },
			["Allenstout|nightslayer"] = { 5, 11, -45, 369 },
			["Chrispratt|nightslayer"] = { 7, 9, -76, 229 },
			["Jingjingbaby|nightslayer"] = { 5, 11, -46, 338 },
			["Lefttenclear|nightslayer"] = { 7, 9, -76, 230 },
			["Dinnoo|nightslayer"] = { 10, 5, 25, 316 },
			["Plasticsurgn|nightslayer"] = { 10, 5, 25, 306 },
			["Ragequitqtt|nightslayer"] = { 6, 7, -39, 420 },
			["ßraxtør|nightslayer"] = { 6, 7, -39, 422 },
			["Clayhill|nightslayer"] = { 7, 3, 8, 1355 },
			["Feldargon|nightslayer"] = { 7, 3, 3, 1355 },
			["Druudix|nightslayer"] = { 5, 4, -10, 169 },
			["Sunnyslow|nightslayer"] = { 7, 2, -8, 1318 },
			["Tbalc|nightslayer"] = { 7, 2, 11, 1318 },
			["Warex|nightslayer"] = { 5, 4, -10, 169 },
			["Cream|nightslayer"] = { 8, 0, 28, 277 },
			["Roguedude|nightslayer"] = { 8, 0, 20, 273 },
			["Sylvani|nightslayer"] = { 5, 3, 3, 1318 },
			["Levimis|nightslayer"] = { 4, 3, 11, 457 },
			["Twofeetjimmy|nightslayer"] = { 5, 1, 17, 1201 },
			["Gnaw|nightslayer"] = { 1, 4, -49, 255 },
			["Zofì|nightslayer"] = { 4, 1, 14, 510 },
			["Exgoshgolly|nightslayer"] = { 1, 2, -4, 224 },
			["Mostdam|nightslayer"] = { 1, 2, -23, 401 },
			["Stooky|nightslayer"] = { 1, 2, -30, 401 },
			["Trû|nightslayer"] = { 1, 2, -8, 221 },
			["Xpectdeath|nightslayer"] = { 1, 2, -7, 371 },
			["Dunstanttv|nightslayer"] = { 2, 0, 4, 630 },
			["Frostevil|nightslayer"] = { 0, 2, -21, 1249 },
			["Jamzki|nightslayer"] = { 2, 0, 6, 631 },
			["Pallypwr|dreamscythe"] = { 2, 0, 9, 1121 },
			["Turnpiike|dreamscythe"] = { 2, 0, 6, 1121 },
			["Badzor|nightslayer"] = { 1, 0, 2, 1254 },
			["Duudah|nightslayer"] = { 1, 0, 3, 581 },
			["Sèrpeñt|nightslayer"] = { 1, 0, 1, 1254 },
		},
		[3] = {
			["Knícks|nightslayer"] = { 28, 2, 279, 1395 },
			["Showhan|nightslayer"] = { 10, 0, 5, 1396 },
			["Smileneil|nightslayer"] = { 10, 0, 53, 1395 },
			["Probear|nightslayer"] = { 9, 0, 19, 1394 },
		},
	},
}

