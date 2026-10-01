local rate={}
local function clamp(v)return math.max(0,math.min(100,tonumber(v)or 0))end
local function get(src,key)local p=exports.szcore:GetPlayer(src);return p and clamp(p.getMetadata(key))or nil end
local function set(src,key,val)local p=exports.szcore:GetPlayer(src);if not p then return false end;return p.setMetadata(key,clamp(val))end
local function add(src,key,val)local x=get(src,key);if x==nil then return false end;return set(src,key,x+(tonumber(val)or 0))end
RegisterNetEvent('szcore_status:tick',function(activity)
    local src=source;local now=os.time();if rate[src]and now-rate[src]<45 then return end;rate[src]=now;local p=exports.szcore:GetPlayer(src);if not p then return end
    activity=type(activity)=='table'and activity or{};local mult=activity.sprinting and SzCoreStatusConfig.sprintHungerMultiplier or 1
    local tMult=activity.sprinting and SzCoreStatusConfig.sprintThirstMultiplier or 1
    local hunger=clamp((p.getMetadata('hunger')or 100)-SzCoreStatusConfig.hungerDecay*mult);local thirst=clamp((p.getMetadata('thirst')or 100)-SzCoreStatusConfig.thirstDecay*tMult)
    local stress=clamp(p.getMetadata('stress')or 0);if not activity.sprinting and not activity.drivingFast then stress=clamp(stress-SzCoreStatusConfig.stressDecayResting)end
    p.setMetadata('hunger',hunger);p.setMetadata('thirst',thirst);p.setMetadata('stress',stress)
    TriggerClientEvent('szcore_status:update',src,{hunger=hunger,thirst=thirst,stress=stress,damage=(hunger<=0 or thirst<=0)and SzCoreStatusConfig.zeroStatusDamage or 0})
end)
exports('GetStatus',get);exports('SetStatus',set);exports('AddStatus',add);exports('RemoveStatus',function(src,key,val)return add(src,key,-math.abs(tonumber(val)or 0))end)
AddEventHandler('playerDropped',function()rate[source]=nil end)
