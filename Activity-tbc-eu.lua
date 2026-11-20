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
	built = 1795175958,
	builtText = "2026-11-20 06:59 AM",
	windows = { 1, 3, 6, 12, 24 },
	[1] = {  -- the last 1 hour(s)
	},
	[3] = {  -- the last 3 hour(s)
	},
	[6] = {  -- the last 6 hour(s)
	},
	[12] = {  -- the last 12 hour(s)
		[1] = {
			["Grimroll|thunderstrike"] = { 10, 6, 37, 693 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 585 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 702 },
		},
	},
	[24] = {  -- the last 24 hour(s)
		[1] = {
			["Rli|spineshatter"] = { 22, 9, 1, 817 },
			["Summerjam|spineshatter"] = { 22, 9, 4, 815 },
			["Forksache|spineshatter"] = { 12, 11, -73, 851 },
			["Akaaii|spineshatter"] = { 19, 3, 118, 1305 },
			["Orcabrina|spineshatter"] = { 12, 7, 22, 765 },
			["Sustanøn|spineshatter"] = { 12, 7, 6, 772 },
			["Snupydawg|spineshatter"] = { 11, 7, 39, 861 },
			["Zazazazaa|spineshatter"] = { 11, 7, 39, 882 },
			["Grimroll|thunderstrike"] = { 10, 6, 37, 693 },
			["Ellilol|thunderstrike"] = { 8, 5, -10, 941 },
			["Shadøwsfall|thunderstrike"] = { 8, 5, -10, 942 },
			["Alisanne|spineshatter"] = { 7, 4, 18, 827 },
			["Sheezlong|spineshatter"] = { 7, 4, 18, 826 },
			["Bananagram|spineshatter"] = { 6, 4, 32, 765 },
			["Jaguár|spineshatter"] = { 6, 4, 31, 812 },
			["Mblol|spineshatter"] = { 6, 1, 32, 765 },
			["Notagainqt|spineshatter"] = { 6, 1, 32, 765 },
			["Reasonicus|spineshatter"] = { 3, 4, -59, 930 },
			["Vincentxd|spineshatter"] = { 3, 4, -59, 930 },
			["Weatherboy|spineshatter"] = { 1, 4, -40, 838 },
			["Mfkaxx|spineshatter"] = { 1, 3, -30, 585 },
			["Yæmz|spineshatter"] = { 1, 3, -45, 702 },
			["Davedosx|spineshatter"] = { 1, 2, -27, 765 },
			["Karoups|spineshatter"] = { 1, 2, -6, 857 },
			["Romkayob|spineshatter"] = { 1, 2, -27, 836 },
			["Bimbolo|spineshatter"] = { 0, 2, -30, 1125 },
			["Sunodaix|spineshatter"] = { 0, 2, -24, 765 },
		},
	},
}

