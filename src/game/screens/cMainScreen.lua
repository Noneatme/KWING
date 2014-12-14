--
-- This file was made by Noneatme.
-- User: Noneatme
-- Date: 14.12.2014
-- Time: 21:29
-- All rights reserved.
--



-- Fuer Vererbung --
dofile("shared.utils.class.lua");
dofile("screens/cScreen.lua");

-- Inherit the Screen --
cMainScreen = inherit(cScreen);


-- // New			   // --
-- // Returns: Object  // --

function cMainScreen:new(...)
	local obj = setmetatable({}, {__index = self});
	if obj.constructor then
		obj:constructor(...);
	end
	return obj;
end

-- // Render    		// --
-- // Returns: nil		// --

function cMainScreen:render(...)
	print("hi");
end

-- // Constructor		// --
-- // Returns: nil		// --

function cMainScreen:constructor(...)
	-- Klassenvariablen --

	-- Methoden --
	self:setID(1);  -- MAIN SCREEN

	-- Events --
end


-- EVENT HANDLER --


