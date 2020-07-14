--[[
 * ReaScript Name: CP_Move Snap Offset To End of Media Item
 * Author: Chris Prunotto
 * Author URI: www.chrisprunotto.com
 * Repository: https://github.com/ChrisPrunotto/ReaperResources
 * Licence: GPL v3
 * REAPER: 6.12c
 * Version: 1.0
--]]

--[[
 * Description: Moves snap offset to the end of the media item. Useful when cutting loops!
 * Instructions: Select items. Run.
--]]
 
--[[
 * Changelog:
 * v1.0 (2020-07-15)
  + Initial Release
--]]

-- functions --
function main()
  for i = 0, reaper.CountSelectedMediaItems(0) - 1 do
    local item = reaper.GetSelectedMediaItem(0,i)
    local length = reaper.GetMediaItemInfo_Value(item, "D_LENGTH")
    reaper.SetMediaItemInfo_Value(item, "D_SNAPOFFSET", length)
  end
end

-- program --
reaper.PreventUIRefresh(1)
reaper.Undo_BeginBlock()
main()
reaper.Undo_EndBlock("Move Snap Offset to End of Media Item", -1)
reaper.UpdateArrange()
reaper.PreventUIRefresh(-1)
