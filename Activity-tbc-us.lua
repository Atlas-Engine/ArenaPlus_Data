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
	built = 1794481112,
	builtText = "2026-11-12 05:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 120 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 101 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 123 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 101 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 120 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 123 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 101 },
			["Amazý|nightslayer"] = { 8, 7, -32, 253 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 254 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 249 },
			["Morepower|nightslayer"] = { 4, 4, -16, 281 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 241 },
			["Yodead|nightslayer"] = { 4, 4, -7, 281 },
			["Arpx|nightslayer"] = { 6, 1, 18, 241 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 281 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 281 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 101 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 242 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 281 },
			["Rjp|nightslayer"] = { 1, 0, 5, 333 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 120 },
			["Morepower|nightslayer"] = { 14, 5, 5, 281 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 123 },
			["Yodead|nightslayer"] = { 14, 5, 16, 281 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 101 },
			["Amazý|nightslayer"] = { 8, 7, -32, 253 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 254 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 249 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 623 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 241 },
			["Arpx|nightslayer"] = { 6, 1, 18, 241 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 281 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 281 },
			["Booxo|nightslayer"] = { 0, 2, -19, 609 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 101 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 242 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 281 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 562 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 518 },
			["Rjp|nightslayer"] = { 1, 0, 5, 333 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 567 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 641 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 593 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 120 },
			["Morepower|nightslayer"] = { 14, 5, 5, 281 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 123 },
			["Yodead|nightslayer"] = { 14, 5, 16, 281 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 101 },
			["Amazý|nightslayer"] = { 8, 7, -32, 253 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 254 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 249 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 623 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 241 },
			["Arpx|nightslayer"] = { 6, 1, 18, 241 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 281 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 281 },
			["Clothfaté|nightslayer"] = { 2, 2, -27, 1438 },
			["Rirí|nightslayer"] = { 2, 2, -5, 1438 },
			["Booxo|nightslayer"] = { 0, 2, -19, 609 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 101 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 242 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 281 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 562 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1317 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 518 },
			["Rjp|nightslayer"] = { 1, 0, 5, 333 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1318 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 567 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 641 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 593 },
		},
	},
}

