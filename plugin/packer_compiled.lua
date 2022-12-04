-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ayuay/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ayuay/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ayuay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ayuay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ayuay/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\2\2µ\v\0\0\4\0)\0v6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0)\1\n\0=\1\4\0006\0\0\0009\0\5\0'\1\a\0=\1\6\0006\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\v\0'\3\f\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\r\0'\3\14\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\15\0'\3\16\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\17\0'\3\18\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\19\0'\3\20\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\21\0'\3\22\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\23\0'\2\24\0'\3\25\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\26\0'\3\27\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\28\0'\3\29\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\30\0'\3\31\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2 \0'\3!\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\"\0'\3#\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\r\0'\3$\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2%\0'\3&\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2'\0'\3(\0B\0\4\1K\0\1\0;<cmd>lua require('fzf-lua').diagnostics_document()<CR>\14<leader>l3<cmd>lua require('fzf-lua').lsp_typedefs()<CR>\14<leader>t;<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>:<cmd>lua require('fzf-lua').lsp_implementations()<CR>\14<leader>i7<cmd>lua require('fzf-lua').lsp_declarations()<CR>\14<leader>D6<cmd>lua require('fzf-lua').lsp_definitions()<CR>\14<leader>d5<cmd>lua require('fzf-lua').lsp_references()<CR>\14<leader>r-<cmd>lua require('fzf-lua').blines()<CR>\14<leader>/2<cmd>lua require('fzf-lua').grep_visual()<CR>\14<leader>v\6v1<cmd>lua require('fzf-lua').grep_cWORD()<CR>\14<leader>W1<cmd>lua require('fzf-lua').grep_cword()<CR>\14<leader>w+<cmd>lua require('fzf-lua').grep()<CR>\14<leader>g3<cmd>lua require('fzf-lua').git_branches()<CR>\14<leader>b1<cmd>lua require('fzf-lua').git_status()<CR>\14<leader>s,<cmd>lua require('fzf-lua').files()<CR>\14<leader>f\6n\bset\vkeymap\6f\14mapleader\6g\rwinblend\boptW\t\t\thighlight FzfLuaNormal guibg=#383850\n\t\t\thighlight FzfLuaBorder guibg=#383850\n\t\t\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\2Ÿ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\2\1\5\0\0\18rust_analyzer\fpyright\rtsserver\vclangd\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\2›\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\bâžœ\24package_uninstalled\bâœ—\22package_installed\bâœ“\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimª\r\1\0\b\0D\0±\0016\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0005\3\4\0B\0\4\0016\0\5\0'\1\6\0B\0\2\0029\1\a\0005\2\v\0005\3\t\0003\4\b\0=\4\n\3=\3\f\0025\3\17\0009\4\r\0009\4\14\0049\4\15\0045\5\16\0B\4\2\2=\4\18\0039\4\r\0009\4\14\0049\4\15\0045\5\19\0B\4\2\2=\4\20\3=\3\14\0029\3\21\0009\3\22\0039\3\23\0035\4\25\0009\5\21\0009\5\24\5B\5\1\2=\5\26\0049\5\21\0009\5\27\5B\5\1\2=\5\28\0049\5\21\0009\5\29\5)\6üÿB\5\2\2=\5\30\0049\5\21\0009\5\29\5)\6\4\0B\5\2\2=\5\31\0049\5\21\0009\5 \5B\5\1\2=\5!\0049\5\21\0009\5\"\5B\5\1\2=\5#\0049\5\21\0009\5$\0055\6%\0B\5\2\2=\5&\4B\3\2\2=\3\21\0029\3\r\0009\3'\0034\4\3\0005\5(\0>\5\1\0045\5)\0>\5\2\0044\5\3\0005\6*\0>\6\1\5B\3\3\2=\3'\2B\1\2\0019\1\a\0009\1+\1'\2,\0005\3/\0009\4\r\0009\4'\0044\5\3\0005\6-\0>\6\1\0054\6\3\0005\a.\0>\a\1\6B\4\3\2=\4'\3B\1\3\0019\1\a\0009\0010\0015\0021\0005\0032\0009\4\21\0009\4\22\0049\0040\4B\4\1\2=\4\21\0034\4\3\0005\0053\0>\5\1\4=\4'\0035\0045\0009\5\r\0009\5\14\0059\5\15\0055\0064\0B\5\2\2=\5\18\0049\5\r\0009\5\14\0059\5\15\5B\5\1\2=\5\20\4=\4\14\3B\1\3\0019\1\a\0009\0010\1'\0026\0005\0037\0009\4\21\0009\4\22\0049\0040\4B\4\1\2=\4\21\0039\4\r\0009\4'\0044\5\3\0005\0068\0>\6\1\0054\6\3\0005\a9\0>\a\1\6B\4\3\2=\4'\0035\4;\0009\5\r\0009\5\14\0059\5\15\0055\6:\0B\5\2\2=\5\18\0049\5\r\0009\5\14\0059\5\15\5B\5\1\2=\5\20\4=\4\14\3B\1\3\0016\1\5\0'\2<\0B\1\2\0029\1=\1B\1\1\0026\2\5\0'\3>\0B\2\2\0029\2?\0029\2\a\0025\3@\0=\1A\3B\2\2\0016\2\5\0'\3>\0B\2\2\0029\2B\0029\2\a\0025\3C\0=\1A\3B\2\2\1K\0\1\0\1\0\0\fpyright\17capabilities\1\0\0\vclangd\14lspconfig\25default_capabilities\17cmp_nvim_lsp\1\0\0\1\0\4\15col_offset\3\3\14scrolloff\3\5\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\vborder\vdouble\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\0\1\0\4\15col_offset\3\3\14scrolloff\3\5\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\vborder\vdouble\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\18documentation\1\0\1\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\15completion\1\0\0\1\0\4\15col_offset\3\3\14scrolloff\3\5\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\vborder\vdouble\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\1\0\2\abg\f#3c3c3c\afg\f#f5f5dc\fMyCmpHL\16nvim_set_hl\bapi\bvim\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2ê\t\0\0\4\0001\0‹\0016\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0005\1\4\0006\2\5\0=\2\5\0016\2\6\0=\2\a\1B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\b\0009\0\3\0005\1\t\0006\2\5\0=\2\5\0016\2\6\0=\2\a\1B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\n\0009\0\3\0005\1\v\0006\2\5\0=\2\5\0016\2\6\0=\2\a\0015\2\f\0004\3\0\0=\3\r\2=\2\14\1B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\15\0009\0\3\0005\1\16\0006\2\5\0=\2\5\0016\2\6\0=\2\a\1B\0\2\0016\0\0\0'\1\17\0B\0\2\0029\0\18\0'\1\20\0=\1\19\0006\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\25\0'\3\26\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\27\0'\3\28\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\29\0'\3\30\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\31\0'\3 \0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2!\0'\3\"\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2#\0'\3$\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2%\0'\3&\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2'\0'\3(\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2)\0'\3*\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2+\0'\3,\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2-\0'\3.\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2/\0'\0030\0B\0\4\1K\0\1\0,<cmd>lua vim.diagnostic.goto_prev()<CR>\ag[,<cmd>lua vim.diagnostic.goto_next()<CR>\ag]-<cmd>lua vim.diagnostic.open_float()<CR>\age+<cmd>lua vim.lsp.buf.code_action()<CR>\aga&<cmd>lua vim.lsp.buf.rename()<CR>\agn/<cmd>lua vim.lsp.buf.type_definition()<CR>\agt.<cmd>lua vim.lsp.buf.implementation()<CR>\agi+<cmd>lua vim.lsp.buf.declaration()<CR>\agD*<cmd>lua vim.lsp.buf.definition()<CR>\agd*<cmd>lua vim.lsp.buf.references()<CR>\agr*<cmd>lua vim.lsp.buf.formatting()<CR>\agf%<cmd>lua vim.lsp.buf.hover()<CR>\6K\6n\bset\vkeymap\bvim\vsingle\vborder\20default_options\25lspconfig.ui.windows\1\0\0\vclangd\rsettings\18rust-analyzer\1\0\0\1\0\0\18rust_analyzer\1\0\0\rtsserver\nflags\14lsp_flags\14on_attach\1\0\0\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["tender.vim"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\22set termguicolors\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  ["vim-airline"] = {
    config = { "\27LJ\2\2å\2\0\0\4\0\r\0\0316\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\1\0'\1\3\0B\0\2\0016\0\0\0009\0\1\0'\1\4\0B\0\2\0016\0\0\0009\0\1\0'\1\5\0B\0\2\0016\0\0\0009\0\6\0009\0\a\0'\1\b\0'\2\t\0'\3\n\0B\0\4\0016\0\0\0009\0\6\0009\0\a\0'\1\b\0'\2\v\0'\3\f\0B\0\4\1K\0\1\0\19:bprevious<CR>\n<C-l>\15:bnext<CR>\n<C-h>\6n\bset\vkeymap$let g:airline_detect_modified=1>let g:airline#extensions#whitespace#mixed_indent_algo = 11let g:airline#extensions#tabline#enabled = 1$let g:airline_symbols_ascii = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    config = { "\27LJ\2\2B\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0#let g:airline_theme = \"tender\"\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/ayuay/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\2›\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\bâžœ\24package_uninstalled\bâœ—\22package_installed\bâœ“\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2ê\t\0\0\4\0001\0‹\0016\0\0\0'\1\1\0B\0\2\0029\0\2\0009\0\3\0005\1\4\0006\2\5\0=\2\5\0016\2\6\0=\2\a\1B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\b\0009\0\3\0005\1\t\0006\2\5\0=\2\5\0016\2\6\0=\2\a\1B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\n\0009\0\3\0005\1\v\0006\2\5\0=\2\5\0016\2\6\0=\2\a\0015\2\f\0004\3\0\0=\3\r\2=\2\14\1B\0\2\0016\0\0\0'\1\1\0B\0\2\0029\0\15\0009\0\3\0005\1\16\0006\2\5\0=\2\5\0016\2\6\0=\2\a\1B\0\2\0016\0\0\0'\1\17\0B\0\2\0029\0\18\0'\1\20\0=\1\19\0006\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\25\0'\3\26\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\27\0'\3\28\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\29\0'\3\30\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2\31\0'\3 \0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2!\0'\3\"\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2#\0'\3$\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2%\0'\3&\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2'\0'\3(\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2)\0'\3*\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2+\0'\3,\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2-\0'\3.\0B\0\4\0016\0\21\0009\0\22\0009\0\23\0'\1\24\0'\2/\0'\0030\0B\0\4\1K\0\1\0,<cmd>lua vim.diagnostic.goto_prev()<CR>\ag[,<cmd>lua vim.diagnostic.goto_next()<CR>\ag]-<cmd>lua vim.diagnostic.open_float()<CR>\age+<cmd>lua vim.lsp.buf.code_action()<CR>\aga&<cmd>lua vim.lsp.buf.rename()<CR>\agn/<cmd>lua vim.lsp.buf.type_definition()<CR>\agt.<cmd>lua vim.lsp.buf.implementation()<CR>\agi+<cmd>lua vim.lsp.buf.declaration()<CR>\agD*<cmd>lua vim.lsp.buf.definition()<CR>\agd*<cmd>lua vim.lsp.buf.references()<CR>\agr*<cmd>lua vim.lsp.buf.formatting()<CR>\agf%<cmd>lua vim.lsp.buf.hover()<CR>\6K\6n\bset\vkeymap\bvim\vsingle\vborder\20default_options\25lspconfig.ui.windows\1\0\0\vclangd\rsettings\18rust-analyzer\1\0\0\1\0\0\18rust_analyzer\1\0\0\rtsserver\nflags\14lsp_flags\14on_attach\1\0\0\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimª\r\1\0\b\0D\0±\0016\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0005\3\4\0B\0\4\0016\0\5\0'\1\6\0B\0\2\0029\1\a\0005\2\v\0005\3\t\0003\4\b\0=\4\n\3=\3\f\0025\3\17\0009\4\r\0009\4\14\0049\4\15\0045\5\16\0B\4\2\2=\4\18\0039\4\r\0009\4\14\0049\4\15\0045\5\19\0B\4\2\2=\4\20\3=\3\14\0029\3\21\0009\3\22\0039\3\23\0035\4\25\0009\5\21\0009\5\24\5B\5\1\2=\5\26\0049\5\21\0009\5\27\5B\5\1\2=\5\28\0049\5\21\0009\5\29\5)\6üÿB\5\2\2=\5\30\0049\5\21\0009\5\29\5)\6\4\0B\5\2\2=\5\31\0049\5\21\0009\5 \5B\5\1\2=\5!\0049\5\21\0009\5\"\5B\5\1\2=\5#\0049\5\21\0009\5$\0055\6%\0B\5\2\2=\5&\4B\3\2\2=\3\21\0029\3\r\0009\3'\0034\4\3\0005\5(\0>\5\1\0045\5)\0>\5\2\0044\5\3\0005\6*\0>\6\1\5B\3\3\2=\3'\2B\1\2\0019\1\a\0009\1+\1'\2,\0005\3/\0009\4\r\0009\4'\0044\5\3\0005\6-\0>\6\1\0054\6\3\0005\a.\0>\a\1\6B\4\3\2=\4'\3B\1\3\0019\1\a\0009\0010\0015\0021\0005\0032\0009\4\21\0009\4\22\0049\0040\4B\4\1\2=\4\21\0034\4\3\0005\0053\0>\5\1\4=\4'\0035\0045\0009\5\r\0009\5\14\0059\5\15\0055\0064\0B\5\2\2=\5\18\0049\5\r\0009\5\14\0059\5\15\5B\5\1\2=\5\20\4=\4\14\3B\1\3\0019\1\a\0009\0010\1'\0026\0005\0037\0009\4\21\0009\4\22\0049\0040\4B\4\1\2=\4\21\0039\4\r\0009\4'\0044\5\3\0005\0068\0>\6\1\0054\6\3\0005\a9\0>\a\1\6B\4\3\2=\4'\0035\4;\0009\5\r\0009\5\14\0059\5\15\0055\6:\0B\5\2\2=\5\18\0049\5\r\0009\5\14\0059\5\15\5B\5\1\2=\5\20\4=\4\14\3B\1\3\0016\1\5\0'\2<\0B\1\2\0029\1=\1B\1\1\0026\2\5\0'\3>\0B\2\2\0029\2?\0029\2\a\0025\3@\0=\1A\3B\2\2\0016\2\5\0'\3>\0B\2\2\0029\2B\0029\2\a\0025\3C\0=\1A\3B\2\2\1K\0\1\0\1\0\0\fpyright\17capabilities\1\0\0\vclangd\14lspconfig\25default_capabilities\17cmp_nvim_lsp\1\0\0\1\0\4\15col_offset\3\3\14scrolloff\3\5\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\vborder\vdouble\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\0\1\0\4\15col_offset\3\3\14scrolloff\3\5\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\vborder\vdouble\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\18documentation\1\0\1\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\15completion\1\0\0\1\0\4\15col_offset\3\3\14scrolloff\3\5\17winhighlightDNormal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None\vborder\vdouble\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\1\0\2\abg\f#3c3c3c\afg\f#f5f5dc\fMyCmpHL\16nvim_set_hl\bapi\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-airline-themes
time([[Config for vim-airline-themes]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0#let g:airline_theme = \"tender\"\bcmd\bvim\0", "config", "vim-airline-themes")
time([[Config for vim-airline-themes]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\2Ÿ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\2\1\5\0\0\18rust_analyzer\fpyright\rtsserver\vclangd\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: tender.vim
time([[Config for tender.vim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\22set termguicolors\bcmd\bvim\0", "config", "tender.vim")
time([[Config for tender.vim]], false)
-- Config for: vim-airline
time([[Config for vim-airline]], true)
try_loadstring("\27LJ\2\2å\2\0\0\4\0\r\0\0316\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\1\0'\1\3\0B\0\2\0016\0\0\0009\0\1\0'\1\4\0B\0\2\0016\0\0\0009\0\1\0'\1\5\0B\0\2\0016\0\0\0009\0\6\0009\0\a\0'\1\b\0'\2\t\0'\3\n\0B\0\4\0016\0\0\0009\0\6\0009\0\a\0'\1\b\0'\2\v\0'\3\f\0B\0\4\1K\0\1\0\19:bprevious<CR>\n<C-l>\15:bnext<CR>\n<C-h>\6n\bset\vkeymap$let g:airline_detect_modified=1>let g:airline#extensions#whitespace#mixed_indent_algo = 11let g:airline#extensions#tabline#enabled = 1$let g:airline_symbols_ascii = 1\bcmd\bvim\0", "config", "vim-airline")
time([[Config for vim-airline]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
try_loadstring("\27LJ\2\2µ\v\0\0\4\0)\0v6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0)\1\n\0=\1\4\0006\0\0\0009\0\5\0'\1\a\0=\1\6\0006\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\v\0'\3\f\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\r\0'\3\14\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\15\0'\3\16\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\17\0'\3\18\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\19\0'\3\20\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\21\0'\3\22\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\23\0'\2\24\0'\3\25\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\26\0'\3\27\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\28\0'\3\29\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\30\0'\3\31\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2 \0'\3!\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\"\0'\3#\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2\r\0'\3$\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2%\0'\3&\0B\0\4\0016\0\0\0009\0\b\0009\0\t\0'\1\n\0'\2'\0'\3(\0B\0\4\1K\0\1\0;<cmd>lua require('fzf-lua').diagnostics_document()<CR>\14<leader>l3<cmd>lua require('fzf-lua').lsp_typedefs()<CR>\14<leader>t;<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>:<cmd>lua require('fzf-lua').lsp_implementations()<CR>\14<leader>i7<cmd>lua require('fzf-lua').lsp_declarations()<CR>\14<leader>D6<cmd>lua require('fzf-lua').lsp_definitions()<CR>\14<leader>d5<cmd>lua require('fzf-lua').lsp_references()<CR>\14<leader>r-<cmd>lua require('fzf-lua').blines()<CR>\14<leader>/2<cmd>lua require('fzf-lua').grep_visual()<CR>\14<leader>v\6v1<cmd>lua require('fzf-lua').grep_cWORD()<CR>\14<leader>W1<cmd>lua require('fzf-lua').grep_cword()<CR>\14<leader>w+<cmd>lua require('fzf-lua').grep()<CR>\14<leader>g3<cmd>lua require('fzf-lua').git_branches()<CR>\14<leader>b1<cmd>lua require('fzf-lua').git_status()<CR>\14<leader>s,<cmd>lua require('fzf-lua').files()<CR>\14<leader>f\6n\bset\vkeymap\6f\14mapleader\6g\rwinblend\boptW\t\t\thighlight FzfLuaNormal guibg=#383850\n\t\t\thighlight FzfLuaBorder guibg=#383850\n\t\t\bcmd\bvim\0", "config", "fzf-lua")
time([[Config for fzf-lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
