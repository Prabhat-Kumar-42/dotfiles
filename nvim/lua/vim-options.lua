-- leader key --
-- vim.g.mapleader = " "

-- custom options --
vim.cmd("set number")
vim.cmd("set relativenumber")

-- tabs and intendation --
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for intendent width	
vim.opt.expandtab = true -- expand tab to spaces 
vim.opt.autoindent = true -- copy indent from current from current line when starting a new one	

vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position 

vim.opt.wrap = false 

-- search settings --
vim.opt.ignorecase = true -- ignore case when searching 
vim.opt.smartcase = true  --  if search string has mixed chars, 
			  -- assume the search to be case sensitive, 
			  -- eg:
				-- Abc [case sensitive search]
				-- abc [case insensitive search] 

-- cursor settings --
vim.opt.cursorline = true

--  turn on termguicolors for tokyonight colorscheme to work
--  ( have to use iterm2 or any other true color terminal )
vim.opt.termguicolors =true
vim.opt.background = "dark" -- colorscheme toggle light dark (or any custom if available) 
vim.opt.signcolumn = "yes" -- show sign column so color doesn't shift

-- clipboard --
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- window split --
vim.opt.splitright = true
vim.opt.splitbelow  = true

---- VIM PANES NAVIGATION KEYMAPS ----
-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')


