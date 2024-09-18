nordic = require("nordic")

local palette = require 'nordic.colors'
nordic.setup({
    transparent_bg = false,
    override = {
        FloatBorder = {
            fg = palette.white0,
            bg = palette.black2,
        }
    }
})

nordic.load()
