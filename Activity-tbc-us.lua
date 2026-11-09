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
	built = 1794211113,
	builtText = "2026-11-09 02:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Fleegs|nightslayer"] = { 6, 4, 2, 176 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 176 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 298 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 298 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 323 },
			["Mßison|nightslayer"] = { 13, 10, -5, 323 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 210 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 333 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 354 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 355 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 202 },
			["Astias|nightslayer"] = { 6, 4, 45, 202 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 176 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 226 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 229 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 176 },
			["Onit|nightslayer"] = { 3, 4, -19, 241 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 181 },
			["Béon|nightslayer"] = { 4, 2, 13, 183 },
			["Healobot|nightslayer"] = { 1, 2, -15, 221 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 246 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 298 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 298 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 323 },
			["Mßison|nightslayer"] = { 13, 10, -5, 323 },
			["Creation|nightslayer"] = { 11, 9, -159, 519 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 210 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 333 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 365 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 354 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 355 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 202 },
			["Astias|nightslayer"] = { 6, 4, 45, 202 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 176 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 540 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 226 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 229 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 369 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 361 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 176 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 626 },
			["Onit|nightslayer"] = { 3, 4, -19, 241 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 478 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 181 },
			["Béon|nightslayer"] = { 4, 2, 13, 183 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 616 },
			["Healobot|nightslayer"] = { 1, 2, -15, 221 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 478 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 521 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 246 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 298 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 298 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 323 },
			["Mßison|nightslayer"] = { 13, 10, -5, 323 },
			["Creation|nightslayer"] = { 11, 9, -159, 519 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 210 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 333 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 365 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 354 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 355 },
			["Deezbloomz|nightslayer"] = { 6, 5, -15, 202 },
			["Saplinq|nightslayer"] = { 6, 5, -8, 1433 },
			["Astias|nightslayer"] = { 6, 4, 45, 202 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 176 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 540 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 226 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 229 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 369 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 361 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 176 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 626 },
			["Onit|nightslayer"] = { 3, 4, -19, 241 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 478 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 181 },
			["Béon|nightslayer"] = { 4, 2, 13, 183 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 616 },
			["Healobot|nightslayer"] = { 1, 2, -15, 221 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 478 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 521 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 246 },
		},
	},
}

