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
	built = 1794243514,
	builtText = "2026-11-09 11:58 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Jodaldal|nightslayer"] = { 4, 0, 12, 40 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 4 },
			["Bbangzz|dreamscythe"] = { 2, 0, 12, 40 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 168 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 168 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 40 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 158 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 81 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 157 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 118 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 118 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 40 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 4 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 168 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 168 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 40 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 158 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 81 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 157 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 118 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 118 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 40 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 4 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 240 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Cybee|dreamscythe"] = { 6, 10, -25, 168 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 168 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 40 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 716 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 158 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 81 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 157 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 118 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 118 },
			["Checkmater|nightslayer"] = { 2, 4, -31, 716 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 40 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 4 },
			["Deezbloomz|nightslayer"] = { 0, 3, -28, 240 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Cheryxx|nightslayer"] = { 12, 11, 84, 838 },
			["Gimlidabest|nightslayer"] = { 12, 11, 85, 838 },
			["Lutenantdan|nightslayer"] = { 13, 10, -5, 863 },
			["Mßison|nightslayer"] = { 13, 10, -5, 863 },
			["Creation|nightslayer"] = { 11, 9, -159, 1059 },
			["Cybee|dreamscythe"] = { 6, 10, -25, 168 },
			["Cycnuz|dreamscythe"] = { 6, 10, -25, 168 },
			["Oxwm|dreamscythe"] = { 13, 3, -27, 750 },
			["Ballinbechz|nightslayer"] = { 10, 5, 30, 873 },
			["Falçanus|nightslayer"] = { 10, 5, 30, 905 },
			["Ragequitqtt|nightslayer"] = { 4, 11, -72, 894 },
			["ßraxtør|nightslayer"] = { 4, 11, -72, 895 },
			["Deezbloomz|nightslayer"] = { 6, 8, -43, 240 },
			["Astias|nightslayer"] = { 6, 4, 45, 742 },
			["Bbangzz|dreamscythe"] = { 7, 3, 21, 40 },
			["Fleegs|nightslayer"] = { 6, 4, 2, 716 },
			["Hayleyatwell|nightslayer"] = { 5, 5, 28, 1080 },
			["Namkijun|nightslayer"] = { 6, 4, 29, 158 },
			["Profesrcloak|dreamscythe"] = { 7, 3, 78, 766 },
			["Shikumunss|dreamscythe"] = { 7, 3, 21, 81 },
			["Slowfast|nightslayer"] = { 6, 4, 20, 157 },
			["Tenetd|dreamscythe"] = { 7, 3, 29, 769 },
			["Gaekpoong|nightslayer"] = { 9, 0, 45, 118 },
			["Gwedysseus|nightslayer"] = { 9, 0, 47, 118 },
			["Dinnoo|nightslayer"] = { 4, 4, -20, 909 },
			["Plasticsurgn|nightslayer"] = { 4, 4, -20, 901 },
			["Checkmater|nightslayer"] = { 3, 4, -19, 716 },
			["Kohhan|nightslayer"] = { 7, 0, 51, 1166 },
			["Onit|nightslayer"] = { 3, 4, -19, 781 },
			["Tnyni|nightslayer"] = { 7, 0, 51, 1018 },
			["Bazooko|nightslayer"] = { 4, 2, 13, 721 },
			["Béon|nightslayer"] = { 4, 2, 13, 723 },
			["Icedancee|nightslayer"] = { 1, 5, -18, 1156 },
			["Jodaldal|nightslayer"] = { 4, 0, 12, 40 },
			["Sunnyslow|nightslayer"] = { 4, 0, 8, 4 },
			["Healobot|nightslayer"] = { 1, 2, -15, 761 },
			["Aryarogue|nightslayer"] = { 0, 1, -13, 1018 },
			["Blitzzkìn|nightslayer"] = { 0, 1, -18, 1061 },
			["Jamzki|nightslayer"] = { 0, 1, -21, 786 },
		},
	},
}

