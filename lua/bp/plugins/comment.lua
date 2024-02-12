return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    config = function()
        require('Comment').setup {
            pre_hook = function()
                return vim.bo.commentstring
            end,
        }
    end,
    -- pre_hook = require('ts_context_comment.integrations.comment_nvim').create_pre_hook(),
    -- pre_hook = require('ts_context_comment').create_pre_hook(),
    lazy = false,
}
