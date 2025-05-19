local physical_projectile_damage_1_icon = "__flexible-technology-curve__/graphics/technology/physical-projectile-damage-1.png"
local physical_projectile_damage_2_icon = "__flexible-technology-curve__/graphics/technology/physical-projectile-damage-2.png"
local stronger_explosives_1_icon = "__flexible-technology-curve__/graphics/technology/stronger-explosives-1.png"
local stronger_explosives_2_icon = "__flexible-technology-curve__/graphics/technology/stronger-explosives-2.png"
local stronger_explosives_3_icon = "__flexible-technology-curve__/graphics/technology/stronger-explosives-3.png"
local refined_flammables_icon = "__flexible-technology-curve__/graphics/technology/refined-flammables.png"
local laser_weapons_damage_1_icon = "__flexible-technology-curve__/graphics/technology/laser-weapons-damage.png"
local laser_weapons_damage_2_icon = "__flexible-technology-curve__/graphics/technology/laser-weapons-damage.png"
local laser_weapons_damage_3_icon = "__flexible-technology-curve__/graphics/technology/laser-weapons-damage.png"
local electric_weapons_damage_1_icon = "__flexible-technology-curve__/graphics/technology/electric-weapons-damage.png"
local electric_weapons_damage_2_icon = "__flexible-technology-curve__/graphics/technology/electric-weapons-damage.png"
local electric_weapons_damage_3_icon = "__flexible-technology-curve__/graphics/technology/electric-weapons-damage.png"
local weapon_shooting_speed_1_icon = "__flexible-technology-curve__/graphics/technology/weapon-shooting-speed-1.png"
local weapon_shooting_speed_2_icon = "__flexible-technology-curve__/graphics/technology/weapon-shooting-speed-2.png"
local weapon_shooting_speed_3_icon = "__flexible-technology-curve__/graphics/technology/weapon-shooting-speed-3.png"
local laser_shooting_speed_icon = "__flexible-technology-curve__/graphics/technology/laser-shooting-speed.png"


data:extend({

    --ingredient productivity

    {
        type = "technology",
        name = "asteroid-productivity",
        icons = util.technology_icon_constant_productivity("__space-age__/graphics/technology/asteroid-productivity.png"),
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "carbonic-asteroid-crushing",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "oxide-asteroid-crushing",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "metallic-asteroid-crushing",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "advanced-carbonic-asteroid-crushing",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "advanced-oxide-asteroid-crushing",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "advanced-metallic-asteroid-crushing",
                    change = 0.1
                }
            },
            prerequisites = {"advanced-asteroid-processing"},
            unit =
            {
                count_formula = settings.startup["space-rocks"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"agricultural-science-pack", 1}
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "research-productivity",
        icon = "__space-age__/graphics/technology/research-productivity.png",
        icon_size = 256,
        icon_size = 256,
        effects =
        {
            {
                type = "laboratory-productivity",
                modifier = 0.10
            },
        },
        prerequisites = {"promethium-science-pack"},
        unit =
        {
            count_formula = settings.startup["science"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"metallurgic-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"agricultural-science-pack", 1},
                {"cryogenic-science-pack", 1},
                {"promethium-science-pack", 1}
            },
            time = 120
        },
        max_level = "infinite",
        upgrade = true
    },
    {
        type = "technology",
        name = "processing-unit-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/processing-unit-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "processing-unit",
                    change = 0.1
                }
            },
            prerequisites = {"electromagnetic-science-pack", "production-science-pack"},
            unit =
            {
                count_formula = settings.startup["blue-circuit"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"electromagnetic-science-pack", 1},
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "scrap-recycling-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/scrap-recycling-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "scrap-recycling",
                    change = 0.1
                }
            },
            prerequisites = {"electromagnetic-science-pack", "production-science-pack"},
            unit =
            {
                count_formula = settings.startup["scrap"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"electromagnetic-science-pack", 1},
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "steel-plate-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/steel-plate-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "steel-plate",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "casting-steel",
                    change = 0.1
                }
            },
            prerequisites = {"production-science-pack"},
            unit =
            {
                count_formula = settings.startup["steel"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "low-density-structure-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/low-density-structure-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "low-density-structure",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "casting-low-density-structure",
                    change = 0.1
                }
            },
            prerequisites = {"production-science-pack", "metallurgic-science-pack"},
            unit =
            {
                count_formula = settings.startup["lds"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"metallurgic-science-pack", 1},
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "plastic-bar-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/plastics-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "plastic-bar",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "bioplastic",
                    change = 0.1
                },
            },
            prerequisites = {"agricultural-science-pack", "production-science-pack"},
            unit =
            {
                count_formula = settings.startup["plastic"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"agricultural-science-pack", 1},
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "rocket-fuel-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/rocket-fuel-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "rocket-fuel",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "rocket-fuel-from-jelly",
                    change = 0.1
                },
                {
                    type = "change-recipe-productivity",
                    recipe = "ammonia-rocket-fuel",
                    change = 0.1
                }
            },
            prerequisites = {"agricultural-science-pack", "production-science-pack"},
            unit =
            {
                count_formula = settings.startup["rocket-fuel"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"agricultural-science-pack", 1},
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "rocket-part-productivity",
        icons = util.technology_icon_constant_recipe_productivity("__space-age__/graphics/technology/rocket-part-productivity.png"),
            icon_size = 256,
            effects =
            {
                {
                    type = "change-recipe-productivity",
                    recipe = "rocket-part",
                    change = 0.1
                }
            },
            prerequisites = {"cryogenic-science-pack"},
            unit =
            {
                count_formula = settings.startup["rocket-part"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"cryogenic-science-pack", 1},
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true
    },


    --worker robot speed

    {
        type = "technology",
        name = "worker-robots-speed-7",
        icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
            effects =
            {
                {
                    type = "worker-robot-speed",
                    modifier = 0.65
                }
            },
            prerequisites = {"worker-robots-speed-6", "electromagnetic-science-pack"},
            unit =
            {
                count_formula = settings.startup["robot"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"electromagnetic-science-pack", 1},
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },

    --military productivity

    {
        type = "technology",
        name = "physical-projectile-damage-7",
        icons = util.technology_icon_constant_damage(physical_projectile_damage_2_icon),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "bullet",
                    modifier = 0.4
                },
                {
                    type = "turret-attack",
                    turret_id = "gun-turret",
                    modifier = 0.7
                },
                {
                    type = "ammo-damage",
                    ammo_category = "shotgun-shell",
                    modifier = 0.4
                },
                {
                    type = "ammo-damage",
                    ammo_category = "cannon-shell",
                    modifier = 1
                }
            },
            prerequisites = {"physical-projectile-damage-6", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["bullet"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "stronger-explosives-7",
        icons = util.technology_icon_constant_damage(stronger_explosives_3_icon),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "rocket",
                    modifier = 0.5
                },
                {
                    type = "ammo-damage",
                    ammo_category = "grenade",
                    modifier = 0.2
                },
                {
                    type = "ammo-damage",
                    ammo_category = "landmine",
                    modifier = 0.2
                }
            },
            prerequisites = {"stronger-explosives-6", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["boom"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "refined-flammables-7",
        icons = util.technology_icon_constant_damage(refined_flammables_icon),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "flamethrower",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "flamethrower-turret",
                    modifier = 0.2
                }
            },
            prerequisites = {"refined-flammables-6", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["fire"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "laser-weapons-damage-7",
        icons = util.technology_icon_constant_damage(laser_weapons_damage_3_icon),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "laser",
                    modifier = 0.7
                },
                {
                    type = "ammo-damage",
                    ammo_category = "electric",
                    modifier = 0.7
                },
                {
                    type = "ammo-damage",
                    ammo_category = "beam",
                    modifier = 0.3
                }
            },
            prerequisites = {"laser-weapons-damage-6", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["laser"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
    {
        type = "technology",
        name = "artillery-shell-range-1",
        icons = util.technology_icon_constant_range("__base__/graphics/technology/artillery-range.png"),
            effects =
            {
                {
                    type = "artillery-range",
                    modifier = 0.3
                }
            },
            prerequisites = {"artillery", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["arti-range"].value,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1}
                },
                time = 60
            },
            max_level = "infinite"
    },
    {
        type = "technology",
        name = "artillery-shell-speed-1",
        icons = util.technology_icon_constant_speed("__base__/graphics/technology/artillery-speed.png"),
            effects =
            {
                {
                    type = "gun-speed",
                    ammo_category = "artillery-shell",
                    icon = "__base__/graphics/icons/artillery-shell.png",
                    modifier = 1
                }
            },
            prerequisites = {"artillery", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["arti-speed"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite"
    },
    {
        type = "technology",
        name = "artillery-shell-damage-1",
        icons = util.technology_icon_constant_damage("__space-age__/graphics/technology/artillery-damage.png"),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "artillery-shell",
                    modifier = 0.1
                }
            },
            prerequisites = {"artillery"},
            unit =
            {
                count_formula = settings.startup["arti-damage"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"metallurgic-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite"
    },
    {
        type = "technology",
        name = "railgun-shooting-speed-1",
        icons = util.technology_icon_constant_speed("__space-age__/graphics/technology/railgun-shooting-speed.png"),
            effects =
            {
                {
                    type = "gun-speed",
                    ammo_category = "railgun",
                    icon = "__space-age__/graphics/icons/railgun-ammo.png",
                    icon_size = 64,
                    modifier = 0.2
                },
            },
            prerequisites = {"railgun"},
            unit =
            {
                count_formula = settings.startup["railgun-speed"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"cryogenic-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite"
    },
    {
        type = "technology",
        name = "railgun-damage-1",
        icons = util.technology_icon_constant_damage("__space-age__/graphics/technology/railgun-damage.png"),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "railgun",
                    modifier = 0.4
                }
            },
            prerequisites = {"railgun"},
            unit =
            {
                count_formula = settings.startup["railgun-damage"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"metallurgic-science-pack", 1},
                {"agricultural-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite"
    },
    {
        type = "technology",
        name = "electric-weapons-damage-4",
        icons = util.technology_icon_constant_damage(electric_weapons_damage_3_icon),
            effects =
            {
                {
                    type = "ammo-damage",
                    ammo_category = "tesla",
                    modifier = 0.7
                },
                {
                    type = "ammo-damage",
                    ammo_category = "electric",
                    modifier = 0.7
                },
                {
                    type = "ammo-damage",
                    ammo_category = "beam",
                    modifier = 0.3
                }
            },
            prerequisites = {"electric-weapons-damage-3"},
            unit =
            {
                count_formula = settings.startup["shock-damage"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"electromagnetic-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },

    --mining speed

    {
        type = "technology",
        name = "mining-productivity-1",
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
            effects =
            {
                {
                    type = "mining-drill-productivity-bonus",
                    modifier = 0.1
                }
            },
            prerequisites = {"advanced-circuit"},
            unit =
            {
                count = 250,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1}
                },
                time = 60
            },
            upgrade = true
    },
    {
        type = "technology",
        name = "mining-productivity-2",
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
            effects =
            {
                {
                    type = "mining-drill-productivity-bonus",
                    modifier = 0.1
                }
            },
            prerequisites = {"mining-productivity-1", "chemical-science-pack"},
            unit =
            {
                count = 500,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1}
                },
                time = 60
            },
            upgrade = true
    },
    {
        type = "technology",
        name = "mining-productivity-3",
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
            effects =
            {
                {
                    type = "mining-drill-productivity-bonus",
                    modifier = 0.1
                }
            },
            prerequisites = {"mining-productivity-2", "production-science-pack", "utility-science-pack"},
            unit =
            {
                count = 1000,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 60
            },
            upgrade = true
    },
    {
        type = "technology",
        name = "mining-productivity-4",
        icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
            effects =
            {
                {
                    type = "mining-drill-productivity-bonus",
                    modifier = 0.1
                }
            },
            prerequisites = {"mining-productivity-3", "space-science-pack"},
            unit =
            {
                count_formula = settings.startup["mining"].value,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 60
            },
            max_level = "infinite",
            upgrade = true
    },
}
)
