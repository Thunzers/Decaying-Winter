-- Simpily generates a key many remotes use
-- For context, most of the "important" remotes have an argument, of a randomly generated number between -10000 and 10000
-- Using the wrong number, or no number at all, will instantly ban you.
-- This line of code simpily generates that key, preventing a ban.

local Key = getrenv()._G.pseed[getrenv()._G.list[workspace.ServerStuff.ask:InvokeServer("main", true)]]
