return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#121212", -- Default background
                base01 = "#9e9e9e", -- Lighter background (status bars)
                base02 = "#121212", -- Selection background
                base03 = "#9e9e9e", -- Comments, invisibles
                base04 = "#ffffff", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#ffffff", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#bb6d73", -- Variables, errors, red
                base09 = "#daa9ad", -- Integers, constants, orange
                base0A = "#c39383", -- Classes, types, yellow
                base0B = "#4bb6ec", -- Strings, green
                base0C = "#55a2c7", -- Support, regex, cyan
                base0D = "#8e8ec8", -- Functions, keywords, blue
                base0E = "#cd98cc", -- Keywords, storage, magenta
                base0F = "#e3c8bf", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
