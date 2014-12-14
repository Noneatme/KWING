-- GAME --
-- AUTHOR: NONEATME
-- VERSION: 1.0.0
-- ------

-- Override some Functions --
_print = print
local done = false;

-- PRINT
function print(Str, ...)
	-- String not set?
	if not(Str) then
		Str = "";
	end
	--  io.write(Str:format(...))
	-- Open file in Append mode
	local file = io.open("debug.log", "a");

	-- If done this run?
	if not(done) then
		file:write("\n\n<< Logging Session started at "..os.date("%x %X").." >>\n\n");
		done = true;
	end

	-- Write
	file:write("["..os.date("%x %X").."] "..Str.."\n");
	file:flush();
	file:close();

	-- Print the String
	_print(Str);
	-- End
end

-- Run the Game ?
os.chdir("game")
dofile("cMain.lua")

