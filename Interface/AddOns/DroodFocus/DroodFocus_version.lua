----------------------------------------------------------------------------------------------------
-- DroodFocus 5.2.3
-- Author : Meranannon - Insane - Vol'jin (EU)
-- rev 1
----------------------------------------------------------------------------------------------------

-- version [text]
DROODFOCUS_VERSION = "5.2.3"

-- version [number]
DROODFOCUS_CONFIGVERSION = 523

DF_namespace = {}
DF_namespace.works={}
DF_namespace.works.spells={}

DF_namespace.DroodFGameTooltip = CreateFrame("GameTooltip","DroodFocusOptionToolTip",nil,"GameTooltipTemplate")
DF_namespace.DroodFGameTooltip:SetOwner(UIParent, "ANCHOR_NONE")
