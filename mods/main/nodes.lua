--Naturally generating nodes
minetest.register_node("main:stone", {
	description = "Stone",
	tiles = {"main_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'main:cobble',
	legacy_mineral = true,
})

minetest.register_node("main:cobble", {
	description = "Cobble",
	tiles = {"main_cobble.png"},
	groups = {cracky = 2, stone = 1},
	drop = 'main:cobble',
	legacy_mineral = true,
})

minetest.register_node("main:dirt", {
	description = "Dirt",
	tiles = {"main_dirt.png"},
	groups = {crumbly = 3, soil = 1},
})

minetest.register_node("main:dirt_frozen", {
	description = "Frozen Dirt",
	tiles = {"main_dirt_frozen.png"},
	groups = {cracky = 1},
})

minetest.register_node("main:snow", {
	description = "Snow",
	tiles = {"main_snow.png"},
	groups = {crumbly = 3},
})

minetest.register_node("main:ice_thin", {
	drawtype = "allfaces",
	paramtype = "light",
	light_propagates = true,
	sunlight_propagates = true,
	alpha = 6,
	description = "Thin Ice",
	tiles = {"main_ice_thin.png"},
	groups = {cracky = 3, slippery = 3},
})

minetest.register_node("main:ice_thick", {
	description = "Thick Ice",
	tiles = {"main_ice_thick.png"},
	groups = {cracky = 1},
})

minetest.register_node("main:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"main_grass.png", "main_dirt.png",
		{name = "main_dirt.png^main_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'main:dirt',
})

minetest.register_node("main:dirt_with_swamp_grass", {
	description = "Dirt with Swamp Grass",
	tiles = {"main_swamp_grass.png", "main_dirt.png",
		{name = "main_dirt.png^main_swamp_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'main:dirt',
})

minetest.register_node("main:sand", {
	description = "Sand",
	tiles = {"main_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
})

--Player made nodes
minetest.register_node("main:light", {
	description = "Lamp",
	tiles = {"main_indsutrial_decor_lamp.png"},
	light_source = 14,
	groups = {choppy = 3, oddly_breakable_by_hand = 3},
})



--Steel Block
minetest.register_node("main:block_steel", {
	description = "Steel Block",
	tiles = {"main_block_iron.png"},
	groups = {cracky = 3},
	drop = 'main:block_iron',
})

--Concrete
minetest.register_node("main:concrete", {
	description = "Concrete",
	tiles = {"main_concrete.png"},
	groups = {cracky = 3},
})


--Planks
minetest.register_node("main:planks_oak", {
	description = "Planks",
	tiles = {"main_planks_oak.png"},
	groups = {choppy = 3},
})


--
-- Plants and Other Living Organisms
--


--Oak Log
minetest.register_node("main:log_oak", {
	description = "Oak Log",
	tiles = {"main_log_oak.png"},
	groups = {choppy = 2, logs = 1},
})

--Oak Leaves
minetest.register_node("main:leaves_oak", {
	drawtype = "plantlike",
	paramtype = "light",
	light_propagates = true,
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	description = "Oak Leaves",
	tiles = {"main_leaves_oak.png"},
	groups = {snappy = 3},
})

--Apple Tree Log
minetest.register_node("main:log_apple", {
	description = "Apple Tree Log",
	tiles = {"main_log_apple.png"},
	groups = {choppy = 3, logs = 1},
})

--Apple Tree Leaves
minetest.register_node("main:leaves_apple", {
	drawtype = "plantlike",
	paramtype = "light",
	light_propagates = true,
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	description = "Apple Tree Leaves",
	tiles = {"main_leaves_apple.png"},
	groups = {snappy = 3},
})

--
-- Liquids
--

--Fresh water
minetest.register_node("main:water_source", {
	description = "Fresh Water Source",
	drawtype = "liquid",
	paramtype = "light",
	
	tiles = {
		{
			name = "main_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 180,
	post_effect_color = {a = 50, r = 0, g = 50, b = 200},
	
	--Behavior
	walkable = false,
	pointable = false,
	buildable_to = true,
	diggable = false,
	is_ground_content = false,
	
	--Properties
	liquid_range = 14,
	liquid_viscosity = 0.1,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "main:water_flowing",
	liquid_alternative_source = "main:water_source",
	groups = {liquid = 3, water = 1},
})

minetest.register_node("main:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	paramtype = "light",
	
	tiles = {
		{
			name = "main_water_flowing_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	
	special_tiles = {
        {
            name = "main_water_flowing_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
            aspect_h = 16, length = 2.0},
            backface_culling = true,
        },
        
        {
            name = "main_water_flowing_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
            aspect_h = 16, length = 2.0},
            backface_culling = false,
        }
    },
	
	alpha = 180,
	post_effect_color = {a = 50, r = 0, g = 50, b = 200},
	
	--Behavior
	walkable = false,
	pointable = false,
	buildable_to = true,
	diggable = false,
	is_ground_content = false,
	
	--Properties
	liquid_range = 14,
	liquid_viscosity = 0.1,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "main:water_flowing",
	liquid_alternative_source = "main:water_source",
	groups = {liquid = 3, water = 1},
})

--Muddy water
minetest.register_node("main:muddywater_source", {
	description = "Muddy Water Source",
	drawtype = "liquid",
	paramtype = "light",
	
	tiles = {name = "main_muddywater.png"},
	alpha = 200,
	post_effect_color = {a = 190, r = 80, g = 60, b = 166},
	
	--Behavior
	walkable = false,
	pointable = false,
	buildable_to = true,
	diggable = false,
	is_ground_content = false,
	
	--Properties
	liquid_range = 14,
	liquid_viscosity = 2,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "main:muddywater_flowing",
	liquid_alternative_source = "main:muddywater_source",
	groups = {liquid = 1, water = 1},
})

minetest.register_node("main:muddywater_flowing", {
	description = "Flowing Muddy Water",
	drawtype = "flowingliquid",
	paramtype = "light",
	
	tiles = {name = "main_muddywater.png"},
	
	special_tiles = {
        {
            name = "main_muddywater.png",
            animation = {type = "vertical_frames", aspect_w = 16,
            aspect_h = 16, length = 2.0},
            backface_culling = true,
        },
        
        {
            name = "main_muddywater.png",
            animation = {type = "vertical_frames", aspect_w = 16,
            aspect_h = 16, length = 2.0},
            backface_culling = false,
        }
    },
	
	alpha = 200,
	post_effect_color = {a = 190, r = 80, g = 60, b = 166},
	
	--Behavior
	walkable = false,
	pointable = false,
	buildable_to = true,
	diggable = false,
	is_ground_content = false,
	
	--Properties
	liquid_range = 14,
	liquid_viscosity = 2,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "main:muddywater_flowing",
	liquid_alternative_source = "main:muddywater_source",
	groups = {liquid = 1, water = 1},
})
