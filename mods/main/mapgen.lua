minetest.register_alias("mapgen_stone", "main:stone")
minetest.register_alias("mapgen_dirt", "main:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "main:dirt_with_grass")
minetest.register_alias("mapgen_sand", "main:sand")
minetest.register_alias("mapgen_water_source", "main:water_source")
minetest.register_alias("mapgen_river_water_source", "main:muddywater_source")
minetest.register_alias("mapgen_lava_source", "main:lava_source")

--------
--Biomes
--------

--Grasslands
minetest.register_biome(
   {
      name = "Grasslands",

      node_top = "main:dirt_with_grass",
      node_filler = "main:dirt",

	  depth_top = 1,
      depth_filler = 1,

      y_min = 4,
      y_max = 14,

      heat_point = 60,
      humidity_point = 30,
})

--Beach
minetest.register_biome(
   {
      name = "Beach",

      node_top = "main:sand",
      node_filler = "main:stone",

	  depth_top = 1,
      depth_filler = 3,

      y_min = 1,
      y_max = 4,

      heat_point = 70,
      humidity_point = 55,
})

--Swamp
minetest.register_biome(
   {
      name = "Swamp",

      node_top = "main:dirt_with_swamp_grass",
      node_filler = "main:dirt",

	  depth_top = 1,
      depth_filler = 3,

      y_min = 1,
      y_max = 4,

      heat_point = 60,
      humidity_point = 30,
})

--Sulfur Deposit
minetest.register_biome(
   {
      name = "Sulfur Deposit",

      node_top = "main:stone",
      node_filler = "main:gravel",

	  depth_top = 1,
      depth_filler = 7,

      y_min = 7,
      y_max = 15,

      heat_point = 80,
      humidity_point = 90,
})

--Desert
minetest.register_biome(
   {
      name = "Desert",

      node_top = "main:sand",
      node_filler = "main:sand",

	  depth_top = 4,
      depth_filler = 3,

      y_min = 3,
      y_max = 50,

      heat_point = 100,
      humidity_point = 8,
})

--Mountains
minetest.register_biome(
   {
      name = "Mountains",

      node_top = "main:cobble",
      node_filler = "main:stone",

	  depth_top = 1,
      depth_filler = 1,

      y_min = 15,
      y_max = 150,

      heat_point = 60,
      humidity_point = 30,
})

--Mountain Peak (with snow)
minetest.register_biome(
   {
      name = "Mountain Peak",

      node_top = "main:snow",
      node_filler = "main:snow",

	  depth_top = 1,
      depth_filler = 1,

      y_min = 150,
      y_max = upper_limit,

      heat_point = 10,
      humidity_point = 20,
})

--Wasteland
minetest.register_biome(
   {
      name = "Wasteland",

      node_top = "main:dirt",
	  depth_top = 2,
	  
	  node_water = "main:toxicwater_source",

      y_min = 1,
      y_max = 170,

      heat_point = 80,
      humidity_point = 10,
})

--Wasteland Ocean
minetest.register_biome(
   {
      name = "Wasteland Ocean",

      node_top = "main:dirt",
	  depth_top = 3,
	  
	  node_water = "main:toxicwater_source",

      y_min = -31000,
      y_max = 0,

      heat_point = 80,
      humidity_point = 30,
})

--Snow Plains
minetest.register_biome(
   {
      name = "Snow Plains",

      node_top = "main:snow",
	  depth_top = 6,
	  
	  node_filler = "main:dirt_frozen",
	  depth_filler = 8,
	  
	  node_water = "main:ice_thick",
	  node_river_water = "main:ice_thin",

      y_min = 1,
      y_max = 50,

      heat_point = 0,
      humidity_point = 10,
})

--------------
--Scatter ores
--------------

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:sulfur_ore",
		wherein        = "main:stone", "main:cobble",
		biomes = {"Sulfur Deposit"},
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = 7,
		y_max          = 15,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:iron_ore",
		wherein        = "main:stone", "main:cobble",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 6,
		clust_size     = 4,
		y_min          = -30000,
		y_max          = -90,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:iron_ore",
		wherein        = "main:stone", "main:cobble",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = 40,
		y_max          = upper_limit,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:coal_ore",
		wherein        = "main:stone", "main:cobble",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = 0,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:coal_ore",
		wherein        = "main:stone", "main:cobble",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -250,
		y_max          = upper_limit,
})
--Cinnabar
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:cinnabar_ore",
		wherein        = "main:stone", "main:cobble",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 6,
		clust_size     = 4,
		y_min          = -30000,
		y_max          = -100,
})

--Salt
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:salt_ore",
		wherein        = "main:stone", "main:cobble",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -30000,
		y_max          = 30,
})

--Low Density Diamond
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:diamond_ore_lowdens",
		wherein        = "main:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 4,
		clust_size     = 6,
		y_min          = -30000,
		y_max          = -1000,
})

--Low Density Diamond
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:diamond_ore_hidens",
		wherein        = "main:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 8,
		clust_size     = 6,
		y_min          = -30000,
		y_max          = -1200,
})

-------------
--Decorations
-------------

--Small Rock
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:dirt_with_grass", "main:dirt", "main:sand", "main:dirt_with_swamp_grass"},
      rotation = "random",
      sidelen = 16,
      fill_ratio = 0.004,
      biomes = {"Grasslands", "Swamp", "Desert", "Wasteland"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_rock_cobble_small.mts",
      y_min = -32000,
      y_max = 32000,
})

--Oak Tree
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:dirt_with_grass"},
      rotation = "random",
      sidelen = 16,
      fill_ratio = 0.004,
      biomes = {"Grasslands"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_tree_oak.mts",
      y_min = -32000,
      y_max = 32000,
})

--Tall Oak Tree
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:dirt_with_grass"},
      rotation = "random",
      sidelen = 16,
      fill_ratio = 0.004,
      biomes = {"Grasslands", "Swamp"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_tree_oak_tall.mts",
      y_min = -32000,
      y_max = 32000,
})

--Dead Tall Oak Tree
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:dirt", "main:stone", "main:sand"},
      rotation = "random",
      sidelen = 16,
      biomes = {"Wasteland", "Sulfur Deposit", "Desert"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_tree_oak_tall_dead.mts",
      y_min = -32000,
      y_max = 32000,
      
      noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
})

--Apple Tree
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:dirt_with_grass"},
      rotation = "random",
      sidelen = 16,
      fill_ratio = 0.004,
      biomes = {"Grasslands"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_tree_apple.mts",
      y_min = -32000,
      y_max = 32000,
})
