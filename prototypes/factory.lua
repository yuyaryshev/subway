local F = "__subway__";

require("circuit-connector-sprites")

local function cwc0()
	return {shadow = {red = {0,0},green = {0,0}}, wire = {red = {0,0},green = {0,0}}}
end

local function cc0()
	return get_circuit_connector_sprites({0,0},nil,1)
end

local function blank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
	}
end

local function ablank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
		frame_count = 1,
	}
end

data:extend({
	{
		type = "item",
		name = "subway-entrace",
		icon = F.."/graphics/icon/subway-entrace.png",
		icon_size = 32,
		subgroup = "subway",
		order = "a-a",
		stack_size = 50
	}
})

for i=0,5 do	
	data:extend({
			{
				type = "storage-tank",
				name = "subway-entrace-"..i,
				icon = F.."/graphics/icon/subway-entrace-"..i..".png",
				icon_size = 32,
				flags = {"player-creation"},
				minable = {mining_time = 1, result = "subway-entrace-"..i, count = 1},
				max_health = 2000,
				corpse = "big-remnants",
				collision_box = {{-1.9, -0.0}, {1.9, 3.8}},
				selection_box = {{-1.9, -0.0}, {1.9, 3.8}},
				vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
				pictures = {
					picture = {
						layers = {
							{
								filename = F.."/graphics/subway-entrace/subway-entrace-shadow.png",
								width = 416,
								height = 320,
								shift = {1.5, 0},
								draw_as_shadow = true
							},
							{
								filename = F.."/graphics/subway-entrace/subway-entrace-"..i..".png",
								width = 416,
								height = 320,
								shift = {1.5, 0},
							}
						}
					},
					fluid_background = blank(),
					window_background = blank(),
					flow_sprite = blank(),
					gas_flow = ablank(),
				},
				window_bounding_box = {{0,0},{0,0}},
				fluid_box = {
					base_area = 1,
					pipe_covers = pipecoverspictures(),
					pipe_connections = {},
				},
				flow_length_in_ticks = 1,
				circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
				circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
				circuit_wire_max_distance = 0,
				map_color = {r = 0.8, g = 0.7, b = 0.55},
			},
			{
				type = "item",
				name = "subway-entrace-"..i,
				icon = F.."/graphics/icon/subway-entrace-"..i..".png",
				icon_size = 32,
				subgroup = "subway",
				order = "a-a",
				place_result = "subway-entrace-"..i,
				stack_size = 50
			}
	})
end

data:extend({
	{
		type = "simple-entity",
		name = "subway-entrace-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-3.8, -6.8}, {3.8, 0.8}},
		collision_mask = {},
		selection_box = {{-3.8, -6.8}, {3.8, 0.8}},
		selectable_in_game = false,
		picture = {
			layers = {
				{
					filename = F.."/graphics/subway-entrace/subway-entrace-shadow.png",
					width = 416,
					height = 320,
					shift = {1.5, -3},
					draw_as_shadow = true
				},
				{
					filename = F.."/graphics/subway-entrace/subway-entrace.png",
					width = 416,
					height = 320,
					shift = {1.5, -3},
				}
			}
		},
		render_layer = "object",
	}
})
