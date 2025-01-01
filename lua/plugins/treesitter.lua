return {
	{
		"folke/which-key.nvim",
		event = 'VimEnter',
		opts = {
			delay = 0,
			icons = {
				mappings = vim.g.have_nerd_font,
				keys = {},
			},
			spec = {
				{ "<BS>", desc = "Decrement Selection", mode = "x" },
				{ "<c-space>", desc = "Increment Selection", mode = { "x", "n" } },
				{ "<leader>s", group = "[s]earch" },
				{ "<leader>g", group = "[g]it", mode = {'n', 'v'} },
			},
		},
	},

	{ -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		opts = {
			ensure_installed = {
				-- Languages
				'bash',
				'c',
				'cpp',
				'go',
				'html',
				'javascript',
				'lua',
				'markdown',
				'typescript',

				-- Other
				'diff',
				'luadoc',
				'vim',
				'vimdoc'
			},
			-- Autoinstall languages that are not installed
			auto_install = true,
			highlight = {
				enable = true,
				-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
				--  If you are experiencing weird indenting issues, add the language to
				--  the list of additional_vim_regex_highlighting and disabled languages for indent.
				additional_vim_regex_highlighting = false,
			},
			-- indent = { enable = true, disable = { 'ruby' } },
		},
		config = function(_, opts)
			-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

			-- Prefer git instead of curl in order to improve connectivity in some environments
			require('nvim-treesitter.install').prefer_git = true
			---@diagnostic disable-next-line: missing-fields
			require('nvim-treesitter.configs').setup(opts)

			-- There are additional nvim-treesitter modules that you can use to interact
			-- with nvim-treesitter. You should go explore a few and see what interests you:
			--
			--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
			--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
			--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		end,
	},

	-- Automatically add closing tags for HTML and JSX
	{
		"windwp/nvim-ts-autotag",
		event = "VeryLazy",
		opts = {},
	},
}
