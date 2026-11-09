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
	built = 1794247114,
	builtText = "2026-11-09 12:58 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 141 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 178 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 178 },
			["Bbangzz|dreamscythe"] = { 5, 1, 18, 100 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 100 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 64 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 228 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 228 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 100 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 218 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 141 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 217 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 178 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 178 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 100 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 64 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 300 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 228 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 228 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 100 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 218 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 141 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 217 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 178 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 178 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 100 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 64 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 300 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 898 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 898 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 923 },
			["Mßison|nightslayer"] = { 13, 10, -5, 923 },
			["Creation|nightslayer"] = { 11, 9, -159, 1119 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 228 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 228 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 810 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 933 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 965 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 954 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 955 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 300 },
			["Astias|nightslayer"] = { 6, 4, 45, 802 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 100 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 776 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 1140 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 218 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 826 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 141 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 217 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 829 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 178 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 178 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 969 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 961 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 776 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 1226 },
			["Onit|nightslayer"] = { 3, 4, -19, 841 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 1078 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 781 },
			["Béon|nightslayer"] = { 4, 2, 13, 783 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 1216 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 100 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 64 },
			["Healobot|nightslayer"] = { 1, 2, -15, 821 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1078 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1121 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 846 },
		},
	},
}

