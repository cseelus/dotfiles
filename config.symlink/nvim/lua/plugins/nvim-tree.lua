local g = vim.g

g.git = {
    ignore = 1
}
-- g.nvim_tree_ignore = { '.git', '.cache' } -- empty by default
g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' } -- empty by default, don't auto open tree on specific filetypes.

require'nvim-tree'.setup {
    actions = {
        open_file = {
            quit_on_open = true,
        }
    },
    filters = {
        dotfiles = false,
        exclude = {
            'node_modules'
        }
    },
    renderer = {
        indent_markers = {
            -- Off by default, this option shows indent markers when folders are open
            enable = true
        },
        icons = {
            show = {
                git = false,
                folder = true,
                file = true,
                folder_arrow = true,
            }
        },
        special_files = {
            --  List of filenames that gets highlighted with NvimTreeSpecialFile
            'README.md', 'Makefile', 'MAKEFILE'  }
        }
    }
