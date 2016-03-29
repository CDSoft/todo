" Copyright © 2013, 2016 Christophe Delord (cdsoft.fr)
" This work is free. You can redistribute it and/or modify it under the
" terms of the Do What The Fuck You Want To Public License, Version 2,
" as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

if exists("b:current_syntax")
  finish
endif

syntax keyword taskKeyword New new Working working Done done Todo TODO todo bug Bug TBC TBD

syntax match taskWorkingIcon "^-" contained
syntax match taskWorkingIcon "^\s*-" contained
syntax match taskUrgentIcon "^+" contained
syntax match taskUrgentIcon "^\s*+" contained
syntax match taskDoneIcon "^✓" contained
syntax match taskDoneIcon "^\s*✓" contained
syntax match taskQuestionIcon "^?" contained
syntax match taskQuestionIcon "^\s*?" contained

syntax match taskWorkingItem "^-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskWorkingItem "^\s*-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskUrgentItem "^+.*" contains=taskUrgentIcon,taskKeyword
syntax match taskUrgentItem "^\s*+.*" contains=taskUrgentIcon,taskKeyword
syntax match taskDoneItem "^✓.*" contains=taskDoneIcon,taskKeyword
syntax match taskDoneItem "^\s*✓.*" contains=taskDoneIcon,taskKeyword
syntax match taskQuestionItem "^?.*" contains=taskQuestionIcon,taskKeyword
syntax match taskQuestionItem "^\s*?.*" contains=taskQuestionIcon,taskKeyword

highlight taskKeyword guifg=black guibg=yellow gui=NONE ctermfg=black ctermbg=yellow cterm=NONE

highlight taskWorkingItem guifg=red guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
highlight taskUrgentItem guifg=red guibg=NONE gui=bold ctermfg=red ctermbg=NONE cterm=bold
highlight taskDoneItem guifg=green guibg=NONE gui=NONE ctermfg=green ctermbg=NONE cterm=NONE
highlight taskQuestionItem guifg=black guibg=yellow gui=NONE ctermfg=black ctermbg=yellow cterm=NONE

highlight taskWorkingIcon guifg=red guibg=NONE gui=bold ctermfg=red ctermbg=NONE cterm=bold
highlight taskUrgentIcon guifg=red guibg=NONE gui=bold ctermfg=red ctermbg=NONE cterm=bold
highlight taskDoneIcon guifg=green guibg=NONE gui=bold ctermfg=green ctermbg=NONE cterm=bold
highlight taskQuestionIcon guifg=black guibg=NONE gui=bold ctermfg=black ctermbg=NONE cterm=bold

syntax match sectionTitleLine "^.*:\s*$" contains=sectionTitle
syntax match sectionTitle "\S.*:\s*$"
highlight sectionTitle guifg=blue guibg=NONE gui=bold,underline ctermfg=blue ctermbg=NONE cterm=bold,underline

let b:current_syntax = "todo"
