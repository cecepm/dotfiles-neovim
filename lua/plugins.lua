local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return packer.startup(
    function()
        use "wbthomason/packer.nvim"

        -- color related stuff
        use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
        use "siduck76/nvim-base16.lua"
        use "norcalli/nvim-colorizer.lua"

        -- lang stuff
        use "nvim-treesitter/nvim-treesitter"

        use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"

        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
