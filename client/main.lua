local last={hunger=100,thirst=100,stress=0}
RegisterNetEvent('szcore_status:update',function(s)
    last=s or last
    if (s.damage or 0)>0 then
        local p=PlayerPedId()
        SetEntityHealth(p,math.max(100,GetEntityHealth(p)-(s.damage or 0)))
    end
end)
CreateThread(function()
    while true do
        Wait(SzCoreStatusConfig.tickMs)
        if exports.szcore:IsPlayerLoaded()then
            local ped=PlayerPedId()
            local v=GetVehiclePedIsIn(ped,false)
            local sprint=IsPedSprinting(ped)or IsPedRunning(ped)
            local fast=v~=0 and GetEntitySpeed(v)*3.6>120
            TriggerServerEvent('szcore_status:tick',{sprinting=sprint,drivingFast=fast})
        end
    end
end)
CreateThread(function()
    while true do
        if(last.stress or 0)>=SzCoreStatusConfig.stressThreshold then
            local level=(last.stress-SzCoreStatusConfig.stressThreshold)/math.max(1,100-SzCoreStatusConfig.stressThreshold)
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE',math.min(.25,.03+level*.18))
            Wait(6500)
        else Wait(12000) end
    end
end)
