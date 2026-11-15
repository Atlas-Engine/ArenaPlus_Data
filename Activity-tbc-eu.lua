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
	built = 1794769167,
	builtText = "2026-11-15 01:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 6, 5, -2, 42 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 14, 7, 51, 42 },
			["Dominus|spineshatter"] = { 8, 2, 41, 105 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 91 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 92 },
			["Doko|spineshatter"] = { 3, 2, 20, 85 },
			["Walida|spineshatter"] = { 3, 2, 20, 85 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 105 },
			["Klissang|spineshatter"] = { 2, 1, 6, 105 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 14, 7, 51, 42 },
			["Karoups|spineshatter"] = { 12, 3, 59, 214 },
			["Oldp|spineshatter"] = { 12, 3, 83, 212 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 285 },
			["Dominus|spineshatter"] = { 8, 2, 41, 105 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 91 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 92 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 331 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 331 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 200 },
			["Doko|spineshatter"] = { 3, 2, 20, 85 },
			["Walida|spineshatter"] = { 3, 2, 20, 85 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 200 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 285 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 105 },
			["Klissang|spineshatter"] = { 2, 1, 6, 105 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Dapqueue|spineshatter"] = { 14, 7, 51, 42 },
			["Karoups|spineshatter"] = { 12, 3, 59, 214 },
			["Oldp|spineshatter"] = { 12, 3, 83, 212 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 285 },
			["Dominus|spineshatter"] = { 8, 2, 41, 105 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 91 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 92 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 331 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 331 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 200 },
			["Doko|spineshatter"] = { 3, 2, 20, 85 },
			["Walida|spineshatter"] = { 3, 2, 20, 85 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 200 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 285 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 105 },
			["Klissang|spineshatter"] = { 2, 1, 6, 105 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Orcabrina|spineshatter"] = { 13, 11, -12, 1163 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 1163 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 42 },
			["Пиноккио|anniversary"] = { 14, 6, 32, 1061 },
			["Сократ|anniversary"] = { 14, 6, 32, 1028 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 1185 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 1185 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 1005 },
			["Karoups|spineshatter"] = { 12, 3, 59, 214 },
			["Oldp|spineshatter"] = { 12, 3, 83, 212 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1365 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1364 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1365 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1365 },
			["Garad|spineshatter"] = { 8, 3, 51, 1108 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 1168 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 285 },
			["Dominus|spineshatter"] = { 8, 2, 41, 105 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 91 },
			["Keepdistance|spineshatter"] = { 3, 7, -18, 1304 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 92 },
			["Radamsa|spineshatter"] = { 3, 7, -18, 1303 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 331 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 1005 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 331 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 1329 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 1256 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 1255 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 1330 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1365 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 200 },
			["Doko|spineshatter"] = { 3, 2, 20, 85 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 1194 },
			["Premier|spineshatter"] = { 1, 4, -35, 1195 },
			["Walida|spineshatter"] = { 3, 2, 20, 85 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 200 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 285 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 1275 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 1275 },
			["Blazedx|spineshatter"] = { 2, 1, 6, 105 },
			["Klissang|spineshatter"] = { 2, 1, 6, 105 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 1116 },
			["Roobey|spineshatter"] = { 1, 1, -8, 1136 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 1365 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 1185 },
		},
	},
}

