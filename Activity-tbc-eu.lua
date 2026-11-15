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
	built = 1794765563,
	builtText = "2026-11-15 12:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 8, 2, 53, 45 },
			["Dominus|spineshatter"] = { 8, 2, 41, 45 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 31 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 32 },
			["Doko|spineshatter"] = { 3, 2, 20, 24 },
			["Walida|spineshatter"] = { 3, 2, 20, 25 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 45 },
			["Klissang|spineshatter"] = { 2, 1, 6, 45 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 8, 3, 41, 154 },
			["Oldp|spineshatter"] = { 8, 3, 59, 152 },
			["Dapqueue|spineshatter"] = { 8, 2, 53, 45 },
			["Dominus|spineshatter"] = { 8, 2, 41, 45 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 31 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 32 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 140 },
			["Doko|spineshatter"] = { 3, 2, 20, 24 },
			["Walida|spineshatter"] = { 3, 2, 20, 25 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 140 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 45 },
			["Klissang|spineshatter"] = { 2, 1, 6, 45 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 12, 3, 59, 154 },
			["Oldp|spineshatter"] = { 12, 3, 83, 152 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 225 },
			["Dapqueue|spineshatter"] = { 8, 2, 53, 45 },
			["Dominus|spineshatter"] = { 8, 2, 41, 45 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 31 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 32 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 271 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 271 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 140 },
			["Doko|spineshatter"] = { 3, 2, 20, 24 },
			["Walida|spineshatter"] = { 3, 2, 20, 25 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 140 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 225 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 45 },
			["Klissang|spineshatter"] = { 2, 1, 6, 45 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Karoups|spineshatter"] = { 12, 3, 59, 154 },
			["Oldp|spineshatter"] = { 12, 3, 83, 152 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 225 },
			["Dapqueue|spineshatter"] = { 8, 2, 53, 45 },
			["Dominus|spineshatter"] = { 8, 2, 41, 45 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 31 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 32 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 271 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 271 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 140 },
			["Doko|spineshatter"] = { 3, 2, 20, 24 },
			["Walida|spineshatter"] = { 3, 2, 20, 25 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 140 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 225 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 45 },
			["Klissang|spineshatter"] = { 2, 1, 6, 45 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 1103 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 1103 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 1001 },
			["Сократ|anniversary"] = { 14, 6, 32, 968 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 1125 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 1125 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 945 },
			["Karoups|spineshatter"] = { 12, 3, 59, 154 },
			["Oldp|spineshatter"] = { 12, 3, 83, 152 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1305 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1304 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1305 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1305 },
			["Garad|spineshatter"] = { 8, 3, 51, 1048 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 1108 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 225 },
			["Dapqueue|spineshatter"] = { 8, 2, 53, 45 },
			["Dominus|spineshatter"] = { 8, 2, 41, 45 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 31 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 1244 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 32 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 1243 },
			["Delivers|spineshatter"] = { 5, 3, 56, 1434 },
			["Druidcoachx|spineshatter"] = { 5, 3, 10, 1435 },
			["Hawkowl|spineshatter"] = { 6, 2, 29, 1435 },
			["Mblol|spineshatter"] = { 4, 4, -16, 1440 },
			["Nocthornal|spineshatter"] = { 6, 2, 49, 1435 },
			["Notagainqt|spineshatter"] = { 4, 4, -14, 1415 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 271 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 945 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 271 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 1269 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 1196 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 1194 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 1270 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1305 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 140 },
			["Doko|spineshatter"] = { 3, 2, 20, 24 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 1134 },
			["Premier|spineshatter"] = { 1, 4, -35, 1135 },
			["Walida|spineshatter"] = { 3, 2, 20, 25 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 140 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 225 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 1215 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 1215 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 45 },
			["Klissang|spineshatter"] = { 2, 1, 6, 45 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 1056 },
			["Roobey|spineshatter"] = { 1, 1, -8, 1076 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 1305 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 1125 },
		},
	},
}

