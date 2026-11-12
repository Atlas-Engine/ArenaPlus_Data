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
	built = 1794484713,
	builtText = "2026-11-12 06:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 9, 11, 41, 180 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 161 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 161 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 180 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 161 },
			["Amazý|nightslayer"] = { 8, 7, -32, 313 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 314 },
			["Oxwm|dreamscythe"] = { 8, 6, -79, 183 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 309 },
			["Morepower|nightslayer"] = { 4, 4, -16, 341 },
			["Yodead|nightslayer"] = { 4, 4, -7, 341 },
			["Arpx|nightslayer"] = { 6, 1, 18, 302 },
			["Palapapa|nightslayer"] = { 6, 1, 17, 301 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 341 },
			["Chrispratt|nightslayer"] = { 4, 0, 25, 341 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 161 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 302 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 341 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 180 },
			["Morepower|nightslayer"] = { 14, 5, 5, 341 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 183 },
			["Yodead|nightslayer"] = { 14, 5, 16, 341 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 161 },
			["Amazý|nightslayer"] = { 8, 7, -32, 313 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 314 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 309 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 683 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 301 },
			["Arpx|nightslayer"] = { 6, 1, 18, 302 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 341 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 341 },
			["Booxo|nightslayer"] = { 0, 2, -19, 669 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 161 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 302 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 341 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 622 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 578 },
			["Rjp|nightslayer"] = { 1, 0, 5, 393 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 627 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 701 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 653 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Tsoding|dreamscythe"] = { 10, 16, 62, 180 },
			["Morepower|nightslayer"] = { 14, 5, 5, 341 },
			["Oxwm|dreamscythe"] = { 10, 9, -77, 183 },
			["Yodead|nightslayer"] = { 14, 5, 16, 341 },
			["Couchman|dreamscythe"] = { 7, 9, 23, 161 },
			["Amazý|nightslayer"] = { 8, 7, -32, 313 },
			["Undrcvr|nightslayer"] = { 8, 7, 19, 314 },
			["Dirtydeedss|dreamscythe"] = { 2, 10, -27, 309 },
			["Jamzki|nightslayer"] = { 6, 5, -81, 683 },
			["Palapapa|nightslayer"] = { 7, 1, 21, 301 },
			["Arpx|nightslayer"] = { 6, 1, 18, 302 },
			["Chrispratt|nightslayer"] = { 5, 1, 16, 341 },
			["Lefttenclear|nightslayer"] = { 5, 1, 16, 341 },
			["Booxo|nightslayer"] = { 0, 2, -19, 669 },
			["Iøørð|nightslayer"] = { 0, 2, -24, 161 },
			["Mýnd|nightslayer"] = { 0, 2, -21, 302 },
			["Prayerofstfu|dreamscythe"] = { 0, 2, -17, 341 },
			["Stoggimeistr|nightslayer"] = { 0, 2, -19, 622 },
			["Namkijun|nightslayer"] = { 1, 0, 3, 1377 },
			["Ragequitqtt|nightslayer"] = { 0, 1, -14, 578 },
			["Rjp|nightslayer"] = { 1, 0, 5, 393 },
			["Slowfast|nightslayer"] = { 1, 0, 2, 1378 },
			["ßraxtør|nightslayer"] = { 0, 1, -14, 627 },
			["Stickerzx|nightslayer"] = { 0, 1, -10, 701 },
			["Stinkerzx|nightslayer"] = { 0, 1, -15, 653 },
		},
	},
}

