return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim", -- Add this for fzf extension
    },

    config = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = require('telescope.actions').move_selection_next,
                        ["<C-k>"] = require('telescope.actions').move_selection_previous,
                    },
                },
                layout_strategy = "horizontal",
                layout_config = {
                    width = 0.9,
                    height = 0.8,
                    preview_width = 0.6
                },
            },
            pickers = {
                find_files = {
                    hidden = true, -- show hidden files
                },
            },
        })

        -- Only load fzf if it's installed
        pcall(require('telescope').load_extension, 'fzf')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
        vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "Git files" })
        vim.keymap.set('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "Live grep" })
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "Search current word" })
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "Search current WORD" })
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "Help tags" })
    end
}
