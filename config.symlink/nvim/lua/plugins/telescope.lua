require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        sorting_strategy = "ascending",
        layout_strategy = "center",
        winblend = 10,
        layout_config = {
            height = 15,
            width = 0.8,
            vertical = {
                mirror = true,
            },
        },
        borderchars = {
            --  { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
            prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
            results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
            preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        },
        file_ignore_patterns = { 'node_modules/*' },
    },
    pickers = {
        -- Your special builtin config goes in here
        buffers = {
            sort_mru = true,
            --bufnr_width = 0,
            --previewer = false,
            mappings = {
                i = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                },
                n = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                }
            }
        },
    }
}
