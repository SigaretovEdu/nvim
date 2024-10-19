return {{
    "numToStr/Comment.nvim",
    opts = {
        active = true,
        -- on_config_done = nil,
        padding = true,
        sticky = true,
        ignore = "^$",

        mappings = {
            basic = true,
            extra = false
        },

        toggler = {
            line = '<C-/>',
            block = '<C-S-/>',
        },

        opleader = {
            line = '<C-/>',
            block = '<C-S-/>',
        },

        pre_hook = nil,

        post_hook = nil
    },

    config = function(_, opts)
        require("Comment").setup(opts)
    end
}}
