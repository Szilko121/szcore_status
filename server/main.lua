local function values(src)
    local p=exports.szcore:GetPlayer(src)
    if not p then return nil end
    local m=p.PlayerData.metadata or {}
    return p,{hunger=tonumber(m.hunger)or 100,thirst=tonumber(m.thirst)or 100,stress=tonumber(m.stress)or 0}
end
local function set(src,key,value)
    local p=exports.szcore:GetPlayer(src); if not p then return false end
    value=math.max(0,math.min(100,tonumber(value)or 0))
    return p.setMetadata(key,value)
end
exports('GetStatus',function(src,key)local _,s=values(src);return s and(key and s[key]or s)end)
exports('SetStatus',set)
exports('AddStatus',function(src,k,n)local _,s=values(src);local v=s and s[k];return v~=nil and set(src,k,v+(tonumber(n)or 0))or false end)
exports('RemoveStatus',function(src,k,n)local _,s=values(src);local v=s and s[k];return v~=nil and set(src,k,v-(tonumber(n)or 0))or false end)
exports.szcore:RegisterSecureEvent('szcore_status:tick',{rate={count=2,window=SzCoreStatusConfig.tickMs-5000},requirePlayer=true,schema={activity='table'}},function(src,payload)
    local p,s=values(src);if not p then return end
    local a=payload.activity or {}
    s.hunger=math.max(0,s.hunger-SzCoreStatusConfig.hungerLoss-(a.sprinting and SzCoreStatusConfig.sprintExtra or 0))
    s.thirst=math.max(0,s.thirst-SzCoreStatusConfig.thirstLoss-(a.sprinting and SzCoreStatusConfig.sprintExtra or 0))
    s.stress=math.max(0,math.min(100,s.stress+(a.drivingFast and SzCoreStatusConfig.fastDriveStress or 0)))
    p.setMetadata('hunger',s.hunger);p.setMetadata('thirst',s.thirst);p.setMetadata('stress',s.stress)
    TriggerClientEvent('szcore_status:update',src,{hunger=s.hunger,thirst=s.thirst,stress=s.stress,damage=(s.hunger==0 and SzCoreStatusConfig.starveDamage or 0)+(s.thirst==0 and SzCoreStatusConfig.dehydrateDamage or 0)})
end)
