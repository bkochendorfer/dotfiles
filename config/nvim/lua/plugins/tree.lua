return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        filters = { dotfiles = false },
      })
    end,
    keys = {
      { "<LocalLeader>nt", "<cmd>NvimTreeToggle<cr>",   desc = "Toggle file tree" },
      { "<LocalLeader>nr", "<cmd>NvimTreeOpen<cr>",     desc = "Open file tree" },
      { "<LocalLeader>nf", "<cmd>NvimTreeFindFile<cr>", desc = "Find file in tree" },
    },
  },
}
