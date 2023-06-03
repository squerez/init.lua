vim.keymap.set("n", "<leader>zz", function()
    require("twilight").setup {}
    require("twilight").toggle()
    vim.wo.wrap = false
    vim.wo.number = true
    vim.wo.rnu = true
    ColorMyPencils()
end)
