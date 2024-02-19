local utils = require("benpl.utils")

local map = utils.map
local maps = utils.empty_map_table()

maps.n["<leader>w"] = { "<cmd>w<cr>", desc = "Save" }
maps.n["<leader>q"] = { "<cmd>confirm q<cr>", desc = "Quit" }
maps.n["<leader>Q"] = { "<cmd>confirm qall<cr>", desc = "Quit all" }
maps.n["<leader>n"] = { "<cmd>enew<cr>", desc = "New File" }
maps.n["<C-s>"] = { "<cmd>w!<cr>", desc = "Force write" }
maps.n["<C-q>"] = { "<cmd>qa!<cr>", desc = "Force quit" }

-- Ctrl h/j/k/l to move move around windows
maps.n["<C-h>"] = { "<C-w>h", desc = "Window left" }
maps.n["<C-j>"] = { "<C-w>j", desc = "Window down" }
maps.n["<C-k>"] = { "<C-w>k", desc = "Window up" }
maps.n["<C-l>"] = { "<C-w>l", desc = "Window right" }

-- -/= resize horizontally Shift + -/= to resize vertically
-- maps.n["+"] = { "<C-w>1+" }
-- maps.n["_"] = { "<C-w>1-" }
-- maps.n["<A-=>"] = { "<C-w>1>" }
-- maps.n["<A-->"] = { "<C-w>1<" }

-- Alt + j/k to move text up or down
maps.n["<A-j>"] = { "<cmd>move .+1<cr>==", desc = "Move text down" }
maps.n["<A-k>"] = { "<cmd>move .-2<cr>==", desc = "Move text up" }
maps.i["<A-j>"] = { "<esc><cmd>move .+1<cr>==gi", desc = "Move text down"  }
maps.i["<A-k>"] = { "<esc><cmd>move .-2<cr>==gi", desc = "Move text up" }
maps.v["<A-j>"] = { "<cmd>move .+1<cr>==", desc = "Move text down"  }
maps.v["<A-k>"] = { "<cmd>move  .-2<cr>==", desc = "Move text up" }
maps.x["<A-j>"] = { "<cmd>move '>+1<cr>gv=gv", desc = "Move text down"  }
maps.x["<A-k>"] = { "<cmd>move '<-2<cr>gv=gv", desc = "Move text up" }

-- Shift indent in visual stays in visual
maps.v["<"] = { "<gv", desc = "Un-Indent text"  }
maps.v[">"] = { ">gv", desc = "Indent text" }

-- Esc to clear search highlight
maps.n["<esc>"] = { "<cmd>noh<cr>", desc = "Disable search highlight" }

-- Splits
maps.n["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" }
maps.n["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" }

-- Shift tabs with h/l, buffers with j/k
maps.n["<A-n>"] = { "<cmd>tabnew<cr>" }
maps.n["<A-w>"] = { "<cmd>tabclose<cr>" }
maps.n["<A-q>"] = { "<cmd>tabonly<cr>" }
maps.n["<A-h>"] = { "<cmd>tabprevious<cr>" }
maps.n["<A-l>"] = { "<cmd>tabnext<cr>" }
maps.n["<A-]>"] = { "<cmd>bnext<cr>" }
maps.n["<A-[>"] = { "<cmd>bprevious<cr>" }

maps.n["<leader>p"] = { desc = "󰏖 Packages" }
maps.n["<leader>pi"] = { function() require("lazy").install() end, desc = "Plugins Install" }
maps.n["<leader>ps"] = { function() require("lazy").home() end, desc = "Plugins Status" }
maps.n["<leader>pS"] = { function() require("lazy").sync() end, desc = "Plugins Sync" }
maps.n["<leader>pu"] = { function() require("lazy").check() end, desc = "Plugins Check Updates" }
maps.n["<leader>pU"] = { function() require("lazy").update() end, desc = "Plugins Update" }
maps.n["<leader>pp"] = { function() require("lazy").profile() end, desc = "Profile startup" }

maps.n["<leader>c"] = { function() require("benpl.utils.buffer").close() end, desc = "Close buffer" }
maps.n["<leader>C"] = { function() require("benpl.utils.buffer").close(0, true) end, desc = "Force close buffer" }
maps.n["]b"] = { function() require("benpl.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" }
maps.n["[b"] = { function() require("benpl.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Next buffer" }

maps.n["-"] = { "<cmd>Telescope find_files<cr>", desc = "Find files" }
maps.n["<leader>ff"] = { "<cmd>Telescope git_files<cr>", desc = "Git files" }
maps.n["<leader>fr"] = { "<cmd>Telescope frecency<cr>", desc = "Frecent files" }
maps.n["<leader>fw"] = { "<cmd>Telescope grep_string<cr>", desc = "Find word" }
maps.n["<leader>fo"] = { "<cmd>Telescope buffers<cr>", desc = "Switch open buffers" }
maps.n["<leader>ft"] = { "<cmd>Telescope colorschemes<cr>", desc = "Switch colorschemes" }

--maps.n["_"] = { "<cmd>Oil<cr>", desc = "Oil" }
maps.n["_"] = {function() require("mini.files").open() end, desc = "Mini" }

maps.n["<leader><leader>"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon quick menu" }
maps.n["<leader>a"] = { function() require("harpoon.mark").add_file() end, desc = "Add to harpoon" }
maps.n["<A-1>"] = { function() require("harpoon.ui").nav_file(1) end, desc = "Harpoon 1" }
maps.n["<A-2>"] = { function() require("harpoon.ui").nav_file(2) end, desc = "Harpoon 2" }
maps.n["<A-3>"] = { function() require("harpoon.ui").nav_file(3) end, desc = "Harpoon 3" }
maps.n["<A-4>"] = { function() require("harpoon.ui").nav_file(4) end, desc = "Harpoon 4" }

utils.set_mappings(maps)
