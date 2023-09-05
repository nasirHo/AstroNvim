return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      flavour = "frappe",
      background = {
        light = "latte",
        dark = "frappe",
      },
      no_italic = true,
      integrations = {
        noice = true,
        rainbow_delimiters = true,
        flash = true
      },
    },
  },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    opts = {
      -- lsp = {
      --   override = {
      --     ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      --     ["vim.lsp.util.stylize_markdown"] = true,
      --     ["cmp.entry.get_documentation"] = true,
      --   },
      -- },
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      routes = {
        {
          filter = { event = "msg_showmode" },
          view = "notify",
        },
        {
          filter = {
            event = "msg_show",
            kind = "",
            find = "written",
          },
          opts = { skip = true },
        },
      },
    },
  },
  -- { import = "astrocommunity.bars-and-lines.vim-illuminate"},
  { import = "astrocommunity.motion.flash-nvim" },
  {
    "folke/flash.nvim",
    vscode = nil,
  },
  -- { import = "astrocommunity.motion.vim-matchup"},
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  {
    "epwalsh/obsidian.nvim",
    event = { "BufReadPre " .. vim.fn.expand "~" .. "/Documents/obsidian-vault/**.md" },
    opts = {
      dir = "~/Documents/obsidian-vault",
      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "my-notes/dailies",
        -- Optional, if you want to change the date format for daily notes.
        date_format = "%Y-%m-%d",
      },
      -- Optional, set to true if you don't want Obsidian to manage frontmatter.
      disable_frontmatter = false,
    },
  },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  {
    "m4xshen/hardtime.nvim",
    opts = {
      enabled = false,
      disable_keys = {},
    },
  },
}
