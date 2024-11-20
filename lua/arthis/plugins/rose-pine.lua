return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            styles = {
                italic = false,
                transparency = true,
            },
            palette = {
                main = {
                    pine = "#eb6f92", -- keywords
                    iris = "#9ccfd8", -- methods
                    foam = "#ebbcba", -- fields, primitives
                    rose = "#f6c177", -- name of functions
                }
            },
        })
    end,
}
