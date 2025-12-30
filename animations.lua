local animation_speed = 0.6

local info = {
  north = require("__canal-excavator-graphics__/graphics/sprites/north/Machine"),
  east = require("__canal-excavator-graphics__/graphics/sprites/east/Machine"),
  south = require("__canal-excavator-graphics__/graphics/sprites/south/Machine"),
  west = require("__canal-excavator-graphics__/graphics/sprites/west/Machine")
}

local graphics = {
  graphics_set =
  {
    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 127, west = 30 },

    animation =
    {
      north =
      {
        layers =
        {
          {
            -- Machine animation
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/north/machine.png",
            line_length = info.north.line_length,
            width = info.north.width,
            height = info.north.height,
            frame_count = info.north.sprite_count,
            shift = info.north.shift,
            animation_speed = animation_speed,
            direction_count = 1,
            repeat_count = 1,
            scale = info.north.scale,
          },
          {
            -- Shadows
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/north/shadows.png",
            line_length = 8,
            width = 514,
            height = 330,
            shift = util.by_pixel(79.0, -50.5),
            frame_count = 64,
            animation_speed = animation_speed,
            draw_as_shadow = true,
            repeat_count = 1,
            scale = 0.5
          }
        }
      },
      east =
      {
        layers =
        {
          {
            -- Machine animation
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/east/machine.png",
            line_length = info.east.line_length,
            width = info.east.width,
            height = info.east.height,
            frame_count = info.east.sprite_count,
            shift = info.east.shift,
            animation_speed = animation_speed,
            direction_count = 1,
            repeat_count = 1,
            scale = info.east.scale,
          },
          { 
            -- Shadows
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/east/shadows.png",
            line_length = 8,
            width = 743,
            height = 124,
            frame_count = 64,
            animation_speed = animation_speed,
            draw_as_shadow = true,
            shift = util.by_pixel(135, 5.5),
            repeat_count = 1,
            scale = 0.5
          }
        }
      },
      south =
      {
        layers =
        {
          {
            -- Machine animation
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/south/machine.png",
            line_length = info.south.line_length,
            width = info.south.width,
            height = info.south.height,
            frame_count = info.south.sprite_count,
            shift = info.south.shift,
            animation_speed = animation_speed,
            direction_count = 1,
            repeat_count = 1,
            scale = info.south.scale,
          },
          {
            -- Shadows
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/south/shadows.png",
            line_length = 8,
            width = 520,
            height = 330,
            shift = util.by_pixel(91.0, 90.5),
            frame_count = 64,
            animation_speed = animation_speed,
            draw_as_shadow = true,
            repeat_count = 1,
            scale = 0.5
          }
        }
      },
      west =
      {
        layers =
        {
          {
            -- Machine animation
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/west/machine.png",
            line_length = info.west.line_length,
            width = info.west.width,
            height = info.west.height,
            frame_count = info.west.sprite_count,
            shift = info.west.shift,
            animation_speed = animation_speed,
            direction_count = 1,
            repeat_count = 1,
            scale = info.west.scale,
          },
          {
            -- Shadows
            priority = "high",
            filename = "__canal-excavator-graphics__/graphics/sprites/west/shadows.png",
            line_length = 8,
            width = 568,
            height = 124,
            shift = util.by_pixel(-31.0, 5.0),
            frame_count = 64,
            animation_speed = animation_speed,
            draw_as_shadow = true,
            repeat_count = 1,
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        -- Rocks
        fadeout = false,
        apply_tint = "resource-color",
        
        north_animation = 
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/north/rocks.png",
          line_length = 8,
          width = 97,
          height = 495,
          shift = util.by_pixel(-9.75, -98.25),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        east_animation =
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/east/rocks.png",
          line_length = 8,
          width = 360,
          height = 332,
          shift = util.by_pixel(36.0, -62.0),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        south_animation = {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/south/rocks.png",
          line_length = 8,
          width = 95,
          height = 188,
          shift = util.by_pixel(3.25, 21.0),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        west_animation = 
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/west/rocks.png",
          line_length = 8,
          width = 370,
          height = 325,
          shift = util.by_pixel(-39.0, -56.75),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
      },
      {
        -- Drop
        fadeout = true,
        apply_tint = "resource-color",
        
        north_animation = 
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/north/drop.png",
          line_length = 8,
          width = 57,
          height = 160,
          shift = util.by_pixel(-8.75, -192.5),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        east_animation =
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/east/drop.png",
          line_length = 8,
          width = 62,
          height = 209,
          shift = util.by_pixel(135.5, -86.75),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        south_animation = {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/south/drop.png",
          line_length = 8,
          width = 57,
          height = 202,
          shift = util.by_pixel(2.75, 50.0),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        west_animation = 
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/west/drop.png",
          line_length = 8,
          width = 57,
          height = 205,
          shift = util.by_pixel(-137.25, -84.25),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
      },
      {
        -- Hopper Dust
        fadeout = true,
        apply_tint = "resource-color",
        
        north_animation = 
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/north/hopperDust.png",
          line_length = 8,
          width = 124,
          height = 118,
          shift = util.by_pixel(-10.0, -169.5),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        east_animation =
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/east/hopperDust.png",
          line_length = 8,
          width = 109,
          height = 127,
          shift = util.by_pixel(136.25, -62.25),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        south_animation = {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/south/hopperDust.png",
          line_length = 8,
          width = 124,
          height = 117,
          shift = util.by_pixel(3.5, 81.25),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        west_animation = 
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/west/hopperDust.png",
          line_length = 8,
          width = 109,
          height = 120,
          shift = util.by_pixel(-136.75, -56.0),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
      },
      {
        -- Floor Dust
        fadeout = true,
        apply_tint = "resource-color",
        
        north_animation =
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/north/floorDust.png",
          line_length = 8,
          width = 192,
          height = 157,
          shift = util.by_pixel(-10.5, -11.25),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        east_animation =
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/east/floorDust.png",
          line_length = 8,
          width = 195,
          height = 153,
          shift = util.by_pixel(-8.75, -5.25),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        south_animation = {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/south/floorDust.png",
          line_length = 8,
          width = 197,
          height = 149,
          shift = util.by_pixel(4.75, 29.75),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
        west_animation =
        {
          priority = "high",
          filename = "__canal-excavator-graphics__/graphics/sprites/west/floorDust.png",
          line_length = 8,
          width = 208,
          height = 126,
          shift = util.by_pixel(8.0, 5.5),
          frame_count = 64,
          animation_speed = animation_speed,
          direction_count = 1,
          repeat_count = 1,
          scale = 0.5,
        },
      },
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__canal-excavator-graphics__/graphics/sprites/reflections.png",
        priority = "extra-high",
        width = 176,
        height = 248,
        shift = util.by_pixel(-20, 0),
        variation_count = 4,
        scale = 2.5
      },
      rotate = false,
      orientation_to_variation = true
    },
    reset_animation_when_frozen = true,
    frozen_patch =
    {
      -- Frozen
      north = {
        filename = "__canal-excavator-graphics__/graphics/sprites/north/frozen.png",
        line_length = 1,
        width = 176,
        height = 505,
        shift = util.by_pixel(-12/2, -219.5/2),
        scale = 0.5
      },
      east = {
        filename = "__canal-excavator-graphics__/graphics/sprites/east/frozen.png",
        line_length = 1,
        width = 465,
        height = 364,
        shift = util.by_pixel(120.5/2, -116/2),
        scale = 0.5
      },
      south = {
        filename = "__canal-excavator-graphics__/graphics/sprites/south/frozen.png",
        line_length = 1,
        width = 176,
        height = 400,
        shift = util.by_pixel(0, 139/2),
        scale = 0.5
      },
      west = {
        filename = "__canal-excavator-graphics__/graphics/sprites/west/frozen.png",
        line_length = 1,
        width = 464,
        height = 348,
        shift = util.by_pixel(-121/2, -116/2),
        scale = 0.5
      }
    }
  },
  integration = {}
}

for i, direction in pairs({"north", "east", "south", "west"}) do
  local info = require("__canal-excavator-graphics__/graphics/sprites/" .. direction .. "/Integration")
  graphics.integration[direction] = {
    filename = "__canal-excavator-graphics__/graphics/sprites/" .. direction .. "/Integration.png",
    width = info.width,
    height = info.height,
    shift = info.shift,
    scale = info.scale,
    frame_count = 1,
    line_length = 1,
    direction_count = 1,
    repeat_count = 1,
  }
end

return graphics