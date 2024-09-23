vim.g.mapleader = ' '
vim.cmd("set number")

-- Setup keybindings for alt key on mac (not working)
--vim.api.nvim_set_keymap('n', '<A-Right>', 'w', { noremap = true })
--vim.api.nvim_set_keymap('n', '<A-Left>', 'b', { noremap = true })

--vim.g.maplocalleader = "\\"

require("config.lazy")

--vim.opt.rtp:prepend(lazypath)

-- Bootstrap lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins from plugins.lua
--require('menace.plugins.plugins')
require("menace.core.keymaps")

