-----------------------
-----------------------
----    RECIPES    ----
-----------------------
-----------------------



----------------------
--Sticks, Planks, EtC.
----------------------
minetest.register_craft({
	output = "main:planks_oak 4"
	recipe = {
	{"", "", ""},
	{"", "group:logs", ""},
	{"", "", ""}
	}
})

minetest.register_craft({
	output = "main:stick"
	recipe = {
	{"", "", ""},
	{"", "main:planks_oak", ""},
	{"", "", ""}
	}
})


--------------------
--Simple Stone Tools
--------------------
minetest.register_craft({
	output = "main:pickaxe_stone_simple"
	recipe = {
	{"main:cobble", "main:cobble", "main:cobble"},
	{"main:cobble", "main:stick", "main:cobble"},
	{"", "main:stick", ""}
	}
})

minetest.register_craft({
	output = "main:axe_stone_simple"
	recipe = {
	{"main:cobble", "main:cobble", "main:cobble"},
	{"main:cobble", "main:stick", ""},
	{"", "main:stick", ""}
	}
})

minetest.register_craft({
	output = "main:knife_stone_simple"
	recipe = {
	{"", "", ""},
	{"", "main:cobble", ""},
	{"", "main:stick", ""}
	}
})


-----------------------
-- Refined Stone Tools
-----------------------

minetest.register_craft({
	output = "main:pickaxe_stone_refined"
	recipe = {
	{"", "", ""},
	{"", "main:pickaxe_stone_refined", ""},
	{"", "main:rope", ""}
	}
})



--------------
-- Steel Tools
--------------

minetest.register_craft({
	output = "main:pickaxe_steel"
	recipe = {
	{"main:steel_ingot", "main:steel_ingot", "main:steel_ingot"},
	{"main:steel_ingot", "main:stick", "main:steel_ingot"},
	{"", "main:stick", ""}
	}
})

minetest.register_craft({
	output = "main:axe_steel"
	recipe = {
	{"main:steel_ingot", "main:steel_ingot", "main:steel_ingot"},
	{"main:steel_ingot", "main:stick", ""},
	{"", "main:stick", ""}
	}
})

minetest.register_craft({
	output = "main:knife_steel"
	recipe = {
	{"", "", ""},
	{"", "main:steel_ingot", ""},
	{"", "main:stick", ""}
	}
})

--TO DO: Add Tier 2 / High Tier tools such as chainsaws, pneumatic drills, etc.