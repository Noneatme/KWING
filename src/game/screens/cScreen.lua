--
-- This file was made by Noneatme.
-- User: Noneatme
-- Date: 14.12.2014
-- Time: 21:39
-- All rights reserved.
--

cScreen = inherit(blitwizard.object);
--[[

]]

-- // New			   // --
-- // Returns: Object  // --

function cScreen:new(...)
	local obj = setmetatable({}, {__index = self});
	if obj.constructor then
		obj:constructor(...);
	end
	return obj;
end


-- // Constructor		// --
-- // Returns: nil		// --
-- The Mother Class --

function cScreen:constructor(...)
	-- Klassenvariablen --
	self.m_sScreenName          = "undefined";
	self.m_sScreenID            = 0;

	-- Methoden --


	-- Events --


	-- // doAlways        		// --
	-- // Returns: nil		// --
	function self:onGeometryLoaded()
		print("hi")
		function self:doAlways()

			self:render();
		end
	end
end

-- // SetID        		// --
-- // Returns: nil		// --

function cScreen:setID(iID)
	self.m_sScreenID            = iID;
	return self.m_sScreenID;
end


-- // GetID        		// --
-- // Returns: nil		// --

function cScreen:getID()
	return self.m_sScreenID;
end


-- EVENT HANDLER --
