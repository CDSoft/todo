" Copyright © 2013, 2016 Christophe Delord (cdsoft.fr)
" This work is free. You can redistribute it and/or modify it under the
" terms of the Do What The Fuck You Want To Public License, Version 2,
" as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

autocmd BufRead,BufNewFile *.todo,*todo.txt set filetype=todo | call SetupTodo()
augroup filetypedetect
  au BufRead,BufNewFile *.todo,*todo.txt setfiletype todo | call SetupTodo()
augroup END
