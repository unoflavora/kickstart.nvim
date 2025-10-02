return {
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
      protobuf_language_server = {
        cmd = { "protobuf-language-server" },
        filetypes = { "proto", "cpp" },
        root_dir = require("lspconfig.util").root_pattern(".git", "."),
        single_file_support = true,
        settings = {
          ["additional-proto-dirs"] = {
            -- "vendor/protos",
            -- "third_party",
          },
        },
      },
    },
  },
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
