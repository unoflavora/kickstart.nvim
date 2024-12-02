-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Go LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
              gofumpt = true,
            },
          },
        },
      },
    },
  },

  -- File Browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("telescope").load_extension("file_browser")
      vim.keymap.set(
        "n",
        "<leader>fb",
        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        { noremap = true, desc = "Open File Browser" }
      )
    end,
  },
}
