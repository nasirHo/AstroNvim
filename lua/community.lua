-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- colortheme
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- prog lang support
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.hyprlang" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  -- comment
  { import = "astrocommunity.comment.ts-comments-nvim" },
  -- motion
  { import = "astrocommunity.motion.tabout-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  -- recipes
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.recipes.diagnostic-virtual-lines-current-line" },
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  -- { import = "astrocommunity.recipes.vscode" },
}
