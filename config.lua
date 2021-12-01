Config = {}

Config.Job = "pizza"

Config.Locations = {
    [1] = {coords = vector3(285.2629, -984.524, 29.433), text = "Drink Station", config = Drink},
    [2] = {coords = vector3(288.4255, -985.437, 29.433), text = "Prep Station", config = Prep},
    [3] = {coords = vector3(285.8505, -983.637, 29.433), text = "Dough Station", config = Dough},
    [4] = {coords = vector3(287.9841, -981.444, 29.433), text = "Oven", config = Oven},
    [5] = {coords = vector3(283.6477, -984.193, 29.433), text = "Cheese", config = Cheese},
}

Config.JobStash = {
    [1] =  {coords = vector3(803.23, -757.42, 26.78), name = 'Generic Restaurant Name', size = 4000000, slots = 100},
}

Drink = {
    [1] = {
        label = "Water", 
        description = "Water Bottle", 
        item = "water_bottle", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Water", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
}

Prep = {
    [1] = {
        label = "Make Pizza Sauce", 
        description = "Cut Bell Pepper | Cut Mushrooms | Cut Onions | Cut Tomatoes", 
        item = "pizza-sauce", --item that will be given
        required = {"cut-bellpepper", "cut-mushroom", "cut-onion", "cut-tomato"}, -- required items to make
        progressbar = "Making Pizza Sauce", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
}

Oven = {
    [1] = {
        label = "Make Cheese Pizza", 
        description = "Pizza Dough | Sauce | Cheese ", 
        item = "cheese-pizza", --item that will be given
        required = {"pizza-dough", "pizza-sauce", "cheese"}, -- required items to make
        progressbar = "Making Cheese Pizza", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
}

Dough = {
    [1] = {
        label = "Make Dough", 
        description = "Yeast | Flour | Salt", 
        item = "pizza-dough", --item that will be given
        required = {"yeast", "salt", "flour"}, -- required items to make
        progressbar = "Making Pizza Dough", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
}

Cheese = {
    [1] = {
        label = "Cheese", 
        description = "", 
        item = "cheese", --item that will be given
        required = {}, -- required items to make
        progressbar = "Grabbing Cheese", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    }
}