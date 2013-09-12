unresolvedItemIds = {}

-- Create a new class that inherits from a base class
function inheritsFrom( baseClass )

    -- The following lines are equivalent to the SimpleClass example:

    -- Create the table and metatable representing the class.
    local new_class = {}

    -- Note that this function uses class_mt as an upvalue, so every instance
    -- of the class will share the same metatable.
    --
  --   function new_class:create(o)
  --   	o = o or {}
		-- setmetatable( o, class_mt )
		-- return o
  --    end

    -- The following is the key to implementing inheritance:

    -- The __index member of the new class's metatable references the
    -- base class.  This implies that all methods of the base class will
    -- be exposed to the sub-class, and that the sub-class can override
    -- any of these methods.
    --
    if baseClass then
        setmetatable( new_class, { __index = baseClass } )
    end

    return new_class
end

function pack(...)
  return arg
end

local itemInfoFrame = nil;

function onGetItemInfoReceived()
	-- since wow is awesome, it doesn't tell us *which* item id was just resolved, so we have to look at them all
	for itemId, callbacks in pairs(unresolvedItemIds) do
		-- attempt to get the item info AGAIN
		local a, b, c, d, e, f, g, h, i, j, k = GetItemInfo(itemId)
		-- if we got item info...
		if a then
			-- remove the callbacks from the list
			unresolvedItemIds[itemId] = nil

			-- call each callback
			for i = 1, #callbacks do
				callbacks[i](a, b, c, d, e, f, g, h, i, j, k)
			end
		end
	end
end


function RegisterItemInfoCallback(itemId, callback)
	if not itemId then
		return
	end

	if not itemInfoFrame then
	    waitFrame = CreateFrame("Frame","WaitFrame", UIParent);
	    waitFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
	    waitFrame:SetScript("OnEvent", onGetItemInfoReceived);
	end


	-- get the list of registered callbacks for this particular item
	local list = unresolvedItemIds[itemId]
	-- if there was a list, then just add the callback to the list
	if list then
		tinsert(list, callback)
	else
		-- there wasn't a list, so make a new one with this callback
		unresolvedItemIds[itemId] = { callback }
	end
end
function getItemIdFromLink(item)
	if not item then return 0 end
	local id = tonumber (item:match ("item:(%d+):%d+:%d+:%d+:%d+:%d+:%-?%d+:%-?%d+:%d+:%d+"))
	return (id and id ~= 0 and id or 0)
end

-- initialize the Frame class (inherit from a dummy frame)
Frame = inheritsFrom(CreateFrame("Frame"))

-- Frame contructor
function Frame:new(name, parentFrame, inheritsFrame)
	-- create a new frame (if one isn't supplied)
	o = CreateFrame("Frame", name, parentFrame, inheritsFrame)

	-- use the ItemTooltipFrame class
	setmetatable(o, { __index = Frame })

	-- return the instance of the Frame
	return o
end

local MAINHAND = nil
local OFFHAND = nil

slotNames = {"HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot", "ShirtSlot", "TabardSlot", "WristSlot", "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot", "Finger0Slot", "Finger1Slot", "Trinket0Slot", "Trinket1Slot", "MainHandSlot", "SecondaryHandSlot", "AmmoSlot" };
AmrOptimizationSlots = {}
slotIdToSlotNum = {}
slotIds = {};
for slotNum = 1, #slotNames do
	local slotId = GetInventorySlotInfo(slotNames[slotNum])
	slotIds[slotNum] = slotId
	slotIdToSlotNum[slotId] = slotNum
	local slotName = slotNames[slotNum]
	if slotName == "MainHandSlot" then
		MAINHAND = slotNum
	end
	if slotName == "SecondaryHandSlot" then
		OFFHAND = slotNum
	end
	if slotName ~= "TabardSlot" and slotName ~= "AmmoSlot" and slotName ~= "ShirtSlot" then
		AmrOptimizationSlots[slotNum] = true
	end

end

sortedSlots = {[MAINHAND] = 1, [OFFHAND] = 2}

local i = 3
for slotNum = 1, #slotNames do
	if slotNum ~= MAINHAND and slotNum ~= OFFHAND then
		sortedSlots[slotNum] = i
		i = i + 1
	end
end


-- initialize the Frame class (inherit from a dummy frame)
FontString = inheritsFrom(Frame:new():CreateFontString(nil, "ARTWORK", "GameFontNormal"))

-- Frame contructor
function FontString:new(parentFrame, name, layer, style, fontSize)

	local o = parentFrame:CreateFontString(name, layer, style)	-- create a new frame (if one isn't supplied)

	-- use the ItemTooltipFrame class
	setmetatable(o, { __index = FontString })

	if fontSize then
		o:SetFontSize(fontSize)
	end

	return o
end

function FontString:SetFontSize(fontSize)
	local file, _, flags = self:GetFont()
	self:SetFont(file, fontSize, flags)
end

function SetFontSize(fontString, fontSize)
	local file, _, flags = fontString:GetFont()
	fontString:SetFont(file, fontSize, flags)
end