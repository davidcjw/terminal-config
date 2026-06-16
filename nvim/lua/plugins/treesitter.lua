-- nvim-treesitter (main branch) — required for Neovim 0.11+/0.12.
-- The old `master` branch and its `nvim-treesitter.configs` API are EOL and
-- do not support Neovim 0.12, which caused the highlighter "range (nil value)" crash.
local ensure_installed = {
  "bash",
  "git_config",
  "gitignore",
  "go",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "query",
  "tmux",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "xml",
  "yaml",
}

local M = {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    -- Install/update the parsers we use (async; safe to call on every startup).
    require("nvim-treesitter").install(ensure_installed)

    -- The main branch does NOT auto-enable highlighting like master did.
    -- Start treesitter per buffer once its parser is available.
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
      callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype
        local lang = vim.treesitter.language.get_lang(ft) or ft
        -- Only start if a parser actually exists; avoids errors on unsupported fts.
        if vim.treesitter.language.add(lang) then
          pcall(vim.treesitter.start, buf, lang)
          -- Treesitter-based folding (off by default; uncomment to enable).
          -- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        end
      end,
    })
  end,
}

return { M }
