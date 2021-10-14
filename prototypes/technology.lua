local F = "__subway__"
local pf = "p-q-"
local easy_research = settings.startup["subway-easy-research"].value


data:extend({
	-- Factory buildings
	{
		type = "technology",
		name = "factory-architecture-t1",
		icon = F.."/graphics/technology/factory-architecture-1.png",
		icon_size = 128,
		prerequisites = {"stone-wall", "logistics"},
		effects = {
			{type = "unlock-recipe", recipe = "subway-entrace"},
		},
		unit = {
			count = easy_research and 30 or 200,
			ingredients = {{"automation-science-pack", 1}},
			time = 30
		},
		order = pf.."a-a",
	},

	-- Connection types
	{
		type = "technology",
		name = "factory-connection-type-fluid",
		icon = F.."/graphics/technology/factory-connection-type-fluid.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t1"}, -- "fluid-handling"
		effects = {
			{type = "unlock-recipe", recipe = "factory-input-pipe"},
			{type = "unlock-recipe", recipe = "factory-output-pipe"},
		},
		unit = {
			count = easy_research and 10 or 100,
			ingredients = {{"automation-science-pack", 1}},
			time = 30
		},
		order = pf.."b-a",
	},
	{
		type = "technology",
		name = "factory-connection-type-chest",
		icon = F.."/graphics/technology/factory-connection-type-chest.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t1", "logistics-2"},
		effects = {},
		unit = {
			count = easy_research and 20 or 200,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}},
			time = 30
		},
		order = pf.."b-b",
	},
	{
		type = "technology",
		name = "factory-connection-type-circuit",
		icon = F.."/graphics/technology/factory-connection-type-circuit.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t1", "circuit-network"},
		effects = {
			{type = "unlock-recipe", recipe = "factory-circuit-input"},
			{type = "unlock-recipe", recipe = "factory-circuit-output"},
		},
		unit = {
			count = easy_research and 30 or 300,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}},
			time = 30
		},
		order = pf.."b-c",
	},
	
	-- Interior upgrades
	
	{
		type = "technology",
		name = "factory-interior-upgrade-lights",
		icon = F.."/graphics/technology/factory-interior-upgrade-lights.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t1", "optics"},
		effects = {},
		unit = {
			count = easy_research and 5 or 50,
			ingredients = {{"automation-science-pack", 1}},
			time = 30
		},
		order = pf.."c-a",
	},
	{
		type = "technology",
		name = "factory-interior-upgrade-display",
		icon = F.."/graphics/technology/factory-interior-upgrade-display.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t1", "optics"},
		effects = {},
		unit = {
			count = easy_research and 10 or 100,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}},
			time = 30
		},
		order = pf.."c-b",
	},
	-- Misc utilities
	
	{
		type = "technology",
		name = "factory-preview",
		icon = F.."/graphics/technology/factory-preview.png",
		icon_size = 128,
		prerequisites = {"factory-interior-upgrade-lights"},
		effects = {},
		unit = {
			count = easy_research and 20 or 200,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}},
			time = 30
		},
		order = pf.."d-a",
	},
		{
		type = "technology",
		name = "factory-requester-chest",
		icon = F.."/graphics/technology/factory-requester-chest.png",
		icon_size = 128,
		prerequisites = {"factory-architecture-t1", "logistic-system"},
		effects = {
			{type = "unlock-recipe", recipe = "factory-requester-chest"},
		},
		unit = {
			count = easy_research and 20 or 100,
			ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}},
			time = 30
		},
		order = pf.."d-b",
	},
})