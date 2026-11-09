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
	built = 1794236313,
	builtText = "2026-11-09 09:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 48 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 48 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 38 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 37 },
			["Bbangzz|dreamscythe"] = { 2, 2, 3, 47 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 48 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 48 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 38 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 37 },
			["Bbangzz|dreamscythe"] = { 2, 2, 3, 47 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 120 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 48 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 48 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 38 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 37 },
			["Bbangzz|dreamscythe"] = { 2, 2, 3, 47 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 120 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 718 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 718 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 48 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 48 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 630 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 120 },
			["Astias|nightslayer"] = { 6, 4, 45, 622 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 596 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 38 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 646 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 37 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 649 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 596 },
			["Onit|nightslayer"] = { 3, 4, -19, 661 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 601 },
			["Béon|nightslayer"] = { 4, 2, 13, 603 },
			["Bbangzz|dreamscythe"] = { 2, 2, 3, 47 },
			["Healobot|nightslayer"] = { 1, 2, -15, 641 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 666 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 718 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 718 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 743 },
			["Mßison|nightslayer"] = { 13, 10, -5, 743 },
			["Creation|nightslayer"] = { 11, 9, -159, 939 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 48 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 48 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 630 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 753 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 785 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 774 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 775 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 120 },
			["Astias|nightslayer"] = { 6, 4, 45, 622 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 596 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 960 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 38 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 646 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 37 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 649 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 789 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 781 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 596 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 1046 },
			["Onit|nightslayer"] = { 3, 4, -19, 661 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 898 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 601 },
			["Béon|nightslayer"] = { 4, 2, 13, 603 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 1036 },
			["Bbangzz|dreamscythe"] = { 2, 2, 3, 47 },
			["Healobot|nightslayer"] = { 1, 2, -15, 641 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 898 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 941 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 666 },
		},
	},
}

