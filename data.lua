if mods["space-age"] then return end

local tile_pollution = require("__base__/prototypes/tile/tile-pollution-values")

if not data.raw["tile-effect"]["space"] then
    data:extend {{
        type = "tile-effect",
        name = "space",
        shader = "space",
        space = {}
    }}
end

if not data.raw.tile["empty-space"] then
    data:extend {{
        name = "empty-space",
        type = "tile",
        order = "z[other]-b[empty-space]",
        subgroup = "special-tiles",
        collision_mask = {
            layers = {
                ground_tile = true,
                water_tile = true,
                empty_space = true,
                resource = true,
                floor = true,
                item = true,
                object = true,
                player = true,
                doodad = true
            },
        },
        layer_group = "zero",
        layer = 0,
        effect = "space",
        effect_color = {0.5, 0.507, 0},
        effect_color_secondary = {0, 68, 25},
        particle_tints = {
            primary = {0, 0, 0, 0},
            secondary = {0, 0, 0, 0},
        },
        variants = {
            main = {
                {
                    picture = "__enable-all-feature-flags__/graphics/terrain/empty-space.png",
                    count = 1,
                    size = 1
                }
            },
            empty_transitions = true
        },
        map_color = {0, 0, 0},
        absorptions_per_second = tile_pollution.out_of_map,
        autoplace = {probability_expression = 1},
        default_cover_tile = data.raw.tile["space-platform-foundation"] and "space-platform-foundation" or nil
    }}
end
