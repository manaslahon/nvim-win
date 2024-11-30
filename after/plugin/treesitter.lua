require 'nvim-treesitter.install'.compilers = { "zig" }

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "python", "lua", "markdown", "markdown_inline" }, 
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

