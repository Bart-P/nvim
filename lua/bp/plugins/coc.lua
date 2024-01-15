local keyset = vim.keymap.set
local opts = { silent = true }
local opts2 = { silent = true, noremap = true, expr = true, replace_keycodes = false }

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

return {
    'neoclide/coc.nvim',
    branch = 'master',
    build = 'npm ci',
    config = function()
        keyset("n", "gd", "<Plug>(coc-definition)", opts)
        keyset("n", "gy", "<Plug>(coc-type-definition)", opts)
        keyset("n", "gi", "<Plug>(coc-implementation)", opts)
        keyset("n", "gr", "<Plug>(coc-references)", opts)
        keyset("n", "K", ":call CocActionAsync('doHover')<CR>", opts)
        keyset("n", "<leader>sd", ":Telescope coc document_symbols<CR>", opts)
        keyset("n", "<leader>sw", ":Telescope coc workspace_symbols<CR>", opts)
        keyset("n", "<leader>dn", "<Plug>(coc-diagnostic-next)", opts)
        keyset("n", "<leader>dp", "<Plug>(coc-diagnostic-prev)", opts)
        keyset("n", "<leader>ca", "<Plug>(coc-codeaction-cursor)", opts)
        keyset("n", "<leader>cA", ":Telescope coc file_code_actions<CR>", opts)
        keyset("n", "<leader>co", ":call CocActionAsync('runCommand', 'editor.action.organizeImport')<CR>", opts)
        keyset("n", "<leader>R", "<Plug>(coc-rename)", opts)

        keyset("i", "<TAB>", [[coc#pum#visible() ? coc#pum#confirm() : '<TAB>']], opts2)
        -- keyset("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "<CR>"]], opts2)
        keyset("i", "<C-j>", [[coc#pum#visible() ? coc#pum#next(1) : '<C-j>']], opts2)
        keyset("i", "<C-k>", [[coc#pum#visible() ? coc#pum#prev(1) : '<C-k>']], opts2)

        -- TODO figure out how to show Signature help in insert mode.. best would be always show if in signature..
        keyset("i", "<C-h>", "<Esc>:call CocActionAsync('showSignatureHelp')<CR>a", opts)
    end
}
