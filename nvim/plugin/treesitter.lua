require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "help",
        "javascript",
        "typescript",
        "rust",
        "lua",
        "haskell",
        "bash",
        "html",
        "css",
        "scss",
        "json",
        "toml",
        "yaml",
        "swift"
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})
