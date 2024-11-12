return {
  "nvim-treesitter/nvim-treesitter",
  event = "BufEnter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects"
  },
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "css",
      "dockerfile",
      "html",
      "hyprlang",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "nginx",
      "nu",
      "python",
      "query",
      "regex",
      "scss",
      "sql",
      "tmux",
      "toml",
      "typescript",
      "vim",
      "vimdoc",
      "vue",
      "yaml",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    },
    indent = {
      enable = true
    }
  }
}