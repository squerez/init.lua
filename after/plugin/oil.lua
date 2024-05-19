require("oil").setup({
  -- List of icons to use for different file types
  columns = { "icon" },
  keymaps = {
      ["<C-h>"] = false,
      ["<M-h>"] = "actions.select_split",
  },
  -- Show hidden files
  view_options = {
    show_hidden = true,
  },

  -- Open parent directory in current window 
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),

  -- Open parent directory in floating window
  vim.keymap.set("n", "<space>-", require("oil").toggle_float),

  -- Delete to trash instead of deleting permanently
  delete_to_trash = true,

  -- Skip confirmation for simple edits (e.g. opening a file)
  skip_confirm_for_simple_edits = true,

  -- Experimental: Watch for changes in the current directory
  experimental_watch_for_changes = true,
})
