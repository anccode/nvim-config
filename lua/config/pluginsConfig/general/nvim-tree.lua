local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    side = "left",
    on_attach = function(bufnr)
      local tree_cb = require 'nvim-tree.config'.nvim_tree_callback
      vim.api.nvim_buf_set_keymap(bufnr, "n", "l", ":NvimTreeFindFile<CR>", { noremap = true })
      vim.api.nvim_buf_set_keymap(bufnr, "n", "h", ":NvimTreeToggle<CR>", { noremap = true })
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true })
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>r", ":NvimTreeRefresh<CR>", { noremap = true })
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>n", ":NvimTreeCreateDir<CR>", { noremap = true })
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", ":NvimTreeFindFile<CR>", { noremap = true })
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>d", ":NvimTreeDelete<CR>", { noremap = true })
    end,
  },
}
