return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = { enable = true },
        ensure_installed = {
          "lua", "vim", "vimdoc",
          "terraform", "hcl",
          "javascript", "typescript", "tsx",
          "python", "bash",
        },
      })
    end,
  },
}
