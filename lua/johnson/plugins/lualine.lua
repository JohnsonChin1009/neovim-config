return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- Rose-pine colors
    local colors = {
      pine = "#31748f",      -- Blue for normal mode
      foam = "#9ccfd8",      -- Cyan for insert mode
      iris = "#c4a7e7",      -- Purple for visual mode
      gold = "#f6c177",      -- Gold for command mode
      love = "#eb6f92",      -- Pink for replace mode
      rose = "#ebbcba",      -- Rose accent
      fg = "#e0def4",        -- Main text
      bg = "#191724",        -- Base background
      surface = "#1f1d2e",   -- Surface background
      inactive_bg = "#26233a",
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.pine, fg = colors.bg, gui = "bold" },
        b = { bg = colors.surface, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.foam, fg = colors.bg, gui = "bold" },
        b = { bg = colors.surface, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.iris, fg = colors.bg, gui = "bold" },
        b = { bg = colors.surface, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.gold, fg = colors.bg, gui = "bold" },
        b = { bg = colors.surface, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.love, fg = colors.bg, gui = "bold" },
        b = { bg = colors.surface, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.fg, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.fg },
        c = { bg = colors.inactive_bg, fg = colors.fg },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.rose },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
