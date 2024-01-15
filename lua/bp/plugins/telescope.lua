return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')

        local actions = require('telescope.actions')

        require('telescope').setup {
            defaults = {
                mappings = {
                    i = {
                        ['<C-d>'] = actions.delete_buffer,
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-k>'] = actions.move_selection_previous,
                    }
                },
                file_ignore_patterns = {
                    "node_modules"
                },
            },
            extensions = {
                coc = {
                    theme = 'dropdown',
                    -- prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
                },
            },
            pickers = {
                find_files = {
                    theme = 'dropdown'
                },
                buffers = {
                    theme = 'dropdown',
                    mappings = {
                        n = {
                            ["d"] = "delete_buffer"
                        }
                    }
                },
                git_files = {
                    theme = 'dropdown'
                },
                grep_string = {
                    theme = 'dropdown'
                },
                live_grep = {
                    theme = 'dropdown'
                },
                jumplist = {
                    theme = 'dropdown'
                },
                oldfiles = {
                    theme = 'dropdown'
                },
                quickfix = {
                    theme = 'dropdown'
                },
                marks = {
                    theme = 'dropdown'
                },
                lsp_references = {
                    theme = 'dropdown'
                },
                lsp_implementations = {
                    theme = 'dropdown'
                },
                diagnostics = {
                    theme = 'dropdown'
                },
                registers = {
                    theme = 'dropdown'
                },
            },
            file_ignore_patterns = {
                "node_modules"
            }
        }

        -- Telescope global mappings
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<C-f>', builtin.find_files, {})
        vim.keymap.set('n', '<C-b>', builtin.buffers, {})
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
        vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
        vim.keymap.set('n', '<leader>fR', builtin.registers, {})
        vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
        vim.keymap.set('n', '<leader>fc', builtin.commands, {})
        vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
        vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
        vim.keymap.set('n', '<leader>fm', builtin.marks, {})
    end
}
