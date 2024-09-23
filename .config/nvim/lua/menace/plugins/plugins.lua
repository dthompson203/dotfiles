--Remove old Lazy config lines, and add a return statement for the plug-ins configured here
-- Load and configure lazy.nvim
--require("lazy").setup({
    -- Example of a plugin with configuration
--print("Loading plugins.lua")

return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup{
                defaults = {
                    -- Telescope default configurations here
                }
            }
	--Attempt to fix keymap telescope loading (lines 17-21)
	-- Setup keybindings after Telescope is fully loaded
--        local builtin = require('telescope.builtin')
--        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        -- other keybindings for telescope
        end
    },

    -- Another example plugin
    {
        'nvim-tree/nvim-tree.lua',
        config = function()
            require('nvim-tree').setup{
                -- nvim-tree configurations
            }
        end
    },

    -- Catppuccin colorscheme
    {
	    "catppuccin/nvim",
	    name = "catppuccin", -- Optional alias for the plugin
	    config = function()
		require("catppuccin").setup({
               -- Optional configuration for catppuccin goes here
               flavour = "macchiato", -- You can set flavours here as well
           })
           -- Set the colorscheme after setup
           vim.cmd.colorscheme("catppuccin-macchiato")
       end
   },

   -- treesitter
   {
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}

   },
--Begins
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('menace.options.lualine')  -- Load the configuration from options/lualine.lua
    end
}

--Disable the old lualine config
--{
--    'nvim-lualine/lualine.nvim',
--    dependencies = { 'nvim-tree/nvim-web-devicons' },
--    config = function()
--    require('lualine').setup {
--            options = {
--                 theme = 'auto',  -- or your preferred theme
--                section_separators = '',
--                component_separators = ''
--           },
--            sections = {
--                lualine_a = {'mode'},
--                lualine_b = {'branch'},
--                --lualine_c = {'filepath'},
--                lualine_c = {'filename'},
--		lualine_x = {'filetype'},
--                lualine_y = {'location'},
--                lualine_z = {'progress'}
--	} }
--    end
--    }

--               theme = 'auto',  -- or your preferred theme
--                section_separators = '',
--                component_separators = ''
--            },
--            sections = {
--                lualine_a = {'mode'},
--                lualine_b = {'branch'},
--                --lualine_c = {'filepath'},
--                lualine_c = {'filename'},
--		lualine_x = {'filetype'},
--                lualine_y = {'location'},
--                lualine_z = {'progress'}
--	} }
--    end
--    }

   --after

   --Does this next line belong here?
   --local opts = {}

    -- Add more plugins here...
}
