local north = defines.direction.north
local east = defines.direction.east
local south = defines.direction.south
local west = defines.direction.west

local opposite = {[north] = south, [east] = west, [south] = north, [west] = east}
local DX = {[north] = 0, [east] = 1, [south] = 0, [west] = -1}
local DY = {[north] = -1, [east] = 0, [south] = 1, [west] = 0}

local make_connection = function(id, outside_x, outside_y, inside_x, inside_y, direction_out)
	return {
		id = id,
		outside_x = outside_x,
		outside_y = outside_y,
		inside_x = inside_x,
		inside_y = inside_y,
		indicator_dx = DX[direction_out],
		indicator_dy = DY[direction_out],
		direction_in = opposite[direction_out],
		direction_out = direction_out,
	}
end

local layout_generators = {
	["subway-entrace"] = function()
		return {
			name = "subway-entrace",
			tier = 1,
			inside_size = 30,
			outside_size = 8,
			default_power_transfer_rate = 10,
			inside_door_x = 0,
			inside_door_y = 16,
			outside_door_x = 0,
			outside_door_y = 4,
			outside_energy_receiver_type = "factory-power-input-8",
			outside_energy_sender_type = "factory-power-output-8",
			inside_energy_x = -4,
			inside_energy_y = 17,
			energy_indicator_x = -3.5,
			energy_indicator_y = 18.5,
			overlay_name = "subway-entrace-overlay",
			overlay_x = 0,
			overlay_y = 3,
			rectangles = {
				{
					x1 = -18, x2 = 18, y1 = -18, y2 = 18, tile = "out-of-factory"
				},
				{
					x1 = -16, x2 = 16, y1 = -16, y2 = 16, tile = "factory-wall-1"
				},
				{
					x1 = -15, x2 = 15, y1 = -15, y2 = 15, tile = "factory-floor-1"
				},
				{
					x1 = -3, x2 = 3, y1 = 15, y2 = 18, tile = "factory-wall-1"
				},
				{
					x1 = -2, x2 = 2, y1 = 15, y2 = 18, tile = "factory-entrance-1"
				},
			},
			mosaics = {
				{	x1 = -6, x2 = 6, y1 = -4, y2 = 4, tile = "factory-pattern-1",
					pattern = {
						"            ",
						"   +    +   ",
						"  +++  +++  ",
						" ++ ++++ ++ ",
						" ++  ++  ++ ",
						"+++      +++",
						"            ",
						"            ",
					}
				},
			},
			lights = {
				{x = -7.5, y = -7.5},
				{x = -7.5, y = 7.5},
				{x = 7.5, y = -7.5},
				{x = 7.5, y = 7.5},
			},
			connection_tile = "factory-floor-1",
			connections = {
				w1 = make_connection("w1", -4.5,-2.5, -15.5,-9.5, west),
				w2 = make_connection("w2", -4.5,-1.5, -15.5,-5.5, west),
				w3 = make_connection("w3", -4.5,1.5, -15.5,5.5, west),
				w4 = make_connection("w4", -4.5,2.5, -15.5,9.5, west),

				e1 = make_connection("e1", 4.5,-2.5, 15.5,-9.5, east),
				e2 = make_connection("e2", 4.5,-1.5, 15.5,-5.5, east),
				e3 = make_connection("e3", 4.5,1.5, 15.5,5.5, east),
				e4 = make_connection("e4", 4.5,2.5, 15.5,9.5, east),

				n1 = make_connection("n1", -2.5,-4.5, -9.5,-15.5, north),
				n2 = make_connection("n2", -1.5,-4.5, -5.5,-15.5, north),
				n3 = make_connection("n3", 1.5,-4.5, 5.5,-15.5, north),
				n4 = make_connection("n4", 2.5,-4.5, 9.5,-15.5, north),

				s1 = make_connection("s1", -2.5,4.5, -9.5,15.5, south),
				s2 = make_connection("s2", -1.5,4.5, -5.5,15.5, south),
				s3 = make_connection("s3", 1.5,4.5, 5.5,15.5, south),
				s4 = make_connection("s4", 2.5,4.5, 9.5,15.5, south),

			},
			overlays = {
				outside_x = 0,
				outside_y = -1,
				outside_w = 8,
				outside_h = 6,
				inside_x = 3.5,
				inside_y = 16.5,
			},
		}
	end,
}

function HasLayout(name)
	return layout_generators[name] ~= nil
end

function CreateLayout(name)
	if layout_generators[name] then
		return layout_generators[name]()
	else
		return nil
	end
end
