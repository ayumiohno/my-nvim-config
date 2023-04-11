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
local package_path_str = "/home/ayayu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ayayu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ayayu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ayayu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ayayu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2W\0\4\b\0\5\0\14\18\5\1\0009\4\0\1'\6\1\0B\4\3\2\15\0\4\0X\5\2Ä'\4\2\0X\5\1Ä'\4\3\0'\5\4\0\18\6\4\0\18\a\0\0&\5\a\5L\5\2\0\6 \tÔÅ± \tÔÅú \nerror\nmatch∑\6\1\0\4\0&\00096\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\20\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2=\2\21\0015\2\22\0003\3\23\0=\3\24\2=\2\25\1B\0\2\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2\30\0'\3\31\0B\0\4\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2 \0'\3!\0B\0\4\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2\"\0'\3#\0B\0\4\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2$\0'\3%\0B\0\4\1K\0\1\0'<CMD>BufferLineSortByDirectory<CR>\abs!<CMD>BufferLineCyclePrev<CR>\n<C-h>!<CMD>BufferLineCycleNext<CR>\n<C-l>\28<CMD>BufferLinePick<CR>\abb\6n\bset\vkeymap\bvim\foptions\26diagnostics_indicator\0\1\0\a\16color_icons\2\22max_prefix_length\3\b\16diagnostics\rnvim_lsp\20show_close_icon\2\fnumbers\fordinal\20separator_style\nslant\18modified_icon\b‚óè\15highlights\1\0\0\30error_diagnostic_selected\1\0\1\tbold\2\19error_selected\1\0\1\tbold\2 warning_diagnostic_selected\1\0\1\tbold\2\21warning_selected\1\0\1\tbold\2\29info_diagnostic_selected\1\0\1\tbold\2\18info_selected\1\0\1\tbold\2\24diagnostic_selected\1\0\1\tbold\2\20buffer_selected\1\0\0\1\0\1\tbold\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["csv.vim"] = {
    config = { "\27LJ\2\2ô\3\0\0\4\0\16\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2B\0\3\0016\0\0\0009\0\1\0009\0\2\0005\1\a\0005\2\t\0005\3\b\0=\3\6\2B\0\3\0016\0\0\0009\0\1\0009\0\2\0005\1\n\0005\2\f\0005\3\v\0=\3\6\2B\0\3\0016\0\0\0009\0\r\0'\1\14\0B\0\2\0016\0\0\0009\0\r\0'\1\15\0B\0\2\1K\0\1\0#let g:csv_arrange_align = 'l*'%let g:csv_highlight_column = 'y'\bcmd\1\0\1\fcommand\22:%UnArrangeColumn\1\2\0\0\n*.csv\1\2\0\0\16BufWritePre\1\0\1\fcommand\20:%ArrangeColumn\1\2\0\0\n*.csv\1\3\0\0\fBufRead\17BufWritePost\fpattern\1\0\1\fcommand\20setfiletype csv\1\2\0\0\n*.csv\1\2\0\0\fBufRead\24nvim_create_autocmd\bapi\bvim\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2ì\6\0\0\5\0&\0;6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\15\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0004\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0024\3\0\0=\3\f\0025\3\r\0=\3\14\2=\2\16\0015\2\18\0005\3\17\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\2=\2\30\0015\2\31\0004\3\0\0=\3\19\0024\3\0\0=\3\21\0025\3 \0=\3\23\0025\3!\0=\3\25\0024\3\0\0=\3\27\0024\3\0\0=\3\29\2=\2\"\0014\2\0\0=\2#\0014\2\0\0=\2\n\0014\2\0\0=\2$\0014\2\0\0=\2%\1B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3Ë\a\vwinbar\3Ë\a\ftabline\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\4\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\17globalstatus\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\2®\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\2\1\6\0\0\18rust_analyzer\fpyright\rtsserver\vclangd\rneocmake\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\2õ\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\b‚ûú\24package_uninstalled\b‚úó\22package_installed\b‚úì\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdtree = {
    config = { "\27LJ\2\2Ä\1\0\0\4\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\6\0'\3\a\0B\0\4\1K\0\1\0\22:NERDTreeFind<CR>\atf\24:NERDTreeToggle<CR>\att\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\0020\0\1\2\0\2\0\a9\1\0\0\6\1\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\fnull-ls\tnameY\1\0\3\1\b\0\v6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\1\4\0-\2\0\0=\2\5\0013\2\6\0=\2\a\1B\0\2\1K\0\1\0\1¿\vfilter\0\nbufnr\1\0\0\vformat\bbuf\blsp\bvim´\1\1\2\6\0\n\0\0169\2\0\0'\3\1\0B\2\2\2\15\0\2\0X\3\tÄ6\2\2\0009\2\3\0029\2\4\2'\3\5\0005\4\6\0=\1\a\0043\5\b\0=\5\t\4B\2\3\0012\0\0ÄK\0\1\0\rcallback\0\vbuffer\1\0\0\16BufWritePre\24nvim_create_autocmd\bapi\bvim\28textDocument/formatting\20supports_method–\1\1\0\5\0\14\0\0236\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\n\0004\3\4\0009\4\3\0009\4\4\0049\4\5\4>\4\1\0039\4\3\0009\4\6\0049\4\a\4>\4\2\0039\4\3\0009\4\b\0049\4\t\4>\4\3\3=\3\v\0023\3\f\0=\3\r\2B\1\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\nspell\15completion\veslint\16diagnostics\rautopep8\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÄ\t\1\0\b\0006\0ï\0016\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\6\0005\3\4\0003\4\3\0=\4\5\3=\3\a\0025\3\f\0009\4\b\0009\4\t\0049\4\n\0045\5\v\0B\4\2\2=\4\r\0039\4\b\0009\4\t\0049\4\n\0044\5\0\0B\4\2\2=\4\14\3=\3\t\0029\3\15\0009\3\16\0039\3\17\0035\4\19\0009\5\15\0009\5\18\5B\5\1\2=\5\20\0049\5\15\0009\5\21\5B\5\1\2=\5\22\0049\5\15\0009\5\23\5)\6¸ˇB\5\2\2=\5\24\0049\5\15\0009\5\23\5)\6\4\0B\5\2\2=\5\25\0049\5\15\0009\5\26\5B\5\1\2=\5\27\0049\5\15\0009\5\28\5B\5\1\2=\5\29\0049\5\15\0009\5\30\0055\6\31\0B\5\2\2=\5 \4B\3\2\2=\3\15\0029\3\b\0009\3!\0034\4\3\0005\5\"\0>\5\1\0045\5#\0>\5\2\0044\5\3\0005\6$\0>\6\1\5B\3\3\2=\3!\2B\1\2\0019\1\2\0009\1%\1'\2&\0005\3)\0009\4\b\0009\4!\0044\5\3\0005\6'\0>\6\1\0054\6\3\0005\a(\0>\a\1\6B\4\3\2=\4!\3B\1\3\0019\1\2\0009\1*\0015\2+\0005\3,\0009\4\15\0009\4\16\0049\4*\4B\4\1\2=\4\15\0034\4\3\0005\5-\0>\5\1\4=\4!\0035\4/\0009\5\b\0009\5\t\0059\5\n\0055\6.\0B\5\2\2=\5\r\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\14\4=\4\t\3B\1\3\0019\1\2\0009\1*\1'\0020\0005\0031\0009\4\15\0009\4\16\0049\4*\4B\4\1\2=\4\15\0039\4\b\0009\4!\0044\5\3\0005\0062\0>\6\1\0054\6\3\0005\a3\0>\a\1\6B\4\3\2=\4!\0035\0045\0009\5\b\0009\5\t\0059\5\n\0055\0064\0B\5\2\2=\5\r\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\14\4=\4\t\3B\1\3\1K\0\1\0\1\0\0\1\0\3\15col_offset\3\3\14scrolloff\3\5\vborder\vdouble\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\0\1\0\3\15col_offset\3\3\14scrolloff\3\5\vborder\vdouble\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\1\0\3\15col_offset\3\3\14scrolloff\3\5\vborder\vdouble\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\2∫\5\0\0\6\0\21\0?6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\a\0'\4\b\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\t\0'\4\n\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\v\0'\4\f\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\r\0'\4\14\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\15\0'\4\16\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\17\0'\4\18\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\19\0'\4\20\0\18\5\0\0B\1\5\1K\0\1\0\17<Cmd>noh<CR>\14<Leader>l.g#<Cmd>lua require('hlslens').start()<CR>\ag#.g*<Cmd>lua require('hlslens').start()<CR>\ag*-#<Cmd>lua require('hlslens').start()<CR>\6#-*<Cmd>lua require('hlslens').start()<CR>\6*Y<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>\6NY<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\nsetup\fhlslens\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2d\0\0\3\0\6\0\v6\0\0\0006\1\1\0009\1\2\0016\2\1\0009\2\3\0029\2\4\0029\2\5\2B\2\1\0A\1\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintk\0\0\1\1\6\0\v-\0\0\0009\0\0\0009\0\1\0\15\0\0\0X\1\5Ä6\0\2\0009\0\3\0009\0\4\0009\0\5\0B\0\1\1K\0\1\0\0¿\vformat\bbuf\blsp\bvim\19formatProvider\24server_capabilities—\a\1\2\b\0*\0ö\0015\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\6\0006\6\2\0009\6\a\0069\6\b\0069\6\t\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\n\0006\6\2\0009\6\a\0069\6\b\0069\6\v\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\f\0006\6\2\0009\6\a\0069\6\b\0069\6\r\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\14\0006\6\2\0009\6\a\0069\6\b\0069\6\15\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\16\0006\6\2\0009\6\a\0069\6\b\0069\6\17\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\18\0006\6\2\0009\6\a\0069\6\b\0069\6\19\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\20\0006\6\2\0009\6\a\0069\6\b\0069\6\21\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\22\0003\6\23\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\24\0006\6\2\0009\6\a\0069\6\b\0069\6\25\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\26\0006\6\2\0009\6\a\0069\6\b\0069\6\27\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\28\0006\6\2\0009\6\a\0069\6\b\0069\6\29\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\30\0006\6\2\0009\6\a\0069\6\b\0069\6\31\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5 \0006\6\2\0009\6\a\0069\6\b\0069\6!\6\18\a\2\0B\3\5\0016\3\2\0009\3\"\0039\3#\0035\4$\0005\5&\0005\6%\0=\6'\0053\6(\0=\6)\5B\3\3\0012\0\0ÄK\0\1\0\rcallback\0\fpattern\1\0\0\1\6\0\0\t*.rs\t*.py\b*.c\n*.cpp\n*.lua\1\2\0\0\16BufWritePre\24nvim_create_autocmd\bapi\vformat\agf\15references\agr\16code_action\aga\vrename\14<space>rn\20type_definition\agt\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\bvim\vbuffer\1\0\0–\4\0\0\5\0\18\0@4\0\0\0006\1\0\0009\1\1\0019\1\2\1)\2\0\0B\1\2\2\18\3\1\0009\2\3\1'\4\4\0B\2\3\2\15\0\2\0X\3!Ä6\2\5\0009\2\6\2\18\3\0\0'\4\a\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\b\0B\2\3\0016\2\0\0009\2\t\0029\2\n\0025\3\v\0B\2\2\2\a\2\f\0X\2\"Ä6\2\5\0009\2\6\2\18\3\0\0'\4\r\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\14\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\15\0B\2\3\1X\2\18Ä6\2\0\0009\2\t\0029\2\n\0025\3\16\0B\2\2\2\a\2\f\0X\2\vÄ6\2\5\0009\2\6\2\18\3\0\0'\4\r\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\17\0B\2\3\1X\2\0ÄL\0\2\0!-I/usr/local/include/opencv4\1\0\1\bbuf\3\0N-I/usr/lib/gcc/x86_64-w64-mingw32/10-win32/include/c++/x86_64-w64-mingw32;-I/usr/lib/gcc/x86_64-w64-mingw32/10-win32/include/c++\15-std=c++2a\bcpp\1\0\1\bbuf\3\0\nmatch\rfiletype&-I/usr/x86_64-w64-mingw32/include*--target=x86_64-unknown-mingw-unknown\vinsert\ntable\v/mnt/c\tfind\22nvim_buf_get_name\bapi\bvimÒ\6\1\0\b\0-\0z5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\5\0006\4\1\0009\4\6\0049\4\a\4\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\b\0006\4\1\0009\4\6\0049\4\t\4\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\n\0006\4\1\0009\4\6\0049\4\v\4\18\5\0\0B\1\5\0013\1\f\0007\1\r\0005\1\14\0006\2\15\0'\3\16\0B\2\2\0029\2\17\2B\2\1\0026\3\15\0'\4\18\0B\3\2\0029\3\19\0039\3\20\0035\4\21\0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3\24\0039\3\20\0035\4\25\0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3\26\0039\3\20\0035\4\27\0006\5\r\0=\5\r\4=\1\22\4=\2\23\0045\5\28\0004\6\0\0=\6\29\5=\5\30\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3\31\0039\3\20\0035\4 \0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3!\0039\3\20\0035\4\"\0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0013\3#\0006\4\15\0'\5\18\0B\4\2\0029\4$\0049\4\20\0045\5%\0006\6\r\0=\6\r\5=\1\22\5=\2\23\0055\6&\0\18\a\3\0B\a\1\2=\a'\6=\6(\5B\4\2\0016\4\15\0'\5)\0B\4\2\0029\4*\4'\5,\0=\5+\4K\0\1\0\vsingle\vborder\20default_options\25lspconfig.ui.windows\17init_options\18fallbackFlags\1\0\0\1\0\0\vclangd\0\1\0\0\rocamllsp\1\0\0\rneocmake\rsettings\18rust-analyzer\1\0\0\1\0\0\18rust_analyzer\1\0\0\rtsserver\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequire\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\0\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\age\6n\bset\vkeymap\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["registers.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14registers\frequire\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2Á\6\0\0\5\0)\0o6\0\0\0009\0\1\0)\1\n\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0026\1\0\0009\1\5\1'\2\a\0=\2\6\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\v\0009\4\f\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\r\0009\4\14\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\15\0009\4\16\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\17\0009\4\18\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\19\0009\4\20\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\21\0009\4\22\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\23\0009\4\24\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\25\0009\4\26\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\27\0009\4\28\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\29\0009\4\30\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\r\0009\4\31\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3 \0009\4!\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\"\0009\4#\0B\1\4\0016\1\3\0'\2$\0B\1\2\0029\1%\0015\2'\0005\3&\0=\3(\2B\1\2\1K\0\1\0\rdefaults\1\0\0\1\0\1\17initial_mode\vnormal\nsetup\14telescope\16diagnostics\14<leader>e\25lsp_type_definitions\14<leader>t\25lsp_document_symbols\24lsp_implementations\14<leader>i\20lsp_definitions\14<leader>d\19lsp_references\14<leader>r\fkeymaps\14<leader>k\rcommands\14<leader>c\14live_grep\14<leader>l\16grep_string\14<leader>w\17git_branches\14<leader>b\15git_status\14<leader>s\15find_files\14<leader>f\6n\bset\vkeymap\6f\14mapleader\6g\22telescope.builtin\frequire\rwinblend\bopt\bvim\0" },
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/ayayu/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\2õ\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\b‚ûú\24package_uninstalled\b‚úó\22package_installed\b‚úì\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2d\0\0\3\0\6\0\v6\0\0\0006\1\1\0009\1\2\0016\2\1\0009\2\3\0029\2\4\0029\2\5\2B\2\1\0A\1\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintk\0\0\1\1\6\0\v-\0\0\0009\0\0\0009\0\1\0\15\0\0\0X\1\5Ä6\0\2\0009\0\3\0009\0\4\0009\0\5\0B\0\1\1K\0\1\0\0¿\vformat\bbuf\blsp\bvim\19formatProvider\24server_capabilities—\a\1\2\b\0*\0ö\0015\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\6\0006\6\2\0009\6\a\0069\6\b\0069\6\t\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\n\0006\6\2\0009\6\a\0069\6\b\0069\6\v\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\f\0006\6\2\0009\6\a\0069\6\b\0069\6\r\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\14\0006\6\2\0009\6\a\0069\6\b\0069\6\15\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\16\0006\6\2\0009\6\a\0069\6\b\0069\6\17\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\18\0006\6\2\0009\6\a\0069\6\b\0069\6\19\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\20\0006\6\2\0009\6\a\0069\6\b\0069\6\21\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\22\0003\6\23\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\24\0006\6\2\0009\6\a\0069\6\b\0069\6\25\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\26\0006\6\2\0009\6\a\0069\6\b\0069\6\27\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\28\0006\6\2\0009\6\a\0069\6\b\0069\6\29\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\30\0006\6\2\0009\6\a\0069\6\b\0069\6\31\6\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5 \0006\6\2\0009\6\a\0069\6\b\0069\6!\6\18\a\2\0B\3\5\0016\3\2\0009\3\"\0039\3#\0035\4$\0005\5&\0005\6%\0=\6'\0053\6(\0=\6)\5B\3\3\0012\0\0ÄK\0\1\0\rcallback\0\fpattern\1\0\0\1\6\0\0\t*.rs\t*.py\b*.c\n*.cpp\n*.lua\1\2\0\0\16BufWritePre\24nvim_create_autocmd\bapi\vformat\agf\15references\agr\16code_action\aga\vrename\14<space>rn\20type_definition\agt\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\bvim\vbuffer\1\0\0–\4\0\0\5\0\18\0@4\0\0\0006\1\0\0009\1\1\0019\1\2\1)\2\0\0B\1\2\2\18\3\1\0009\2\3\1'\4\4\0B\2\3\2\15\0\2\0X\3!Ä6\2\5\0009\2\6\2\18\3\0\0'\4\a\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\b\0B\2\3\0016\2\0\0009\2\t\0029\2\n\0025\3\v\0B\2\2\2\a\2\f\0X\2\"Ä6\2\5\0009\2\6\2\18\3\0\0'\4\r\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\14\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\15\0B\2\3\1X\2\18Ä6\2\0\0009\2\t\0029\2\n\0025\3\16\0B\2\2\2\a\2\f\0X\2\vÄ6\2\5\0009\2\6\2\18\3\0\0'\4\r\0B\2\3\0016\2\5\0009\2\6\2\18\3\0\0'\4\17\0B\2\3\1X\2\0ÄL\0\2\0!-I/usr/local/include/opencv4\1\0\1\bbuf\3\0N-I/usr/lib/gcc/x86_64-w64-mingw32/10-win32/include/c++/x86_64-w64-mingw32;-I/usr/lib/gcc/x86_64-w64-mingw32/10-win32/include/c++\15-std=c++2a\bcpp\1\0\1\bbuf\3\0\nmatch\rfiletype&-I/usr/x86_64-w64-mingw32/include*--target=x86_64-unknown-mingw-unknown\vinsert\ntable\v/mnt/c\tfind\22nvim_buf_get_name\bapi\bvimÒ\6\1\0\b\0-\0z5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\5\0006\4\1\0009\4\6\0049\4\a\4\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\b\0006\4\1\0009\4\6\0049\4\t\4\18\5\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\2\4\0'\3\n\0006\4\1\0009\4\6\0049\4\v\4\18\5\0\0B\1\5\0013\1\f\0007\1\r\0005\1\14\0006\2\15\0'\3\16\0B\2\2\0029\2\17\2B\2\1\0026\3\15\0'\4\18\0B\3\2\0029\3\19\0039\3\20\0035\4\21\0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3\24\0039\3\20\0035\4\25\0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3\26\0039\3\20\0035\4\27\0006\5\r\0=\5\r\4=\1\22\4=\2\23\0045\5\28\0004\6\0\0=\6\29\5=\5\30\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3\31\0039\3\20\0035\4 \0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0016\3\15\0'\4\18\0B\3\2\0029\3!\0039\3\20\0035\4\"\0006\5\r\0=\5\r\4=\1\22\4=\2\23\4B\3\2\0013\3#\0006\4\15\0'\5\18\0B\4\2\0029\4$\0049\4\20\0045\5%\0006\6\r\0=\6\r\5=\1\22\5=\2\23\0055\6&\0\18\a\3\0B\a\1\2=\a'\6=\6(\5B\4\2\0016\4\15\0'\5)\0B\4\2\0029\4*\4'\5,\0=\5+\4K\0\1\0\vsingle\vborder\20default_options\25lspconfig.ui.windows\17init_options\18fallbackFlags\1\0\0\1\0\0\vclangd\0\1\0\0\rocamllsp\1\0\0\rneocmake\rsettings\18rust-analyzer\1\0\0\1\0\0\18rust_analyzer\1\0\0\rtsserver\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequire\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\0\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\age\6n\bset\vkeymap\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÄ\t\1\0\b\0006\0ï\0016\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\6\0005\3\4\0003\4\3\0=\4\5\3=\3\a\0025\3\f\0009\4\b\0009\4\t\0049\4\n\0045\5\v\0B\4\2\2=\4\r\0039\4\b\0009\4\t\0049\4\n\0044\5\0\0B\4\2\2=\4\14\3=\3\t\0029\3\15\0009\3\16\0039\3\17\0035\4\19\0009\5\15\0009\5\18\5B\5\1\2=\5\20\0049\5\15\0009\5\21\5B\5\1\2=\5\22\0049\5\15\0009\5\23\5)\6¸ˇB\5\2\2=\5\24\0049\5\15\0009\5\23\5)\6\4\0B\5\2\2=\5\25\0049\5\15\0009\5\26\5B\5\1\2=\5\27\0049\5\15\0009\5\28\5B\5\1\2=\5\29\0049\5\15\0009\5\30\0055\6\31\0B\5\2\2=\5 \4B\3\2\2=\3\15\0029\3\b\0009\3!\0034\4\3\0005\5\"\0>\5\1\0045\5#\0>\5\2\0044\5\3\0005\6$\0>\6\1\5B\3\3\2=\3!\2B\1\2\0019\1\2\0009\1%\1'\2&\0005\3)\0009\4\b\0009\4!\0044\5\3\0005\6'\0>\6\1\0054\6\3\0005\a(\0>\a\1\6B\4\3\2=\4!\3B\1\3\0019\1\2\0009\1*\0015\2+\0005\3,\0009\4\15\0009\4\16\0049\4*\4B\4\1\2=\4\15\0034\4\3\0005\5-\0>\5\1\4=\4!\0035\4/\0009\5\b\0009\5\t\0059\5\n\0055\6.\0B\5\2\2=\5\r\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\14\4=\4\t\3B\1\3\0019\1\2\0009\1*\1'\0020\0005\0031\0009\4\15\0009\4\16\0049\4*\4B\4\1\2=\4\15\0039\4\b\0009\4!\0044\5\3\0005\0062\0>\6\1\0054\6\3\0005\a3\0>\a\1\6B\4\3\2=\4!\0035\0045\0009\5\b\0009\5\t\0059\5\n\0055\0064\0B\5\2\2=\5\r\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\14\4=\4\t\3B\1\3\1K\0\1\0\1\0\0\1\0\3\15col_offset\3\3\14scrolloff\3\5\vborder\vdouble\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\0\1\0\3\15col_offset\3\3\14scrolloff\3\5\vborder\vdouble\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\1\0\3\15col_offset\3\3\14scrolloff\3\5\vborder\vdouble\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\2®\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\1\27automatic_installation\2\1\6\0\0\18rust_analyzer\fpyright\rtsserver\vclangd\rneocmake\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\0020\0\1\2\0\2\0\a9\1\0\0\6\1\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\fnull-ls\tnameY\1\0\3\1\b\0\v6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\1\4\0-\2\0\0=\2\5\0013\2\6\0=\2\a\1B\0\2\1K\0\1\0\1¿\vfilter\0\nbufnr\1\0\0\vformat\bbuf\blsp\bvim´\1\1\2\6\0\n\0\0169\2\0\0'\3\1\0B\2\2\2\15\0\2\0X\3\tÄ6\2\2\0009\2\3\0029\2\4\2'\3\5\0005\4\6\0=\1\a\0043\5\b\0=\5\t\4B\2\3\0012\0\0ÄK\0\1\0\rcallback\0\vbuffer\1\0\0\16BufWritePre\24nvim_create_autocmd\bapi\bvim\28textDocument/formatting\20supports_method–\1\1\0\5\0\14\0\0236\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\n\0004\3\4\0009\4\3\0009\4\4\0049\4\5\4>\4\1\0039\4\3\0009\4\6\0049\4\a\4>\4\2\0039\4\3\0009\4\b\0049\4\t\4>\4\3\3=\3\v\0023\3\f\0=\3\r\2B\1\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\nspell\15completion\veslint\16diagnostics\rautopep8\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: csv.vim
time([[Config for csv.vim]], true)
try_loadstring("\27LJ\2\2ô\3\0\0\4\0\16\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2B\0\3\0016\0\0\0009\0\1\0009\0\2\0005\1\a\0005\2\t\0005\3\b\0=\3\6\2B\0\3\0016\0\0\0009\0\1\0009\0\2\0005\1\n\0005\2\f\0005\3\v\0=\3\6\2B\0\3\0016\0\0\0009\0\r\0'\1\14\0B\0\2\0016\0\0\0009\0\r\0'\1\15\0B\0\2\1K\0\1\0#let g:csv_arrange_align = 'l*'%let g:csv_highlight_column = 'y'\bcmd\1\0\1\fcommand\22:%UnArrangeColumn\1\2\0\0\n*.csv\1\2\0\0\16BufWritePre\1\0\1\fcommand\20:%ArrangeColumn\1\2\0\0\n*.csv\1\3\0\0\fBufRead\17BufWritePost\fpattern\1\0\1\fcommand\20setfiletype csv\1\2\0\0\n*.csv\1\2\0\0\fBufRead\24nvim_create_autocmd\bapi\bvim\0", "config", "csv.vim")
time([[Config for csv.vim]], false)
-- Config for: registers.nvim
time([[Config for registers.nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14registers\frequire\0", "config", "registers.nvim")
time([[Config for registers.nvim]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
try_loadstring("\27LJ\2\2Ä\1\0\0\4\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\6\0'\3\a\0B\0\4\1K\0\1\0\22:NERDTreeFind<CR>\atf\24:NERDTreeToggle<CR>\att\6n\bset\vkeymap\bvim\0", "config", "nerdtree")
time([[Config for nerdtree]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2ì\6\0\0\5\0&\0;6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\15\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0004\4\0\0=\4\t\0034\4\0\0=\4\n\3=\3\v\0024\3\0\0=\3\f\0025\3\r\0=\3\14\2=\2\16\0015\2\18\0005\3\17\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\2=\2\30\0015\2\31\0004\3\0\0=\3\19\0024\3\0\0=\3\21\0025\3 \0=\3\23\0025\3!\0=\3\25\0024\3\0\0=\3\27\0024\3\0\0=\3\29\2=\2\"\0014\2\0\0=\2#\0014\2\0\0=\2\n\0014\2\0\0=\2$\0014\2\0\0=\2%\1B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\15statusline\3Ë\a\vwinbar\3Ë\a\ftabline\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\4\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\17globalstatus\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2W\0\4\b\0\5\0\14\18\5\1\0009\4\0\1'\6\1\0B\4\3\2\15\0\4\0X\5\2Ä'\4\2\0X\5\1Ä'\4\3\0'\5\4\0\18\6\4\0\18\a\0\0&\5\a\5L\5\2\0\6 \tÔÅ± \tÔÅú \nerror\nmatch∑\6\1\0\4\0&\00096\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\20\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2=\2\21\0015\2\22\0003\3\23\0=\3\24\2=\2\25\1B\0\2\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2\30\0'\3\31\0B\0\4\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2 \0'\3!\0B\0\4\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2\"\0'\3#\0B\0\4\0016\0\26\0009\0\27\0009\0\28\0'\1\29\0'\2$\0'\3%\0B\0\4\1K\0\1\0'<CMD>BufferLineSortByDirectory<CR>\abs!<CMD>BufferLineCyclePrev<CR>\n<C-h>!<CMD>BufferLineCycleNext<CR>\n<C-l>\28<CMD>BufferLinePick<CR>\abb\6n\bset\vkeymap\bvim\foptions\26diagnostics_indicator\0\1\0\a\16color_icons\2\22max_prefix_length\3\b\16diagnostics\rnvim_lsp\20show_close_icon\2\fnumbers\fordinal\20separator_style\nslant\18modified_icon\b‚óè\15highlights\1\0\0\30error_diagnostic_selected\1\0\1\tbold\2\19error_selected\1\0\1\tbold\2 warning_diagnostic_selected\1\0\1\tbold\2\21warning_selected\1\0\1\tbold\2\29info_diagnostic_selected\1\0\1\tbold\2\18info_selected\1\0\1\tbold\2\24diagnostic_selected\1\0\1\tbold\2\20buffer_selected\1\0\0\1\0\1\tbold\2\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\2∫\5\0\0\6\0\21\0?6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0015\0\3\0006\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\a\0'\4\b\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\t\0'\4\n\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\v\0'\4\f\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\r\0'\4\14\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\15\0'\4\16\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\17\0'\4\18\0\18\5\0\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\2\a\0'\3\19\0'\4\20\0\18\5\0\0B\1\5\1K\0\1\0\17<Cmd>noh<CR>\14<Leader>l.g#<Cmd>lua require('hlslens').start()<CR>\ag#.g*<Cmd>lua require('hlslens').start()<CR>\ag*-#<Cmd>lua require('hlslens').start()<CR>\6#-*<Cmd>lua require('hlslens').start()<CR>\6*Y<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>\6NY<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\nsetup\fhlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2Á\6\0\0\5\0)\0o6\0\0\0009\0\1\0)\1\n\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0026\1\0\0009\1\5\1'\2\a\0=\2\6\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\v\0009\4\f\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\r\0009\4\14\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\15\0009\4\16\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\17\0009\4\18\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\19\0009\4\20\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\21\0009\4\22\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\23\0009\4\24\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\25\0009\4\26\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\27\0009\4\28\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\29\0009\4\30\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\r\0009\4\31\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3 \0009\4!\0B\1\4\0016\1\0\0009\1\b\0019\1\t\1'\2\n\0'\3\"\0009\4#\0B\1\4\0016\1\3\0'\2$\0B\1\2\0029\1%\0015\2'\0005\3&\0=\3(\2B\1\2\1K\0\1\0\rdefaults\1\0\0\1\0\1\17initial_mode\vnormal\nsetup\14telescope\16diagnostics\14<leader>e\25lsp_type_definitions\14<leader>t\25lsp_document_symbols\24lsp_implementations\14<leader>i\20lsp_definitions\14<leader>d\19lsp_references\14<leader>r\fkeymaps\14<leader>k\rcommands\14<leader>c\14live_grep\14<leader>l\16grep_string\14<leader>w\17git_branches\14<leader>b\15git_status\14<leader>s\15find_files\14<leader>f\6n\bset\vkeymap\6f\14mapleader\6g\22telescope.builtin\frequire\rwinblend\bopt\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

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
