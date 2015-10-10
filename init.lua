local item1 = "default:diamond 3"
local item2 = "default:steel_ingot 10"
local item3 = "default:sand 5"
local item4 = "default:pick_steel"
local item5 = "default:mese_crystal 3"
-- if you want to add more items or have less please edit lines 30+
minetest.register_node("myitemchest:chest", {
	description = "Chest",
	tiles = {
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png",
		"myitemchest_chest_front.png",
		"myitemchest_chest_front.png",
		"myitemchest_chest_front.png",
		"myitemchest_chest_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, 0.5, 0.3125, 0.375},
		}
	},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		minetest.set_node(pos, {name="myitemchest:chest_open", param2=node.param2})
		minetest.spawn_item({x=pos.x,y=pos.y+0.5,z=pos.z}, item1)
		minetest.spawn_item({x=pos.x,y=pos.y+0.5,z=pos.z}, item2)
		minetest.spawn_item({x=pos.x,y=pos.y+0.5,z=pos.z}, item3)
		minetest.spawn_item({x=pos.x,y=pos.y+0.5,z=pos.z}, item4)
		minetest.spawn_item({x=pos.x,y=pos.y+0.5,z=pos.z}, item5)
	end,
})
minetest.register_node("myitemchest:chest2", {
	description = "Chest",
	tiles = {
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, 0.5, 0.3125, 0.375},
		}
	},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		minetest.swap_node(pos, {name="myitemchest:chest_open", param2=node.param2})
	end,
})
minetest.register_node("myitemchest:chest_open", {
	description = "Chest Open",
	tiles = {
		"myitemchest_chest_open_top.png",
		"myitemchest_chest_open_top.png",
		"myitemchest_chest_open_side.png",
		"myitemchest_chest_open_side.png^[transformFx",
		"myitemchest_chest_top.png",
		"myitemchest_chest_top.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myitemchest:chest2",
	groups = {choppy = 2,not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, 0.5, -0.4375, 0.375},
			{-0.5, -0.5, 0.3125, 0.5, 0.1875, 0.375},
			{-0.5, -0.5, -0.3125, -0.4375, 0.1875, 0.375},
			{0.4375, -0.5, -0.3125, 0.5, 0.1875, 0.375},
			{-0.5, -0.5, -0.3125, 0.5, 0.1875, -0.25},
			{-0.5, 0.1875, 0.4375, 0.5, 0.875, 0.5},
			{-0.5, 0.1875, 0.375, 0.5, 0.25, 0.5},
			{-0.5, 0.8125, 0.375, 0.5, 0.875, 0.5},
			{-0.5, 0.1875, 0.375, -0.4375, 0.875, 0.5},
			{0.4375, 0.1875, 0.375, 0.5, 0.875, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, 0.5, -0.4375, 0.375},
			{-0.5, -0.5, 0.3125, 0.5, 0.1875, 0.375},
			{-0.5, -0.5, -0.3125, -0.4375, 0.1875, 0.375},
			{0.4375, -0.5, -0.3125, 0.5, 0.1875, 0.375},
			{-0.5, -0.5, -0.3125, 0.5, 0.1875, -0.25},
			{-0.5, 0.1875, 0.4375, 0.5, 0.875, 0.5},
			{-0.5, 0.1875, 0.375, 0.5, 0.25, 0.5},
			{-0.5, 0.8125, 0.375, 0.5, 0.875, 0.5},
			{-0.5, 0.1875, 0.375, -0.4375, 0.875, 0.5},
			{0.4375, 0.1875, 0.375, 0.5, 0.875, 0.5},
		}
	},

	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		minetest.swap_node(pos, {name="myitemchest:chest2", param2=node.param2})
	end,
})
