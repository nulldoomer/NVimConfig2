function ColorMyPencils(color)
    color = color or "kanagawa-dragon"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false, -- Asegura que se cargue inmediatamente
        priority = 1000, -- Se ejecuta antes que otros esquemas de colores
        config = function()
            require("kanagawa").setup({
                compile = false,
                undercurl = true,
                commentStyle = { italic = true},
                keywordStyle = { italic = false },
                statementStyle = { bold = true },
                transparent = true, -- Fondo transparente
                dimInactive = false,
                theme = "dragon", -- Usa el tema "dragon"
            })
            ColorMyPencils()
        end
    },

    {
        "erikbackman/brightburn.vim",
    },

    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {},
    },

    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                inverse = true,
                contrast = "",
                transparent_mode = false,
            })
        end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },
}

