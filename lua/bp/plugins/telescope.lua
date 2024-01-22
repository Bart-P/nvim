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
        local opts = { silent = true }
        local keys = vim.keymap

        keys.set('n', '<C-f>', builtin.find_files, opts)
        keys.set('n', '<C-b>', builtin.buffers, opts)
        keys.set('n', '<leader>ff', builtin.find_files, opts)
        keys.set('n', '<leader>fo', builtin.oldfiles, opts)
        keys.set('n', '<leader>fg', builtin.git_files, opts)
        keys.set('n', '<leader>fs', builtin.grep_string, opts)
        keys.set('n', '<leader>gr', builtin.live_grep, opts)
        keys.set('n', '<leader>fr', builtin.lsp_references, opts)
        keys.set('n', '<leader>fR', builtin.registers, opts)
        keys.set('n', '<leader>fi', builtin.lsp_implementations, opts)
        keys.set('n', '<leader>fk', builtin.keymaps, opts)
        keys.set('n', '<leader>fc', builtin.commands, opts)
        keys.set('n', '<leader>fj', builtin.jumplist, opts)
        keys.set('n', '<leader>fq', builtin.quickfix, opts)
        keys.set('n', '<leader>fm', builtin.marks, opts)
    end
}
