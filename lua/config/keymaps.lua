-- Telescope
local tbuiltin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", tbuiltin.find_files, {})
vim.keymap.set("n", "<leader>fg", tbuiltin.live_grep, {})
vim.keymap.set("n", "<leader>fb", tbuiltin.buffers, {})
vim.keymap.set("n", "<leader>fr", tbuiltin.tags, {})

-- NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})

-- Move between splits with Alt
vim.keymap.set("n", "<A-Left>", "<C-w>h", {})
vim.keymap.set("n", "<A-Down>", "<C-w>j", {})
vim.keymap.set("n", "<A-Up>", "<C-w>k", {})
vim.keymap.set("n", "<A-Right>", "<C-w>l", {})

vim.keymap.set("i", "<A-Left>", "<ESC><C-w>h", {})
vim.keymap.set("i", "<A-Down>", "<ESC><C-w>j", {})
vim.keymap.set("i", "<A-Up>", "<ESC><C-w>k", {})
vim.keymap.set("i", "<A-Right>", "<ESC><C-w>l", {})

-- Move to the start/end of line like in emacs
vim.keymap.set("n", "<C-e>", "<S-$>", {})
vim.keymap.set("n", "<C-a>", "0", {})
vim.keymap.set("v", "<C-e>", "<S-$>", {})
vim.keymap.set("v", "<C-a>", "0", {})
vim.keymap.set("i", "<C-e>", "<ESC><S-$>i<Right>", {})
vim.keymap.set("i", "<C-a>", "<ESC>0i", {})

-- Resize windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", {})
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {})

-- Move line up/down
vim.keymap.set("x", "<A-Up>", ":move '<-2<CR>gv-gv", {})
vim.keymap.set("x", "<A-Down>", ":move '>+1<CR>gv-gv", {})

-- Buffers
vim.keymap.set("n", "<leader>x", function() require("cokeline.buffers").get_current():delete() end, {})
vim.keymap.set("n", "<Tab>", function() require("cokeline.mappings").by_step("focus", 1) end, {})
vim.keymap.set("n", "<S-Tab>", function() require("cokeline.mappings").by_step("focus", -1) end, {})
vim.keymap.set("n", "<S-Left>", function() require("cokeline.mappings").by_step("switch", -1) end, {})
vim.keymap.set("n", "<S-Right>", function() require("cokeline.mappings").by_step("switch", 1) end, {})

-- Fromatting
function FormatFunction()
  vim.lsp.buf.format({
    async = true,
  })
end
vim.keymap.set("n", "<space>f", "<cmd>lua FormatFunction()<CR>", {noremap = true})

-- LSP
vim.keymap.set("n", "<space>re", vim.lsp.buf.rename, {})
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Terminal
local term = require("toggleterm")
vim.keymap.set("n", "<A-Enter>", "<cmd>ToggleTerm direction=float<CR>", {})
vim.keymap.set("t", "<A-Enter>", "<C-\\><C-n><C-w>l", {})
