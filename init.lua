-- Map leader
vim.g.mapleader = "<Space>"
vim.g.maplocalleader = "<Space>"
-- Don't move space when leader
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })

if vim.g.neovide then
  require("hs.neovide")
end
require("hs.lazy")
require("hs.binds")
require("hs.opts")
