--local util = require("tokyonight.util")
require('nvim-cursorline').setup {
    cursorline = {
        enable = false
    },
    cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true, bg = "#292e42" } -- TODO: this bg value should not be hardcoded
    }
}
