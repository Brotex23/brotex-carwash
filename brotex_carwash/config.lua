Brotex = {}

Brotex.Settings = {
    CleaningPrice = 300, -- Change this value to set your price for a car wash.
    detailTime = 5000, -- How long it take for car wash
    iconui = 'car', -- Icon UI https://fontawesome.com/
    finishicon = 'car-side', -- Finish notify icon https://fontawesome.com/
    moneyicon = 'dollar-sign' -- Pay and no money icon  https://fontawesome.com/
}

Brotex.Translate = {
    title = 'Car Wash',
    pay = 'You paid 300$',
    carwashing = 'Car Washing...',
    washingfinish = 'Your vehicle has been cleaned, thanks for using Brotex Car Wash', 
    nomoney = 'You do not have enough cash',
    blip = 'Car Wash',
    textui = 'Car Wash'

}


Brotex.CarWash = {
    {
        coords = vec3(21.38, -1391.93, 29.33),
        size = vec3(7, 7, 2),
    },

    {
        coords = vec3(174.03, -1736.76, 29.29),
        size = vec3(7, 7, 2),
    },

    {
        coords =  vec3(-74.56, 6427.87, 31.44), 
        size = vec3(7, 7, 2),
    },

    {
        coords = vec3(1362.94, 3592.01, 34.92),
        size = vec3(7, 7, 2), 
    }, 

    {
        coords = vec3(-699.72, -933.46, 19.01),
        size = vec3(5, 5, 2)
    }

    -- example 
    --{
       -- coords = vec3(0, 0, 0),
       -- size = vec3(3, 3, 3)
    --}
}    

Brotex.Blips = {
    -- General Blip Settings
    {x = 25.29, y = -1391.96, z = 29.33}, 
    {x = 174.18, y = -1736.66, z = 29.35}, 
    {x = -74.56, y = 6427.87, z = 31.44}, 
    {x =  1363.22, y = 3592.7, z = 34.92},
    {x = -699.62, y = -932.7, z = 19.01},
    
    -- example 
    -- {x = coords, y = coords, z = coords}, 
}