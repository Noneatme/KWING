--
-- This file was made by Noneatme.
-- User: Noneatme
-- Date: 14.12.2014
-- Time: 18:29
-- All rights reserved.
--

-- LAUNCH SELECTION --

cMain = {};
cMain.__index = cMain;

-- DOFILES --
-- Why do I use dofile? Because I need to get the classes into the global LUA VM namespace.
-- Require is a failure, so I use dofile to retrieve the classes.

dofile("screens/cMainScreen.lua");


--[[

]]

-- // New			   // --
-- // Returns: Object  // --

function cMain:new(...)
    local obj = setmetatable({}, {__index = self});
    if obj.constructor then
        obj:constructor(...);
    end
    return obj;
end

-- // InitRequirements	// --
-- // Returns: nil		// --

function cMain:initRequirements()
    -- Already done
end

-- // Constructor		// --
-- // Returns: nil		// --

function cMain:constructor(...)
    -- Init Requirements --
    self:initRequirements();

    -- Klassenvariablen --
    self.m_sGameName        = "KWING";
    self.m_uBlitwizard      = blitwizard;

    self.m_iWinWidth        = 800;
    self.m_iWinHeight       = 450;

    self.m_tblScreens       =
    {
        cMainScreen:new();
    };

    self.m_iSelectedScreen  = 1;

    -- Init the Main Game
    blitwizard.graphics.setMode(self.m_iWinWidth, self.m_iWinHeight, self.m_sGameName, false);

    -- Init the Camera / DONE

end


-- // BLITZWIZARD  // --

-- // OnInit            // --
-- // Returns: Void -- // --
function blitwizard.onInit()
    print("onInit() Called, entering Game");
    Main = cMain:new();
end

-- // onClose            // --
-- // Returns: Void -- // --
function blitwizard.onClose()
    print("onClose() Called, destroying Game");
    print("Thanks for playing "..Main.m_sGameName.."!")
    os.exit(0)
end


