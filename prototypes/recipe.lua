local easy_recipes = settings.startup["subway-easy-recipes"].value

local multiplier = easy_recipes and 1 or 10

data:extend({

	-- Factory buildings
	{
		type = "recipe",
		name = "subway-entrace",
		enabled = true,
		energy_required = 0.02,
		ingredients = {},
--		ingredients = {{"stone", 50 * multiplier}, {"iron-plate", 50 * multiplier}, {"copper-plate", 10 * multiplier}},
		result = "subway-entrace"
	},
	{
		type = "recipe",
		name = "subway-entrace-0",
		enabled = true,
		energy_required = 0.02,
		ingredients = {{"subway-entrace",1}},
		result = "subway-entrace-0"
	},

	{
		type = "recipe",
		name = "subway-entrace-1",
		enabled = true,
		energy_required = 0.02,
		ingredients = {{"subway-entrace",1}},
		result = "subway-entrace-1"
	},

	{
		type = "recipe",
		name = "subway-entrace-2",
		enabled = true,
		energy_required = 0.02,
		ingredients = {{"subway-entrace",1}},
		result = "subway-entrace-2"
	},

	{
		type = "recipe",
		name = "subway-entrace-3",
		enabled = true,
		energy_required = 0.02,
		ingredients = {{"subway-entrace",1}},
		result = "subway-entrace-3"
	},
	
	{
		type = "recipe",
		name = "subway-entrace-4",
		enabled = true,
		energy_required = 0.02,
		ingredients = {{"subway-entrace",1}},
		result = "subway-entrace-4"
	},

	{
		type = "recipe",
		name = "subway-entrace-5",
		enabled = true,
		energy_required = 0.02,
		ingredients = {{"subway-entrace",1}},
		result = "subway-entrace-5"
	},


	-- Utilities
	{
		type = "recipe",
		name = "factory-circuit-input",
		enabled = false,
		energy_required = 1,
		ingredients = {{"copper-cable", 5}, {"electronic-circuit", 2}},
		result = "factory-circuit-input"
	},
	{
		type = "recipe",
		name = "factory-circuit-output",
		enabled = false,
		energy_required = 1,
		ingredients = {{"electronic-circuit", 2}, {"copper-cable", 5}},
		result = "factory-circuit-output"
	},
	{
		type = "recipe",
		name = "factory-input-pipe",
		enabled = false,
		energy_required = 1,
		ingredients = {{"pipe", 5}},
		result = "factory-input-pipe"
	},
	{
		type = "recipe",
		name = "factory-output-pipe",
		enabled = false,
		energy_required = 1,
		ingredients = {{"pipe", 5}},
		result = "factory-output-pipe"
	},
	{
		type = "recipe",
		name = "factory-requester-chest",
		enabled = false,
		energy_required = 10,
		ingredients = {{"logistic-chest-requester", 5}},
		result = "factory-requester-chest"
	},
});
