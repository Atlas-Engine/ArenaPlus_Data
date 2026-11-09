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
	built = 1794214716,
	builtText = "2026-11-09 03:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 358 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 358 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 270 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 262 },
			["Astias|nightslayer"] = { 6, 4, 45, 262 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 236 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 286 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 289 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 236 },
			["Onit|nightslayer"] = { 3, 4, -19, 302 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 241 },
			["Béon|nightslayer"] = { 4, 2, 13, 243 },
			["Healobot|nightslayer"] = { 1, 2, -15, 281 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 306 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 358 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 358 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 383 },
			["Mßison|nightslayer"] = { 13, 10, -5, 383 },
			["Creation|nightslayer"] = { 11, 9, -159, 579 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 270 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 393 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 425 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 414 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 415 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 262 },
			["Astias|nightslayer"] = { 6, 4, 45, 262 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 236 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 600 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 286 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 289 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 429 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 421 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 236 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 686 },
			["Onit|nightslayer"] = { 3, 4, -19, 302 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 538 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 241 },
			["Béon|nightslayer"] = { 4, 2, 13, 243 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 676 },
			["Healobot|nightslayer"] = { 1, 2, -15, 281 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 538 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 581 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 306 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 358 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 358 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 383 },
			["Mßison|nightslayer"] = { 13, 10, -5, 383 },
			["Creation|nightslayer"] = { 11, 9, -159, 579 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 270 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 393 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 425 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 414 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 415 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 262 },
			["Astias|nightslayer"] = { 6, 4, 45, 262 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 236 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 600 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 286 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 289 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 429 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 421 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 236 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 686 },
			["Onit|nightslayer"] = { 3, 4, -19, 302 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 538 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 241 },
			["Béon|nightslayer"] = { 4, 2, 13, 243 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 676 },
			["Healobot|nightslayer"] = { 1, 2, -15, 281 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 538 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 581 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 306 },
		},
	},
}

