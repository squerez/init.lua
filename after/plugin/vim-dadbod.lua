-- Config for vim-dadbod-completion
require'cmp'.setup.buffer({
    sources = {
        { name = 'vim-dadbod-completion' },
    },
    filetypes = { 'sql', 'mysql', 'plsql'},
})


