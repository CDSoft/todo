" Copyright © 2013, 2016 Christophe Delord (cdsoft.fr)
" This work is free. You can redistribute it and/or modify it under the
" terms of the Do What The Fuck You Want To Public License, Version 2,
" as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

if (exists("g:loaded_todo"))
  finish
endif
let g:loaded_todo = 1

let s:cpo_save = &cpo
set cpo&vim

function! Toggle_task_status()
  let line = getline('.')
  if match(line, '^\(\s*\)-') == 0
    let line = substitute(line, '^\(\s*\)-', '\1✓', '')
  elseif match(line, '^\(\s*\)+') == 0
    let line = substitute(line, '^\(\s*\)+', '\1-', '')
  elseif match(line, '^\(\s*\)✓') == 0
    let line = substitute(line, '^\(\s*\)✓', '\1-', '')
  elseif match(line, '^\(\s*\)?') == 0
    let line = substitute(line, '^\(\s*\)?', '\1-', '')
  else
    let line = substitute(line, '^\(\s\{-}\)\(\s\=\)\<', '\2\1- ', '')
  endif
  call setline('.', line)
endfunction

function! Toggle_urgent_task_status()
  let line = getline('.')
  if match(line, '^\(\s*\)+') == 0
    let line = substitute(line, '^\(\s*\)+', '\1✓', '')
  elseif match(line, '^\(\s*\)-') == 0
    let line = substitute(line, '^\(\s*\)-', '\1+', '')
  elseif match(line, '^\(\s*\)✓') == 0
    let line = substitute(line, '^\(\s*\)✓', '\1+', '')
  elseif match(line, '^\(\s*\)?') == 0
    let line = substitute(line, '^\(\s*\)?', '\1+', '')
  else
    let line = substitute(line, '^\(\s\{-}\)\(\s\=\)\<', '\2\1+ ', '')
  endif
  call setline('.', line)
endfunction

function! Toggle_question()
  let line = getline('.')
  if match(line, '^\(\s*\)-') == 0
    let line = substitute(line, '^\(\s*\)-', '\1?', '')
  elseif match(line, '^\(\s*\)+') == 0
    let line = substitute(line, '^\(\s*\)-', '\1?', '')
  elseif match(line, '^\(\s*\)✓') == 0
    let line = substitute(line, '^\(\s*\)✓', '\1?', '')
  elseif match(line, '^\(\s*\)?') == 0
    let line = substitute(line, '^\(\s*\)?\s*', '\1', '')
  else
    let line = substitute(line, '^\(\s\{-}\)\(\s\=\)\<', '\2\1? ', '')
  endif
  call setline('.', line)
endfunction

function SetupTodo()
    inoremap <silent> <buffer> <Leader><TAB> <ESC>:call Toggle_task_status()<CR>i
    noremap <silent> <buffer> <Leader><TAB> :call Toggle_task_status()<CR>
    inoremap <silent> <buffer> <Leader>& <ESC>:call Toggle_urgent_task_status()<CR>i
    noremap <silent> <buffer> <Leader>& :call Toggle_urgent_task_status()<CR>
    inoremap <silent> <buffer> <Leader>q <ESC>:call Toggle_question()<CR>i
    noremap <silent> <buffer> <Leader>q :call Toggle_question()<CR>
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save

