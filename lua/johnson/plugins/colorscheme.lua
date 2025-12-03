return {
  -- Night Fox theme
  -- "edeneast/nightfox.nvim",
  -- priority = 1000,
  -- config = function()
  --   local bg = "#011628"
  --   local bg_dark = "#011423"
  --   local bg_highlight = "#143652"
  --   local bg_search = "#0A64AC"
  --   local bg_visual = "#275378"
  --   local fg = "#CBE0F0"
  --   local fg_dark = "#B4D0E9"
  --   local fg_gutter = "#627E97"
  --   local border = "#547998"
  --
  --   require("nightfox").setup({
  --     style = "night",
  --     on_colors = function(colors)
  --       colors.bg = bg
  --       colors.bg_dark = bg_dark
  --       colors.bg_float = bg_dark
  --       colors.bg_highlight = bg_highlight
  --       colors.bg_popup = bg_dark
  --       colors.bg_search = bg_search
  --       colors.bg_sidebar = bg_dark
  --       colors.bg_statusline = bg_dark
  --       colors.bg_visual = bg_visual
  --       colors.border = border
  --       colors.fg = fg
  --       colors.fg_dark = fg_dark
  --       colors.fg_float = fg
  --       colors.fg_gutter = fg_gutter
  --       colors.fg_sidebar = fg_dark
  --     end,
  --   })
  --
  --   vim.cmd("colorscheme nightfox")
  --
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },

      -- Rose-pine centered custom palette
      palette = {
        base = "#191724",        -- Deep purple-black base
        surface = "#1f1d2e",     -- Slightly lighter surface
        overlay = "#26233a",     -- Overlay for floating windows
        muted = "#6e6a86",       -- Muted purple-grey for comments
        subtle = "#908caa",      -- Subtle text
        text = "#e0def4",        -- Main text - soft white
        love = "#eb6f92",        -- Pink/rose for errors, deletes
        gold = "#f6c177",        -- Gold for warnings, strings
        rose = "#ebbcba",        -- Rose for highlights, search
        pine = "#31748f",        -- Pine blue for info, functions
        foam = "#9ccfd8",        -- Foam cyan for parameters, types
        iris = "#c4a7e7",        -- Iris purple for keywords, constants
        highlight_low = "#21202e",
        highlight_med = "#403d52",
        highlight_high = "#524f67",
      },

      highlight_groups = {
        -- Enhanced highlight customizations
        ColorColumn = { bg = "surface" },
        CursorLine = { bg = "highlight_low" },
        CursorLineNr = { fg = "iris", bold = true },
        LineNr = { fg = "muted" },

        -- Floating windows
        NormalFloat = { bg = "surface" },
        FloatBorder = { fg = "subtle", bg = "surface" },

        -- Status and tab lines
        StatusLine = { fg = "subtle", bg = "surface" },
        StatusLineNC = { fg = "muted", bg = "surface" },
        TabLine = { bg = "surface", fg = "subtle" },
        TabLineFill = { bg = "base" },
        TabLineSel = { fg = "text", bg = "overlay" },

        -- Search and selection
        Visual = { bg = "#6a5acd", fg = "#ffffff" },
        VisualNOS = { bg = "#6a5acd", fg = "#ffffff" },
        Search = { fg = "base", bg = "rose" },
        IncSearch = { fg = "base", bg = "foam" },
        CurSearch = { fg = "base", bg = "love" },

        -- Telescope
        TelescopeBorder = { fg = "subtle", bg = "surface" },
        TelescopeNormal = { bg = "surface" },
        TelescopeSelection = { fg = "text", bg = "highlight_med" },
        TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },

        -- Git signs
        GitSignsAdd = { fg = "foam" },
        GitSignsChange = { fg = "rose" },
        GitSignsDelete = { fg = "love" },
      },
    })

    vim.cmd("colorscheme rose-pine")
  end,
}
