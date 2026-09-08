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
-- Region us, season 14, cutoffs last changed 2026-09-07 10:15 AM, last checked 2026-09-08 03:00 PM.
ns.CUTOFFS_BY_REGION = ns.CUTOFFS_BY_REGION or {}

ns.CUTOFFS_BY_REGION["us"] = {
	region  = "us",
	updated = "2026-09-07 10:15 AM",
	checked = "2026-09-08 03:00 PM",
	checkedEpoch = 1788894012,

	[1] = { r1=2527, gladiator=2234, duelist=2077, rival=1809, challenger=1056 }, -- 2v2
	[2] = { r1=2400, gladiator=1909, duelist=1818, rival=1618, challenger=864 }, -- 3v3
	[3] = { r1=2030, gladiator=1150, duelist=1056, rival=864, challenger=480 }, -- 5v5
	[4] = { r1=2011, duelist=1851, rival=1733, challenger=1449 }, -- rbg
}

-- How many places each fixed-count title is worth. Blizzard does not publish
-- these, so they are counted off the ladder: everybody at or above the cutoff.
ns.CUTOFF_SLOTS_BY_REGION = ns.CUTOFF_SLOTS_BY_REGION or {}

ns.CUTOFF_SLOTS_BY_REGION["us"] = {
	[1] = { r1=32, gladiator=208, duelist=497, rival=1654 }, -- 2v2
	[2] = { r1=23, gladiator=189, duelist=223, rival=314, challenger=644 }, -- 3v3
	[3] = { r1=15, gladiator=113, duelist=119, rival=137, challenger=198 }, -- 5v5
	[4] = { r1=3, duelist=8, rival=25, challenger=118 }, -- rbg
}
