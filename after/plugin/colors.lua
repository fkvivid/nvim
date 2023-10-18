function Gruvbox()
    -- Default options:
    require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
    })
    vim.cmd("colorscheme gruvbox")
end

function TokyoNight()
    vim.cmd[[colorscheme tokyonight-night]]
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

-- ColorMyPencils()
-- Gruvbox()
TokyoNight()

-- Configure lualine.nvim
require('lualine').setup {
  options = {
    theme = 'tokyonight-night',  -- Change the theme here to match your color scheme
    component_separators = '|',
    section_separators = '',
  },
}
