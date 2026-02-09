return {
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				groups = {
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"CursorLine",
					"CursorLineNr",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
					"Folded",
					"FoldColumn",
					"VertSplit",
					"WinSeparator",
					"TabLine",
					"TabLineFill",
					"TabLineSel",
					"MatchParen",
					"Conceal",
					"CursorColumn",
					"ColorColumn",
				},
				extra_groups = {
					-- Float windows
					"NormalFloat",
					"FloatBorder",
					"FloatTitle",

					-- LSP and diagnostics
					"DiagnosticError",
					"DiagnosticWarn",
					"DiagnosticInfo",
					"DiagnosticHint",
					"DiagnosticVirtualTextError",
					"DiagnosticVirtualTextWarn",
					"DiagnosticVirtualTextInfo",
					"DiagnosticVirtualTextHint",
					"DiagnosticFloatingError",
					"DiagnosticFloatingWarn",
					"DiagnosticFloatingInfo",
					"DiagnosticFloatingHint",
					"DiagnosticSignError",
					"DiagnosticSignWarn",
					"DiagnosticSignInfo",
					"DiagnosticSignHint",
					"LspFloatWinNormal",
					"LspFloatWinBorder",
					"LspInfoBorder",
					"LspReferenceRead",
					"LspReferenceText",
					"LspReferenceWrite",
					"LspSignatureActiveParameter",

					-- Error icons and signs (this handles your red error icon)
					"ErrorSign",
					"WarningSign",
					"InfoSign",
					"HintSign",
					"ErrorMsg",
					"WarningMsg",
					"Question",
					"MoreMsg",

					-- Git signs
					"GitSignsAdd",
					"GitSignsChange",
					"GitSignsDelete",
					"GitSignsTopdelete",
					"GitSignsChangedelete",
					"GitGutterAdd",
					"GitGutterChange",
					"GitGutterDelete",

					-- Completion menu (enhanced)
					"Pmenu",
					"PmenuSel",
					"PmenuSbar",
					"PmenuThumb",
					"PmenuKind",
					"PmenuKindSel",
					"PmenuExtra",
					"PmenuExtraSel",
					"CmpItemMenu",
					"CmpItemAbbr",
					"CmpItemAbbrDeprecated",
					"CmpItemAbbrMatch",
					"CmpItemAbbrMatchFuzzy",
					"CmpItemKind",
					"CmpItemKindText",
					"CmpItemKindMethod",
					"CmpItemKindFunction",
					"CmpItemKindConstructor",
					"CmpItemKindField",
					"CmpItemKindVariable",
					"CmpItemKindClass",
					"CmpItemKindInterface",
					"CmpItemKindModule",
					"CmpItemKindProperty",
					"CmpItemKindUnit",
					"CmpItemKindValue",
					"CmpItemKindEnum",
					"CmpItemKindKeyword",
					"CmpItemKindSnippet",
					"CmpItemKindColor",
					"CmpItemKindFile",
					"CmpItemKindReference",
					"CmpItemKindFolder",
					"CmpItemKindEnumMember",
					"CmpItemKindConstant",
					"CmpItemKindStruct",
					"CmpItemKindEvent",
					"CmpItemKindOperator",
					"CmpItemKindTypeParameter",
					"CmpDocumentation",
					"CmpDocumentationBorder",
					"CmpGhostText",
					"CmpItemAbbrDefault",
					"CmpItemKindDefault",
					"CmpItemMenuDefault",
					"CmpFloatBorder",
					"CmpNormal",
					"CmpCursorLine",

					-- Which-key
					"WhichKey",
					"WhichKeyFloat",
					"WhichKeyBorder",
					"WhichKeyGroup",
					"WhichKeyDesc",
					"WhichKeySeparator",
					"WhichKeyValue",

					-- Telescope
					"TelescopeNormal",
					"TelescopeBorder",
					"TelescopePromptBorder",
					"TelescopeResultsBorder",
					"TelescopePreviewBorder",
					"TelescopePromptNormal",
					"TelescopeResultsNormal",
					"TelescopePreviewNormal",
					"TelescopeSelection",
					"TelescopeSelectionCaret",
					"TelescopeMultiSelection",
					"TelescopeMatching",
					"TelescopePromptPrefix",
					"TelescopePromptCounter",
					"TelescopePromptTitle",
					"TelescopeResultsTitle",
					"TelescopePreviewTitle",

					-- NvimTree / Neo-tree
					"NvimTreeNormal",
					"NvimTreeNormalNC",
					"NvimTreeEndOfBuffer",
					"NvimTreeVertSplit",
					"NvimTreeWinSeparator",
					"NeoTreeNormal",
					"NeoTreeNormalNC",
					"NeoTreeEndOfBuffer",
					"NeoTreeVertSplit",
					"NeoTreeWinSeparator",
					"NeoTree.*",

					-- BufferLine
					"BufferLineTabClose",
					"BufferlineBufferSelected",
					"BufferLineFill",
					"BufferLineBackground",
					"BufferLineSeparator",
					"BufferLineIndicatorSelected",
					"BufferLineTab",
					"BufferLineTabSelected",
					"BufferLineCloseButton",
					"BufferLineCloseButtonSelected",
					"BufferLineModified",
					"BufferLineModifiedSelected",

					-- Indent guides
					"IndentBlanklineChar",
					"IndentBlanklineContextChar",
					"IblIndent",
					"IblScope",

					-- Saga
					"SagaBorder",
					"SagaNormal",
					"SagaTitle",
					"SagaCount",
					"SagaBeacon",

					-- DAP UI
					"DapUI.*",
					"DapUIVariable",
					"DapUIScope",
					"DapUIType",
					"DapUIValue",
					"DapUIModifiedValue",
					"DapUIDecoration",
					"DapUIThread",
					"DapUIStoppedThread",
					"DapUIFrameName",
					"DapUISource",
					"DapUILineNumber",
					"DapUIFloatBorder",
					"DapUIWatchesEmpty",
					"DapUIWatchesValue",
					"DapUIWatchesError",
					"DapUIBreakpointsPath",
					"DapUIBreakpointsInfo",
					"DapUIBreakpointsCurrentLine",

					-- Notify
					"NotifyBackground",
					"NotifyERRORBorder",
					"NotifyWARNBorder",
					"NotifyINFOBorder",
					"NotifyDEBUGBorder",
					"NotifyTRACEBorder",
					"NotifyERRORIcon",
					"NotifyWARNIcon",
					"NotifyINFOIcon",
					"NotifyDEBUGIcon",
					"NotifyTRACEIcon",
					"NotifyERRORTitle",
					"NotifyWARNTitle",
					"NotifyINFOTitle",
					"NotifyDEBUGTitle",
					"NotifyTRACETitle",
					"Notify.*",

					-- Treesitter context
					"TreesitterContext",
					"TreesitterContextLineNumber",
					"TreesitterContextBottom",

					-- Quick fix
					"BqfPreviewFloat",
					"BqfPreviewBorder",
					"BqfPreviewTitle",
					"BqfPreviewThumb",
					"QuickFixLine",

					-- Command line
					"CmdLine",
					"CmdLineIcon",
					"WildMenu",
					"MsgArea",
					"MsgSeparator",

					-- Mason
					"MasonNormal",
					"MasonHeader",
					"MasonHeaderSecondary",
					"MasonHighlight",
					"MasonHighlightBlock",
					"MasonHighlightBlockBold",
					"MasonHighlightSecondary",
					"MasonHighlightBlockSecondary",
					"MasonHighlightBlockBoldSecondary",
					"MasonMuted",
					"MasonMutedBlock",
					"MasonMutedBlockBold",
					"MasonError",

					-- Lazy
					"LazyNormal",
					"LazyButton",
					"LazyButtonActive",
					"LazyH1",
					"LazyH2",
					"LazyValue",
					"LazyDir",
					"LazyUrl",
					"LazyCommit",
					"LazyNoCond",
					"LazySpecial",
					"LazyReasonPlugin",
					"LazyReasonEvent",
					"LazyReasonKeys",
					"LazyReasonStart",
					"LazyReasonSource",
					"LazyReasonFt",
					"LazyReasonCmd",
					"LazyReasonRuntime",
					"LazyReasonRequire",
					"LazyProgressDone",
					"LazyProgressTodo",

					-- Alpha (dashboard)
					"AlphaShortcut",
					"AlphaHeader",
					"AlphaHeaderLabel",
					"AlphaFooter",
					"AlphaButtons",
				},
				highlights = {
					init = {
						Normal = { bg = "NONE", ctermbg = "NONE" },
						NormalNC = { bg = "NONE", ctermbg = "NONE" },
						NormalFloat = { bg = "NONE", ctermbg = "NONE" },
						EndOfBuffer = { bg = "NONE", ctermbg = "NONE" },
						SignColumn = { bg = "NONE", ctermbg = "NONE" },
						CursorLine = { bg = "NONE", ctermbg = "NONE" },
						CursorLineNr = { bg = "NONE", ctermbg = "NONE" },
						WinSeparator = { bg = "NONE", ctermbg = "NONE" },
						VertSplit = { bg = "NONE", ctermbg = "NONE" },
						StatusLine = { bg = "NONE", ctermbg = "NONE" },
						StatusLineNC = { bg = "NONE", ctermbg = "NONE" },
						TabLine = { bg = "NONE", ctermbg = "NONE" },
						TabLineFill = { bg = "NONE", ctermbg = "NONE" },
						TabLineSel = { bg = "NONE", ctermbg = "NONE" },
						Folded = { bg = "NONE", ctermbg = "NONE" },
						FoldColumn = { bg = "NONE", ctermbg = "NONE" },
						LineNr = { bg = "NONE", ctermbg = "NONE" },

						-- Completion menu (enhanced coverage)
						Pmenu = { bg = "NONE", ctermbg = "NONE" },
						PmenuSel = { bg = "NONE", ctermbg = "NONE" },
						PmenuSbar = { bg = "NONE", ctermbg = "NONE" },
						PmenuThumb = { bg = "NONE", ctermbg = "NONE" },
						PmenuKind = { bg = "NONE", ctermbg = "NONE" },
						PmenuKindSel = { bg = "NONE", ctermbg = "NONE" },
						PmenuExtra = { bg = "NONE", ctermbg = "NONE" },
						PmenuExtraSel = { bg = "NONE", ctermbg = "NONE" },

						-- CMP specific highlights
						CmpItemMenu = { bg = "NONE", ctermbg = "NONE" },
						CmpItemAbbr = { bg = "NONE", ctermbg = "NONE" },
						CmpItemAbbrDeprecated = { bg = "NONE", ctermbg = "NONE" },
						CmpItemAbbrMatch = { bg = "NONE", ctermbg = "NONE" },
						CmpItemAbbrMatchFuzzy = { bg = "NONE", ctermbg = "NONE" },
						CmpItemKind = { bg = "NONE", ctermbg = "NONE" },
						CmpDocumentation = { bg = "NONE", ctermbg = "NONE" },
						CmpDocumentationBorder = { bg = "NONE", ctermbg = "NONE" },
						CmpGhostText = { bg = "NONE", ctermbg = "NONE" },
						CmpItemAbbrDefault = { bg = "NONE", ctermbg = "NONE" },
						CmpItemKindDefault = { bg = "NONE", ctermbg = "NONE" },
						CmpItemMenuDefault = { bg = "NONE", ctermbg = "NONE" },
						CmpFloatBorder = { bg = "NONE", ctermbg = "NONE" },
						CmpNormal = { bg = "NONE", ctermbg = "NONE" },
						CmpCursorLine = { bg = "NONE", ctermbg = "NONE" },

						-- Float windows
						FloatBorder = { bg = "NONE", ctermbg = "NONE" },
						FloatTitle = { bg = "NONE", ctermbg = "NONE" },

						-- LSP and diagnostics (including error signs)
						DiagnosticSignError = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticSignWarn = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticSignInfo = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticSignHint = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticVirtualTextError = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticVirtualTextWarn = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticVirtualTextInfo = { bg = "NONE", ctermbg = "NONE" },
						DiagnosticVirtualTextHint = { bg = "NONE", ctermbg = "NONE" },

						-- Error signs (this should handle your red error icon)
						ErrorSign = { bg = "NONE", ctermbg = "NONE" },
						WarningSign = { bg = "NONE", ctermbg = "NONE" },
						InfoSign = { bg = "NONE", ctermbg = "NONE" },
						HintSign = { bg = "NONE", ctermbg = "NONE" },

						-- Telescope
						TelescopeBorder = { bg = "NONE", ctermbg = "NONE" },
						TelescopePromptBorder = { bg = "NONE", ctermbg = "NONE" },
						TelescopeResultsBorder = { bg = "NONE", ctermbg = "NONE" },
						TelescopePreviewBorder = { bg = "NONE", ctermbg = "NONE" },
						TelescopeNormal = { bg = "NONE", ctermbg = "NONE" },
						TelescopePromptNormal = { bg = "NONE", ctermbg = "NONE" },
						TelescopeResultsNormal = { bg = "NONE", ctermbg = "NONE" },
						TelescopePreviewNormal = { bg = "NONE", ctermbg = "NONE" },

						-- Treesitter context
						TreesitterContext = { bg = "NONE", ctermbg = "NONE" },
						TreesitterContextLineNumber = { bg = "NONE", ctermbg = "NONE" },

						-- Which-key
						WhichKeyFloat = { bg = "NONE", ctermbg = "NONE" },
						WhichKey = { bg = "NONE", ctermbg = "NONE" },

						-- File explorers
						NvimTreeNormal = { bg = "NONE", ctermbg = "NONE" },
						NvimTreeEndOfBuffer = { bg = "NONE", ctermbg = "NONE" },
						NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
						NeoTreeEndOfBuffer = { bg = "NONE", ctermbg = "NONE" },
					},
				},
				exclude_groups = {
					-- Add any groups you want to keep opaque
					-- "CursorLine",
				},
			})

			-- Clear prefixes for plugins that might override
			require("transparent").clear_prefix("BufferLine")
			require("transparent").clear_prefix("Telescope")
			require("transparent").clear_prefix("NvimTree")
			require("transparent").clear_prefix("NeoTree")
			require("transparent").clear_prefix("Diagnostic")
			require("transparent").clear_prefix("Lsp")
			require("transparent").clear_prefix("Cmp")
			require("transparent").clear_prefix("WhichKey")
			require("transparent").clear_prefix("Notify")
			require("transparent").clear_prefix("Mason")
			require("transparent").clear_prefix("Lazy")
			require("transparent").clear_prefix("Dap")
			require("transparent").clear_prefix("GitSigns")
			require("transparent").clear_prefix("Alpha")

			-- Force clear completion-related highlights after setup
			vim.defer_fn(function()
				local completion_highlights = {
					"CmpItemMenu",
					"CmpItemAbbr",
					"CmpItemAbbrDeprecated",
					"CmpItemAbbrMatch",
					"CmpItemAbbrMatchFuzzy",
					"CmpItemKind",
					"CmpDocumentation",
					"CmpDocumentationBorder",
					"CmpGhostText",
					"CmpItemAbbrDefault",
					"CmpItemKindDefault",
					"CmpItemMenuDefault",
					"CmpFloatBorder",
					"CmpNormal",
					"CmpCursorLine",
					"Pmenu",
					"PmenuSel",
					"PmenuSbar",
					"PmenuThumb",
					"PmenuKind",
					"PmenuKindSel",
					"PmenuExtra",
					"PmenuExtraSel",
					"NormalFloat",
					"FloatBorder",
					"FloatTitle",
				}

				for _, hl in ipairs(completion_highlights) do
					vim.api.nvim_set_hl(0, hl, { bg = "NONE", ctermbg = "NONE" })
				end
			end, 100)
		end,
	},
}
