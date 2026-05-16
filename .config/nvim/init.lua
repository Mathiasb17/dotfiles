-- Plugins
vim.call('plug#begin')
vim.pack.add({
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
  { src = "https://github.com/hrsh7th/nvim-cmp" },
  { src = "https://github.com/junegunn/fzf.vim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/numToStr/Comment.nvim" },
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
  { src = 'https://github.com/godlygeek/tabular' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' }, -- optional
  { src = 'https://github.com/tpope/vim-fugitive' },
  { src = 'https://github.com/tpope/vim-rsi' },
  { src = 'https://github.com/tpope/vim-surround' },
  { src = 'https://github.com/tpope/vim-surround' },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
})
vim.call('plug#end')

-- Plugins setup
require("nvim-tree").setup()
require('lualine').setup()
require('Comment').setup()

require('mason').setup()
require('mason-lspconfig').setup()

require('mason-tool-installer').setup({
    ensure_installed = {
        "actionlint",
        "lua_ls",
        "stylua",
        "clangd",
        "clang-format",
        "shellcheck",
        "bash-language-server",
        "ruff",
    }
})

-- color scheme
vim.cmd.colorscheme('catppuccin-nvim')

-- vim globals and options
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader          = " "
vim.o.backspace          = '2'
vim.o.clipboard          = "unnamedplus"
vim.o.cursorline         = true
vim.o.expandtab          = true
vim.o.mouse              = 'a'
vim.o.nrformats          = "bin,octal,hex,alpha" -- increment/decrement with C-a and C-x
vim.o.number             = true
vim.o.relativenumber     = true
vim.o.shiftwidth         = 4
vim.o.spell              = true
vim.o.startofline        = false -- cursor position remains the same when switching away/back to buffer
vim.o.swapfile           = false
vim.o.tabstop            = 4
vim.o.termguicolors      = true
vim.o.wrap               = false

-- keyboard mappings
vim.keymap.set({"n"}, "<leader>ev", ":edit $MYVIMRC<CR>")
vim.keymap.set({"n"}, "<leader>sv", ":source $MYVIMRC <CR>")


vim.keymap.set({"n"}, "<leader>w", ":w<CR>")
vim.keymap.set({"n"}, "<leader>q", ":q<CR>")
vim.keymap.set({"n"}, "<leader>x", ":x<CR>")


vim.keymap.set({"n", "v", "x"}, "<Up>", "<Nop>")
vim.keymap.set({"n", "v", "x"}, "<Down>", "<Nop>")
vim.keymap.set({"n", "v", "x"}, "<Left>", "<Nop>")
vim.keymap.set({"n", "v", "x"}, "<Right>", "<Nop>")

vim.keymap.set({"n", "v"}, "<leader>sed", ":substitute/\\v//g")
vim.keymap.set("n", "<leader>read", ":!")
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>h", function()
    vim.o.hlsearch       = not vim.o.hlsearch
end)

vim.diagnostic.config({
    virtual_text     = true,
    signs            = true,
    underline        = true,
    update_in_insert = false,
    severity_sort    = true,
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {
                    'vim',
                    'require'
                },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false
            }
        }
    }
})

