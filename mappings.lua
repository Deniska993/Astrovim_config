-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- переместить строку вверх
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line up" },
    -- переместить строку вниз
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line down" },
    --
    --
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Bufers" },
    ---
    ["<Leader>m"] = { function() return ":Template " end, remap = true, desc = "Templates" },
    --
  },
  t = {},
}
