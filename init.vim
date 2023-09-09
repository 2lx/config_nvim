" Change leader to a comma
lua vim.g.mapleader = ","

lua require('plugin_lazy')
lua require('autocmds')
lua require('keymaps')
lua require("options")
lua require('plugin_nvim_tree')
lua require('plugin_telescope')
lua require('plugin_lualine')
lua require('plugin_coc')
lua require('plugin_nerdcommenter')
lua require('plugin_better_whitespace')
lua require('plugin_tagbar')

" colorscheme ayu
" colorscheme onehalflight
colorscheme lazylight

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN gitgutter
" {{{
" stage the hunk with <Leader>hs or
" undo it with <Leader>hu.
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)
nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
" nnoremap <Leader>hd :GitGutterDiffOrig<Enter>
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
" }}}

" vim: set fdm=marker fmr={{{,}}} fdl=0 :
