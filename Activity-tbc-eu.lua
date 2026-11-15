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
	built = 1794772759,
	builtText = "2026-11-15 02:59 PM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
		[1] = {
			["Blazedx|spineshatter"] = { 9, 11, -31, 38 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 44, 35 },
			["Пиноккио|anniversary"] = { 4, 4, -30, 45 },
			["Сократ|anniversary"] = { 4, 4, -30, 48 },
			["Karoups|spineshatter"] = { 1, 4, -33, 8 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 55 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 37 },
		},
	},
	[3] = {  -- the last 3 hour(s)
		[1] = {
			["Blazedx|spineshatter"] = { 11, 12, -25, 38 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 102 },
			["Adpt|spineshatter"] = { 5, 5, -8, 61 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 61 },
			["Dominus|spineshatter"] = { 8, 2, 41, 165 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 151 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 152 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 44, 35 },
			["Пиноккио|anniversary"] = { 4, 4, -30, 45 },
			["Сократ|anniversary"] = { 4, 4, -30, 48 },
			["Twatcatcher|spineshatter"] = { 6, 1, 46, 91 },
			["Doko|spineshatter"] = { 3, 2, 20, 144 },
			["Karoups|spineshatter"] = { 1, 4, -33, 8 },
			["Walida|spineshatter"] = { 3, 2, 20, 145 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 55 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 37 },
			["Klissang|spineshatter"] = { 2, 1, 6, 165 },
		},
	},
	[6] = {  -- the last 6 hour(s)
		[1] = {
			["Blazedx|spineshatter"] = { 11, 12, -25, 38 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 102 },
			["Karoups|spineshatter"] = { 13, 7, 26, 8 },
			["Oldp|spineshatter"] = { 12, 3, 83, 272 },
			["Adpt|spineshatter"] = { 5, 5, -8, 61 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 345 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 61 },
			["Dominus|spineshatter"] = { 8, 2, 41, 165 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 151 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 152 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 44, 35 },
			["Пиноккио|anniversary"] = { 4, 4, -30, 45 },
			["Сократ|anniversary"] = { 4, 4, -30, 48 },
			["Twatcatcher|spineshatter"] = { 6, 1, 46, 91 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 260 },
			["Doko|spineshatter"] = { 3, 2, 20, 144 },
			["Walida|spineshatter"] = { 3, 2, 20, 145 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 260 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 55 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 345 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 37 },
			["Klissang|spineshatter"] = { 2, 1, 6, 165 },
		},
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Blazedx|spineshatter"] = { 11, 12, -25, 38 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 102 },
			["Karoups|spineshatter"] = { 13, 7, 26, 8 },
			["Oldp|spineshatter"] = { 12, 3, 83, 272 },
			["Adpt|spineshatter"] = { 5, 5, -8, 61 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 345 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 61 },
			["Dominus|spineshatter"] = { 8, 2, 41, 165 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 151 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 152 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 44, 35 },
			["Пиноккио|anniversary"] = { 4, 4, -30, 45 },
			["Сократ|anniversary"] = { 4, 4, -30, 48 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 391 },
			["Twatcatcher|spineshatter"] = { 6, 1, 46, 91 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 391 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 260 },
			["Doko|spineshatter"] = { 3, 2, 20, 144 },
			["Walida|spineshatter"] = { 3, 2, 20, 145 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 260 },
			["Keepdistance|spineshatter"] = { 3, 1, 14, 55 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 345 },
			["Radamsa|spineshatter"] = { 3, 1, 14, 37 },
			["Klissang|spineshatter"] = { 2, 1, 6, 165 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Пиноккио|anniversary"] = { 18, 10, 2, 45 },
			["Сократ|anniversary"] = { 18, 10, 2, 48 },
			["Orcabrina|spineshatter"] = { 13, 11, -12, 1223 },
			["Sustanøn|spineshatter"] = { 13, 11, -9, 1223 },
			["Blazedx|spineshatter"] = { 11, 12, -25, 38 },
			["Dapqueue|spineshatter"] = { 14, 7, 51, 102 },
			["Karoups|spineshatter"] = { 13, 7, 26, 8 },
			["Crymez|thunderstrike"] = { 12, 7, 41, 1245 },
			["Darcula|thunderstrike"] = { 12, 7, 41, 1245 },
			["Imzomba|spineshatter"] = { 10, 7, 9, 1065 },
			["Oldp|spineshatter"] = { 12, 3, 83, 272 },
			["Formen|thunderstrike"] = { 7, 7, 28, 1425 },
			["Keepdistance|spineshatter"] = { 6, 8, -4, 55 },
			["Neryk|thunderstrike"] = { 7, 7, 69, 1424 },
			["Radamsa|spineshatter"] = { 6, 8, -4, 37 },
			["Kirkoss|spineshatter"] = { 10, 2, 24, 1425 },
			["Zapaxctpaxa|spineshatter"] = { 10, 2, 24, 1425 },
			["Garad|spineshatter"] = { 8, 3, 51, 1167 },
			["Tyzin|spineshatter"] = { 8, 3, 51, 1228 },
			["Adpt|spineshatter"] = { 5, 5, -8, 61 },
			["Btchsamback|spineshatter"] = { 7, 3, 31, 345 },
			["Chopchopmdfk|spineshatter"] = { 5, 5, -11, 61 },
			["Dominus|spineshatter"] = { 8, 2, 41, 165 },
			["Karolxgodx|spineshatter"] = { 7, 3, -15, 151 },
			["Norbertpl|spineshatter"] = { 7, 3, -15, 152 },
			["Vidykravicka|thunderstrike"] = { 7, 3, 44, 35 },
			["Rhythmictwo|spineshatter"] = { 5, 2, 22, 391 },
			["Setupxd|spineshatter"] = { 6, 1, 12, 1065 },
			["Twatcatcher|spineshatter"] = { 6, 1, 46, 91 },
			["Zlodey|spineshatter"] = { 5, 2, 22, 391 },
			["Ethanpri|thunderstrike"] = { 6, 0, 38, 1388 },
			["Ilovejade|spineshatter"] = { 5, 1, 18, 1316 },
			["Invinciblexx|spineshatter"] = { 5, 1, 18, 1314 },
			["Kzuu|thunderstrike"] = { 6, 0, 38, 1390 },
			["Oreshnikgodx|spineshatter"] = { 0, 6, -63, 1425 },
			["Crucifyer|spineshatter"] = { 3, 2, -29, 260 },
			["Doko|spineshatter"] = { 3, 2, 20, 144 },
			["Enhbeastx|spineshatter"] = { 1, 4, -31, 1254 },
			["Premier|spineshatter"] = { 1, 4, -35, 1255 },
			["Walida|spineshatter"] = { 3, 2, 20, 145 },
			["Yohoô|spineshatter"] = { 3, 2, -20, 260 },
			["Legendâry|spineshatter"] = { 1, 3, -48, 345 },
			["Nimmsi|thunderstrike"] = { 1, 3, -29, 1335 },
			["Phukkhislife|thunderstrike"] = { 1, 3, -29, 1335 },
			["Klissang|spineshatter"] = { 2, 1, 6, 165 },
			["Inflamed|spineshatter"] = { 1, 1, -9, 1176 },
			["Roobey|spineshatter"] = { 1, 1, -8, 1196 },
			["Hakosukazx|spineshatter"] = { 0, 1, -10, 1425 },
		},
		[2] = {
			["Kunamoota|thunderstrike"] = { 2, 1, -8, 1245 },
		},
	},
}

