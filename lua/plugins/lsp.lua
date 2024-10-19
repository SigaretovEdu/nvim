return {{
    -- Mason
    "williamboman/mason.nvim",
    cmd = {"Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog"},

    opts = {
        PATH = "prepend",
        ui = {
            check_outdated_packages_on_open = true,
            border = "single",
            icons = {
                package_pending = "⇓ ",
                package_installed = "+ ",
                package_uninstalled = "- "
            },

            keymaps = {
                toggle_server_expand = "<CR>",
                install_server = "i",
                update_server = "u",
                check_server_version = "c",
                update_all_servers = "U",
                check_outdated_servers = "C",
                uninstall_server = "X",
                cancel_installation = "<C-c>"
            }
        },

        max_concurrent_installers = 10
    },
    config = function(_, opts)
        require("mason").setup(opts)
    end
}, {
    "neovim/nvim-lspconfig",

    event = {"BufReadPre", "BufNewFile"},
    lazy = true,

    dependencies = {{"williamboman/mason.nvim"}, {"williamboman/mason-lspconfig.nvim"}},

    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({
            cmd = {"clangd"}
        })
        lspconfig.pyright.setup{}

    end
}, {
    "jose-elias-alvarez/null-ls.nvim",

    dependencies = {"nvim-lua/plenary.nvim"},

    config = function(_, opts)
        local null_ls = require("null-ls")
        require("null-ls").setup({
            sources = { -- Python
            null_ls.builtins.formatting.autoflake, null_ls.builtins.diagnostics.flake8}
        })
    end
}}
