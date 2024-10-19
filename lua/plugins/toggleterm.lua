return {{
    "akinsho/toggleterm.nvim",

    opts = {
        start_in_insert = true,
    },

    config = function(_, opts)
        require("toggleterm").setup{
            start_in_insert = true,
        }
    end
}}
