lua<<EOF
local nvim_lsp = require("lspconfig")
yt_lsp_update_settings("hls", {
  filetypes={"haskell", "lhaskell" },
  cmd={ "haskell-language-server-wrapper", "--logfile", "/tmp/hls.log", "--lsp" },
  settings = {
    haskell = {
      formattingProvider = "ormolu"
      -- formattingProvider = "fourmolu"
    }
  }
})
EOF
