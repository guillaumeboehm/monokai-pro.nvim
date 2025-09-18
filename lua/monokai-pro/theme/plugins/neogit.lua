local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
    local isBackgroundClear = vim.tbl_contains(config.background_clear, "neogit")
    local transparent_bg = c.editor.background
    local transparent_bg_border = c.base.dimmed2
    local common_fg = hp.lighten(c.sideBar.foreground, 30)
    local neogit_bg = isBackgroundClear and transparent_bg or hp.blend(c.base.dimmed5, 0.15, c.editor.background)

    return {
        -- Graph colors
        NeogitGraphRed = {
            fg = c.base.red,
            bg = neogit_bg,
        },
        NeogitGraphYellow = {
            fg = c.base.yellow,
            bg = neogit_bg,
        },
        NeogitGraphOrange = {
            fg = hp.blend(c.base.cyan, 0.6, c.base.magenta),
            bg = neogit_bg,
        },
        NeogitGraphBlue = {
            fg = c.base.blue,
            bg = neogit_bg,
        },
        NeogitGraphPurple = {
            fg = c.base.magenta,
            bg = neogit_bg,
        },
        NeogitGraphGreen = {
            fg = c.base.green,
            bg = neogit_bg,
        },
        NeogitGraphGray = {
            fg = c.base.dimmed3,
            bg = neogit_bg,
        },
        NeogitGraphCyan = {
            fg = c.base.cyan,
            bg = neogit_bg,
        },
        NeogitGraphWhite = {
            fg = c.base.white,
            bg = neogit_bg,
        },
        -- Bold graph colors
        NeogitGraphBoldRed = {
            fg = c.base.red,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldYellow = {
            fg = c.base.yellow,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldOrange = {
            fg = hp.blend(c.base.cyan, 0.6, c.base.magenta),
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldBlue = {
            fg = c.base.blue,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldPurple = {
            fg = c.base.magenta,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldGreen = {
            fg = c.base.green,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldGray = {
            fg = c.base.dimmed3,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldCyan = {
            fg = c.base.cyan,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphBoldWhite = {
            fg = c.base.white,
            bg = neogit_bg,
            bold = true,
        },
        NeogitGraphAuthor = {
            fg = c.base.cyan,
            bg = neogit_bg,
        },
        -- Commit view
        NeogitCommitViewHeader = { link = "NeogitHunkHeaderHighlight" },
        -- Diff
  -- cs.diffEditor = {
  --   insertedLineBackground = hp.blend(p.accent4, 0.1, p.dark1), -- #a9dc7619
  --   removedLineBackground = hp.blend(p.accent1, 0.1, p.dark1), -- #ff618819
  --   modifiedLineBackground = hp.blend(p.accent2, 0.1, p.dark1), -- #fc986719
  -- }

  -- cs.diffEditorOverview = {
  --   insertedForeground = hp.blend(p.accent4, 0.65, cs.diffEditor.insertedLineBackground), -- #a9dc76a5
  --   removedForeground = hp.blend(p.accent1, 0.65, cs.diffEditor.removedLineBackground), -- #ff6188a5
  --   modifiedForeground = hp.blend(p.accent2, 0.65, cs.diffEditor.modifiedLineBackground), -- #fc9867a5
  -- }
  -- cs.gitDecoration = {
  --   addedResourceForeground = p.accent4, -- "#a9dc76",
  --   conflictingResourceForeground = p.accent2, -- "#fc9867",
  --   deletedResourceForeground = p.accent1, -- "#ff6188",
  --   ignoredResourceForeground = p.dimmed4, -- "#5b595c",
  --   modifiedResourceForeground = p.accent3, -- "#ffd866",
  --   stageDeletedResourceForeground = p.accent1, -- "#ff6188",
  --   stageModifiedResourceForeground = p.accent3, -- "#ffd866",
  --   untrackedResourceForeground = p.dimmed2, -- "#c1c0c0",
  -- }
        NeogitDiffDeleteCursor = {
            fg = hp.lighten(c.diffEditorOverview.removedForeground, 30),
            bg = neogit_bg,
        },
        NeogitDiffDeleteHighlight = {
            fg = c.diffEditorOverview.removedForeground,
            bg = hp.lighten(c.diffEditor.removedLineBackground, 5),
        },
        NeogitDiffDelete = {
            fg = hp.lighten(c.diffEditorOverview.removedForeground, 30),
            bg = c.diffEditor.removedLineBackground,
        },
        NeogitDiffAddCursor = {
            fg = hp.lighten(c.diffEditorOverview.insertedForeground, 30),
            bg = neogit_bg,
        },
        NeogitDiffAddHighlight = {
            fg = c.diffEditorOverview.insertedForeground,
            bg = hp.lighten(c.diffEditor.insertedLineBackground, 5),
        },
        NeogitDiffAdd = {
            fg = hp.lighten(c.diffEditorOverview.insertedForeground, 30),
            bg = c.diffEditor.insertedLineBackground,
        },
        NeogitDiffContext = {
            bg = neogit_bg,
        },
        NeogitDiffContextCursor = {
            bg = neogit_bg,
        },
        NeogitDiffContextHighlight = {
            bg = hp.lighten(neogit_bg, 10),
        },
        NeogitDiffHeader = {
            fg = c.base.red,
            bg = c.base.dimmed5,
            bold = true,
        },
        NeogitDiffHeaderHighlight = {
            fg = common_fg,
            bg = hp.blend(c.base.red, 0.8),
            bold = true,
        },
        -- Diff signs
        NeogitDiffDeletions = {
            fg = hp.lighten(c.diffEditorOverview.removedForeground, 30),
        },
        NeogitDiffAdditions = {
            fg = hp.lighten(c.diffEditorOverview.insertedForeground, 30),
        },
        -- Hunks
        NeogitHunkHeader = {
            fg = c.base.dark,
            bg = c.base.dimmed2,
            bold = true,
        },
        NeogitHunkHeaderCursor = {
            fg = c.base.dimmed5,
            bg = c.base.magenta,
            bold = true,
        },
        NeogitHunkHeaderHighlight = {
            fg = c.base.dark,
            bg = c.base.magenta,
            bold = true,
        },
        -- TODO:
        -- NeogitHunkMergeHeaderCursor  cterm=bold gui=bold guifg=#22252a guibg=#d15070
        -- NeogitHunkMergeHeaderHighlight  cterm=bold gui=bold guifg=#22252a guibg=#d15070
        -- NeogitHunkMergeHeader  cterm=bold gui=bold guifg=#303338 guibg=#7a7c7f

        NeogitSectionHeader = {
            fg = c.base.magenta,
            -- bg = c.base.magenta,
            bold = true,
            underline = true,
        },
        -- Change state
        NeogitChangeUnmerged = {
            fg = c.base.yellow,
            bold = true,
            italic = true,
        },
        NeogitChangeUpdated = {
            fg = c.base.blue,
            bold = true,
            italic = true,
        },
        NeogitChangeRenamed = { link = "NeogitChangeUpdated" },
        NeogitChangeCopied = { link = "NeogitChangeUpdated" },
        NeogitChangeModified = { link = "NeogitChangeUpdated" },
        NeogitChangeNewFile = {
            fg = c.base.green,
            bold = true,
            italic = true,
        },
        NeogitChangeAdded = { link = "NeogitChangeNewFile" },
        NeogitChangeDeleted = {
            fg = c.base.red,
            bold = true,
            italic = true,
        },
        -- Popup toggle keys
        NeogitPopupActionKey = {
            fg = c.base.red,
        },
        NeogitPopupConfigKey = { link = "NeogitPopupActionKey" },
        NeogitPopupOptionKey = { link = "NeogitPopupActionKey" },
        NeogitPopupSwitchKey = { link = "NeogitPopupActionKey" },

        NeogitRemote = {
            fg = c.base.cyan,
            bold = true,
        },
        NeogitTagName = {
            fg = c.base.yellow,
        },

-- NeogitActiveItem  cterm=bold gui=bold guifg=#22252a guibg=#d17e55
-- NeogitFloatHeaderHighlight  cterm=bold gui=bold guifg=#ff6188 guibg=#303338
-- NeogitFloatHeader  cterm=bold gui=bold guibg=#22252a
-- NeogitTagDistance  guifg=#ff6188
-- NeogitUnpulledFrom  cterm=bold gui=bold guifg=#d15070
-- NeogitUnpushedTo  cterm=bold gui=bold guifg=#d15070
-- NeogitUnmergedInto  cterm=bold gui=bold guifg=#d15070
-- NeogitBranchHead  cterm=bold,underline gui=bold,underline guifg=#ff6188
-- NeogitBranch    cterm=bold gui=bold guifg=#ff6188
-- NeogitFilePath  cterm=italic gui=italic guifg=#ff6188
-- NeogitPopupBold  cterm=bold gui=bold

    }
end

return M
