return {{
    "willothy/nvim-cokeline",

    dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "stevearc/resession.nvim"},

    opts = {
        -- Only show the bufferline when there are at least this many visible buffers.
        -- default: `1`.
        ---@type integer
        show_if_buffers_are_at_least = 2,

        buffers = {
            filter_valid = false,
            filter_visible = false,
            focus_on_delete = 'prev',
            new_buffers_position = 'next',
            delete_on_right_click = true
        },

        mappings = {
            cycle_prev_next = true,
            disable_mouse = false
        },

        -- Maintains a history of focused buffers using a ringbuffer
        history = {
            enabled = true,
            size = 2
        },

        rendering = {
            max_buffer_width = 999
        },

        pick = {
            use_filename = true,
            letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERTYQP'
        },
    },

    config = function(_, opts)
        require("cokeline").setup(opts)
    end
}}
