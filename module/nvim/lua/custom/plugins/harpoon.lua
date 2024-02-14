local function toggle() require("harpoon.ui").toggle_quick_menu() end
local function add() require("harpoon.mark").add_file() end
local function one() require("harpoon.ui").nav_file(1) end
local function two() require("harpoon.ui").nav_file(2) end
local function three() require("harpoon.ui").nav_file(3) end
local function four() require("harpoon.ui").nav_file(4) end
local function prev() require("harpoon.ui").nav_prev() end
local function next() require("harpoon.ui").nav_next() end

return {
    "ThePrimeagen/harpoon",
    dependencies = {"nvim-lua/plenary.nvim"},
    opts = {},
    keys = {
        {"<leader>hm", toggle, desc = "[H]arpoon [M]enu"},
        {"<leader>ha", add, desc = "[H]arpoon [A]dd"},
        {"<leader>h1", one, desc = "[H]arpoon File [1]"},
        {"<leader>h2", two, desc = "[H]arpoon File [2]"},
        {"<leader>h3", three, desc = "[H]arpoon File [3]"},
        {"<leader>h4", four, desc = "[H]arpoon File [4]"},
        {"<leader>hp", prev, desc = "[H]arpoon [p]rev"},
        {"<leader>hn", next, desc = "[H]arpoon [n]ext"},
    }
}

