require("config.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- build spec
local spec = {{
    import = "plugins"
}}

require("lazy").setup({
    root = vim.fn.stdpath("data") .. "/lazy",
    spec = spec,
    lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
    defaults = {
        lazy = false,
        version = nil
    },
    install = {
        missing = true,
        colorscheme = {"gruber-darker"}
    },
    checker = {
        enabled = true,
        notify = true,
        frequency = 86400
    },
    change_detection = {
        enabled = true,
        notify = false
    },
    performance = {
        cache = {
            enabled = true
        }
    },
    state = vim.fn.stdpath("state") .. "/lazy/state.json"
})

require("config.autocmd")
require("config.keymaps")