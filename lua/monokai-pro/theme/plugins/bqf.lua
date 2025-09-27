local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
    return {
        BqfPreviewBorder = {
            fg = hp.blend(c.base.green, 0.4, c.editorSuggestWidget.background),
            bg = c.editorSuggestWidget.background,
        },
        BqfSign = {
            fg = c.base.cyan,
            bg = c.editorSuggestWidget.background,
        },
        BqfPreviewTitle = {
            fg = c.base.magenta,
            bg = c.editorSuggestWidget.background,
            bold = true,
        },
        BqfPreviewThumb = {
            bg = c.base.green,
        },
        BqfPreviewFloat = {
            bg = c.editorSuggestWidget.background,
        },
        BqfPreviewCursorLine = {
            bg = c.editorSuggestWidget.background,
        },
        BqfPreviewSbar = {
            bg = c.editorSuggestWidget.background,
        },
        BqfPreviewCursor = {
            bg = hp.blend(c.editorSuggestWidget.foreground, 0.4, c.editorSuggestWidget.background),
        },
        BqfPreviewRange = {
            fg = c.base.red,
            italic = true,
        },
    }
end

return M
