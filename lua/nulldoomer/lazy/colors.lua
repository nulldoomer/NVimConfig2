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
                commentStyle = { italic = true },
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
        "sainnhe/gruvbox-material",
        lazy = true, -- No se carga hasta que se use
        config = function()
            vim.g.gruvbox_material_background = "medium" -- Opciones: "soft", "medium", "hard"
        end
    }
}

