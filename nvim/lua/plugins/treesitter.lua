return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    -- configuration de treesitter
    treesitter.setup({
      -- activation de la coloration syntaxique
      highlight = {
        enable = true,
      },
      -- activation de l'indentation améliorée
      indent = { enable = true },

      -- langages installés et configurés
      ensure_installed = {
        -- base 
        "bash",
        "lua",
        "vim",
        "markdown",
        -- Web/Frontend
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- PHP 
        "php",
        "phpdoc", --documentation 
        -- SQL
        "sql",
        -- config files
        "yaml",
        "toml",
        "dockerfile",
        "gitignore",
        "markdown_inline",
        "python",
        "rst",
        "rust",
        
      },
      -- lorse de l'appui sur <Ctrl-space> sélectionne le bloc
      -- courant spécifique au langage de programmation
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
