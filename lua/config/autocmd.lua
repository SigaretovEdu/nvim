local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

vim.cmd.colorscheme("gruber-darker")

-- Remove whitespace on save
autocmd("BufWritePre", {
    pattern = "",
    command = ":%s/\\s\\+$//e"
})

-- Auto close NvimTree if it is last buffer
autocmd("BufEnter", {
    nested = true,
    callback = function()
      if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
        vim.cmd "quit"
      end
    end
  })

-- Run ctags before save
autocmd("BufWritePre", {
  pattern = {"*.cpp", "*.c", ".h", ".hpp"},
  command = ":silent !ctags -R --fields=n"
})
