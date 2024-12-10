function FixColours(colour)
    colour = colour or "tokyonight"
    vim.cmd.colorscheme(colour)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "erikbackman/brightburn.vim",
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            FixColours()
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
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
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true,     -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = true },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark",   -- style for floating windows
                },
            })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({

            })
        end
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
    },
    {
        "eldritch-theme/eldritch.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "navarasu/onedark.nvim",
    },
    {
        "slugbyte/lackluster.nvim",
    },
    {
        "aliqyan-21/darkvoid.nvim",
        config = function()
            require('darkvoid').setup({
                transparent = true,
                glow = true,
                show_end_of_buffer = true,

                colors = {
                    fg = "#c0c0c0",
                    bg = "#1c1c1c",
                    cursor = "#bdfe58",
                    line_nr = "#404040",
                    visual = "#303030",
                    comment = "#585858",
                    string = "#d1d1d1",
                    func = "#e1e1e1",
                    kw = "#f1f1f1",
                    identifier = "#b1b1b1",
                    type = "#a1a1a1",
                    type_builtin = "#c5c5c5", -- current
                    -- type_builtin = "#8cf8f7", -- glowy blue old (was present by default before type_builtin was introduced added here for people who may like it)
                    search_highlight = "#1bfd9c",
                    operator = "#1bfd9c",
                    bracket = "#e6e6e6",
                    preprocessor = "#4b8902",
                    bool = "#66b2b2",
                    constant = "#b2d8d8",

                    -- enable or disable specific plugin highlights
                    plugins = {
                        gitsigns = true,
                        nvim_cmp = true,
                        treesitter = true,
                        nvimtree = true,
                        telescope = true,
                        lualine = true,
                        bufferline = true,
                        oil = true,
                        whichkey = true,
                        nvim_notify = true,
                    },

                    -- gitsigns colors
                    added = "#baffc9",
                    changed = "#ffffba",
                    removed = "#ffb3ba",

                    -- Pmenu colors
                    pmenu_bg = "#1c1c1c",
                    pmenu_sel_bg = "#1bfd9c",
                    pmenu_fg = "#c0c0c0",

                    -- EndOfBuffer color
                    eob = "#3c3c3c",

                    -- Telescope specific colors
                    border = "#585858",
                    title = "#bdfe58",

                    -- bufferline specific colors
                    bufferline_selection = "#1bfd9c",

                    -- LSP diagnostics colors
                    error = "#dea6a0",
                    warning = "#d6efd8",
                    hint = "#bedc74",
                    info = "#7fa1c3",
                },
            })
        end
    },
}
