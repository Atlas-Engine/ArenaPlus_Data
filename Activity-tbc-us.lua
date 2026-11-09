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
	built = 1794239914,
	builtText = "2026-11-09 10:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 21 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 58 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 58 },
			["Bbangzz|dreamscythe"] = { 3, 1, 6, 58 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 108 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 108 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 98 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 21 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 97 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 58 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 58 },
			["Bbangzz|dreamscythe"] = { 5, 3, 9, 58 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 108 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 108 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 98 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 21 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 97 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 58 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 58 },
			["Bbangzz|dreamscythe"] = { 5, 3, 9, 58 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 180 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 108 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 108 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 180 },
			["Oxwm|dreamscythe"] = { 10, 3, -33, 690 },
			["Astias|nightslayer"] = { 6, 4, 45, 682 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 656 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 98 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 706 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 21 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 97 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 58 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 58 },
			["Bbangzz|dreamscythe"] = { 5, 3, 9, 58 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 661 },
			["Béon|nightslayer"] = { 4, 2, 13, 663 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 656 },
			["Tenetd|dreamscythe"] = { 4, 1, 34, 709 },
			["Healobot|nightslayer"] = { 1, 2, -15, 701 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 778 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 778 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 803 },
			["Mßison|nightslayer"] = { 13, 10, -5, 803 },
			["Creation|nightslayer"] = { 11, 9, -159, 999 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 108 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 108 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 690 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 813 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 845 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 834 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 835 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 180 },
			["Astias|nightslayer"] = { 6, 4, 45, 682 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 656 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 1020 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 98 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 706 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 21 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 97 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 709 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 58 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 58 },
			["Bbangzz|dreamscythe"] = { 5, 3, 9, 58 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 849 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 841 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 656 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 1106 },
			["Onit|nightslayer"] = { 3, 4, -19, 721 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 958 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 661 },
			["Béon|nightslayer"] = { 4, 2, 13, 663 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 1096 },
			["Healobot|nightslayer"] = { 1, 2, -15, 701 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 958 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1001 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 726 },
		},
	},
}

