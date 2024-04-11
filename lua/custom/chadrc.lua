---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.plugins = "custom.plugins"

M.ui = {
  theme = "pastelbeans",
  theme_toggle = { "gruvchad", "wombat" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
