local opts = { noremap = true, silent = true }
local nvim_opts = { noremap = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Better window movement
keymap("n", "<C-h>", "<C-w>h", term_opts)
keymap("n", "<C-j>", "<C-w>j", term_opts)
keymap("n", "<C-k>", "<C-w>k", term_opts)
keymap("n", "<C-l>", "<C-w>l", term_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Keep visual mode indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Save file by CTRL-S
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<ESC> :w<CR>", opts)

-- Faster way to escpape in insert mode
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)

-- Remove highlights
keymap("n", "<CR>", ":noh<CR><CR>", opts)

-- Buffers
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", "<CMD>Telescope find_files<CR>", nvim_opts)
keymap("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", nvim_opts)

-- Find word/file across project
keymap("n", "<Leader>pf", "yiw<CMD>Telescope git_files<CR><C-r>+<ESC>", nvim_opts)
keymap("n", "<Leader>pw", "<CMD>Telescope grep_string<CR><ESC>", nvim_opts)

-- Vim bbye
keymap("n", "<Leader>-", ":Bdelete<CR>", nvim_opts)

-- Formatting
keymap("n", "<S-f>", ":Format<CR>", opts)

-- Split screen
keymap("n", "<leader>v", ":vsplit<CR>", opts)
keymap("n", "<leader>h", ":hsplit<CR>", opts)

-- Motion
keymap("n", "<leader>0A", ":HopWord<CR>", opts)
keymap("n", "<leader>0a", ":HopWordAC<CR>", opts)
keymap("n", "<leader>0b", ":HopWordBC<CR>", opts)

-- Harpoon
keymap("n", "<leader>Ha", ":lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<leader>Hm", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>Hn", ":lua require('harpoon.ui').nav_next()<CR>", opts)
keymap("n", "<leader>Hp", ":lua require('harpoon.ui').nav_prev()<CR>", opts)
