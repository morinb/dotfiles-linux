return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "mrcjkb/rustaceanvim",
  -- Completion framework:
  "hrsh7th/nvim-cmp", 

    -- LSP completion source:
  "hrsh7th/cmp-nvim-lsp",

  -- Useful completion sources:
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/vim-vsnip",
  { "nvim-treesitter/nvim-treesitter", lazy = false, build = ':TSUpdate' },
  { "nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = {
      "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup({})

        vim.keymap.set("n", "<Leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Open/Close file explorer" })
      end,
  }
}
