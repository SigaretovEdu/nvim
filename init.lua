local api = vim.api

local core_conf_files = {
    "options.lua",	-- setting options
	"keymaps.lua",	-- setting keymaps 
	"plugins.lua",	-- settings for plugins
	"configs.lua",
}

-- source all the core config files
for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/lua/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end

