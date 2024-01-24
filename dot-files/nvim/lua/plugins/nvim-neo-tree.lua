return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },

  config = {
    filesystem = {
      window = {
        position = "current",
      },
      hijack_netrw_behaviour = "open_current"
    },
  },

  vim.api.nvim_set_keymap(
    "n",
    "<space>fe",
    ":Neotree <CR>",
    { noremap = true }
  )
}
