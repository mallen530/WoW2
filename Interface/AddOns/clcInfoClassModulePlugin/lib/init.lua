------------------------------------------------------------------------------
-- $Id$
------------------------------------------------------------------------------
--                            init.lua
--
--    Copyright (C) 2012 Geminior
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU Lesser General Public License as published
--  by the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU Lesser General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
--  This file is used to create class module plugins for clcInfo by abija.
--
--  abija has distributed clcInfo All Rights Reserved.  For more information
--  go to: http://wow.curseforge.com/addons/clctracker/
--
------------------------------------------------------------------------------
-- Author:
--      Geminior (@ Earthen Ring)
------------------------------------------------------------------------------
local clcInfo = clcInfo
if not clcInfo then return end -- cannot function without clcInfo present

local MAJOR, MINOR = "clcInfoClassModulePlugin", 1

local clcInfoPlugin, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not clcInfoPlugin then
	-- no upgrade needed, need to inform the rest of the files of this fact so they can skip loading as well
	local _, parent = ...
	parent.clcInfoClassModulePluginLoaded = true
	parent = nil
	return 
end 