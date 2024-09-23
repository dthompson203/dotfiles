-- ~/.config/nvim/lua/menace/options/lualine.lua
require('lualine').setup {
    options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '',
	show_filename_only = false
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'%f'},
        lualine_x = {'filetype'},
        lualine_y = {'location'},
        lualine_z = {'progress'}
    }
}

