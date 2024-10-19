return {{
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim", {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
    }},

    opts = {
        defaults = {
            mappings = {
              i = {
                ["<esc>"] = "close"
              }
            }
          },
    },

    config = function(_, opts)
        require("telescope").setup(opts)
        require("telescope").load_extension("fzf")
    end
}}
