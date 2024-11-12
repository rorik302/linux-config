return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp"
  },
  build = ":Codeium Auth",
  config = function()
    require("codeium").setup({
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        key_bindings = {
          accept = "<A-\\>",
          next = "<A-]>",
          prev = "<A-[>",
          clear = "<A-c>",
          accept_word = "<A-w>",
          accept_line = "<A-l>",
        }
      }
    })
  end
}
