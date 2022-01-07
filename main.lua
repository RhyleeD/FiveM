-- RSN Development. 
-- Example {title="Name of Blip", colour=5, id=ID OF blip, x = -347.291, y = -133.370, z = 38.009},
-- Get your Blip IDS from https://docs.fivem.net/docs/game-references/blips/


local blips = {

    --LS Customs/Repair Shop
     {title="LS Customs", colour=5, id=446, x = -347.291, y = -133.370, z = 38.009},
    
     --Banks
     {title="Pacific Standard Bank", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287},
     {title="Blaine County Savings", colour=30, id=108, x = -111.06, y = 6462.8, z = 31.64},
     {title="Fleeca Bank", colour=30, id=108, x = 1175.25, y = 2703.14, z = 38,17},
     {title="Fleeca Bank", colour=30, id=108, x = -2966.28, y = 482.98, z = 15.69},
     {title="Fleeca Bank", colour=30, id=108, x = -1214.4, y = -327.5, z = 37.67},
     {title="Fleeca Bank", colour=30, id=108, x =  150.98, y = -1037.26, z = 29.34},

    --ATM
      {title="ATM", colour=30, id=108, x = 112.91, y = -775.61, z = 31.43},
      
     --AmmuNation
     {title="AmmuNation", colour=30, id=110, x = 1699.4, y = 3752.21, z = 34.71},
     {title="AmmuNation", colour=30, id=110, x = -1112.63, y = 2690.13, z = 18.59},
     {title="AmmuNation", colour=30, id=110, x = -324.76, y = 6075.75, z = 31.25},
     {title="AmmuNation", colour=30, id=110, x = -3163.54, y = 1082.3, z = 63.31},
     {title="AmmuNation", colour=30, id=110, x = -1314.82, y = -390.05, z = 36.59},
     {title="AmmuNation", colour=30, id=110, x = -663.99, y = -944.83, z = 21.79},
     {title="AmmuNation", colour=30, id=110, x = 17.18, y = -1115.61, z = 29.79},
     {title="AmmuNation", colour=30, id=110, x = 243.74, y = -44.88, z = 69.9},
     {title="AmmuNation", colour=30, id=110, x = 843.94, y = -1024.9, z = 28.07},
     {title="AmmuNation", colour=30, id=110, x = 811.93, y = -2147.77, z = 29.52},
     
     --Job Centre
    {title="Job Centre", colour=30, id=351, x = -261.19, y = -971.53, z = 31.22},


  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)