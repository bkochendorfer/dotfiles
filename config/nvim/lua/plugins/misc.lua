return {
  { "hashivim/vim-terraform" },
  {
    "robitx/gp.nvim",
    config = function()
      require("gp").setup({
        openai_api_key = { "cat", "/home/bkochendorfer/.openai_api_key" },
      })
    end,
  },
}
