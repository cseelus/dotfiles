require('nvim_comment').setup({
    -- Should key mappings be created
    create_mappings = true,
    -- Normal mode mapping left hand side
    line_mapping = '<leader>c',
    -- Visual/Operator mapping left hand side
    operator_mapping = '<leader>c'
})

-- Workaround to make line_mapping and operator_mapping use the same key mapping
-- https://github.com/terrortylor/nvim-comment/issues/38#issuecomment-962246317
vim.api.nvim_set_keymap('n', '<leader>c', ':CommentToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>c', ":'<,'>CommentToggle<CR>", {noremap = true, silent = true})
