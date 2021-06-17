local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- mapping the jumping between splits.
map("n", "<C-J>", "<C-W>j", opt)
map("n", "<C-K>", "<C-W>k", opt)
map("n", "<C-H>", "<C-W>h", opt)
map("n", "<C-L>", "<C-W>l", opt)
