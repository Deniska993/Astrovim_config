-- set vim options here (vim.<first_key>.<second_key> = value)
vim.g.loaded_netrw = 4
vim.g.loaded_netrwPlugin = 3

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = false
-- set sw ts sts 4 python 
vim.cmd("autocmd FileType python set sw=4 | set ts=4 | set sts=4")
-- det filetype htmldjango
vim.cmd([[
augroup htmldjango
  autocmd!
  autocmd BufRead,BufNewFile *.html set filetype=htmldjango
  autocmd BufRead,BufNewFile *.htmldjango set filetype=htmldjango
augroup END]])


return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "yes",     -- sets vim.opt.signcolumn to auto
    wrap = false,           -- sets vim.opt.wrap
    mouse = "a",           -- Enable mouse support
    updatetime = 1000,
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 5,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
--   set Python-specific options
