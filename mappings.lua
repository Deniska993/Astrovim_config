-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    ["<leader>b"] = { name = "Bufers" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line up" },             -- move string up
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line down" },           -- move string down
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },          -- new tab
    ["<leader>bD"] = { "<cmd>tabclose<cr>", desc = "Close tab" },      -- close tab
    -- ["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", desc = "Open tree" }, -- open tree

  },
}
