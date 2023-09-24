return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
   { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
 {import = "astrocommunity.markdown-and-latex.markdown-preview-nvim"},
{import = "astrocommunity.markdown-and-latex.glow-nvim"},
 {import = "astrocommunity.pack.python"},
  {import = "astrocommunity.pack.html-css"},
   -- {import = "astrocommunity.pack.cpp"},
{ import = "astrocommunity.pack.rust" },
   {import = "astrocommunity.pack.bash"},

}
