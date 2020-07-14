--[[
 * ReaScript Name: CP_Cycle Channel Mode
 * Author: Chris Prunotto
 * Author URI: www.chrisprunotto.com
 * Repository: https://github.com/ChrisPrunotto/ReaperResources
 * Licence: GPL v3
 * REAPER: 6.12c
 * Version: 1.0
--]]

--[[
 * Description: Cycles from Stereo to Stereo Reverse to to Downmix, to mono L, to mono R and then back to Stereo
 * Instructions: Select items. Run.
--]]

--[[
 * Changelog:
 * v1.0 (2020-07-14)
      + Initial Release
--]]

-- functions --
function main()
  for i = 0, reaper.CountSelectedMediaItems(0) - 1 do
    local item = reaper.GetSelectedMediaItem(0,i)
    local take = reaper.GetActiveTake(item)
  
    if reaper.GetMediaItemTakeInfo_Value(take, "I_CHANMODE") < 4 
    then 
      reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", reaper.GetMediaItemTakeInfo_Value(take, "I_CHANMODE")+1)
      elseif reaper.GetMediaItemTakeInfo_Value(take, "I_CHANMODE") >= 4 
      then
        reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", 0)
    end
  end
end

-- program --
reaper.PreventUIRefresh(1)
reaper.Undo_BeginBlock()
main()
reaper.Undo_EndBlock("Cycle Channel Mode", -1)
reaper.UpdateArrange()
reaper.PreventUIRefresh(-1)
