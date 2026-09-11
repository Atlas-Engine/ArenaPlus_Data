-- Shipped as its own addon so the ladder can be republished without reshipping
-- the code: this file was half of every ArenaPlus release.
--
-- Two addons cannot see each other's namespace, so the tables go on a global
-- and ArenaPlus copies them across as it loads. Same reason ArenaPlusAPI is a
-- global -- see the note above it in ArenaPlus\Core.lua.
--
-- The local keeps its name so the generated body below needs no changes.
ArenaPlusData = ArenaPlusData or {}
local ns = ArenaPlusData

-- Arena title cutoffs, written by tools\UpdateFromBlizzard.ps1 from Blizzard's
-- own API. Do not edit by hand: rerun the script to refresh.
--
-- Region us, season 14, cutoffs last changed 2026-09-10 10:15 AM, last checked 2026-09-11 10:00 AM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-10 10:15 AM",
	checked = "2026-09-11 10:00 AM",
	checkedEpoch = 1789135212,

	[1] = { r1=2536, gladiator=2237, duelist=2075, rival=1812, challenger=1055 }, -- 2v2
	[2] = { r1=2400, gladiator=1922, duelist=1849, rival=1619, challenger=864 }, -- 3v3
	[3] = { r1=2045, gladiator=1151, duelist=1149, rival=960, challenger=480 }, -- 5v5
	[4] = { r1=2019, duelist=1851, rival=1738, challenger=1449 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=32, gladiator=207, duelist=521, rival=1667 }, -- 2v2
	[2] = { r1=24, gladiator=188, duelist=215, rival=314, challenger=649 }, -- 3v3
	[3] = { r1=17, gladiator=112, duelist=115, rival=135, challenger=200 }, -- 5v5
	[4] = { r1=3, duelist=8, rival=27, challenger=120 }, -- rbg
}
