data:extend({
	-- Startup

	{
		type = "bool-setting",
		name = "subway-easy-research",
		setting_type = "startup",
		default_value = false,
		order = "a-a"
	},
	{
		type = "bool-setting",
		name = "subway-easy-recipes",
		setting_type = "startup",
		default_value = false,
		order = "a-b"
	},
	{
		type = "int-setting",
		name = "subway-power-batching",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 1,
		maximum_value = 60,
		order = "b-a"
	},

	-- Global
	{
		type = "int-setting",
		name = "subway-max-surfaces",
		setting_type = "runtime-global",
		minimum_value = 0,
		default_value = 100,
		order = "a-d",
	},
	{
		type = "bool-setting",
		name = "subway-indestructible-buildings",
		setting_type = "runtime-global",
		default_value = false,
		order = "a-e",
	},
	{
		type = "bool-setting",
		name = "subway-allied-players-may-enter",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-f-a",
	},
	{
		type = "bool-setting",
		name = "subway-enemy-players-may-enter",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-f-b",
	},

	-- Per user
	{
		type = "int-setting",
		name = "subway-preview-size",
		setting_type = "runtime-per-user",
		minimum_value = 50,
		default_value = 300,
		maximum_value = 1000,
		order = "a-b",
	},
	{
		type = "double-setting",
		name = "subway-preview-zoom",
		setting_type = "runtime-per-user",
		minimum_value = 0.2,
		default_value = 1,
		maximum_value = 2,
		order = "a-c",
	},
})
