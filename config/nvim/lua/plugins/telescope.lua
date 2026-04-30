return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup()
      telescope.load_extension("fzf")
    end,
    keys = {
      { "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ") }) end, desc = "Grep string" },
      { "<C-p>",      function() require("telescope.builtin").git_files() end,                                           desc = "Git files" },
      { "<leader>pf", function() require("telescope.builtin").find_files() end,                                          desc = "Find files" },
      { "<leader>pw", function() require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") }) end,    desc = "Grep word under cursor" },
      { "<leader>pb", function() require("telescope.builtin").buffers() end,                                             desc = "Buffers" },
      { "<leader>vh", function() require("telescope.builtin").help_tags() end,                                           desc = "Help tags" },
    },
  },
}
