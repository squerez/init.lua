-- Define a Lua function to customize up the ghost buffer
function SetupGhostBuffer()
    local file_path = vim.fn.expand("%:a")
    local pattern = '/ghost-www.hackerrank.com-'

    if string.match(file_path, pattern) then
        vim.bo.filetype = 'py'
    end
end

-- Define autocmds to call the Lua function
vim.cmd([[
augroup vim_ghost
    autocmd!
    autocmd User vim_ghost_connected lua SetupGhostBuffer()
augroup END
]])

-- Define keymap to create ghost server
vim.keymap.set("n", "<leader>gh", ":GhostStart<CR>")
