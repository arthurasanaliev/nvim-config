return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "cpp", "lua", "go", "gomod", "gosum", "gotmpl", "gowork", "markdown", "markdown_inline", "html", "css", "json", "javascript", "vim", "vimdoc" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
