Todo plugin for Vim
===================

This Vim plugin is based on vim-task (github.com/samsonw/vim-task).
It helps managing todo lists within Vim in a very basic but efficient way.

The latest version of todo can be found here: <https://codeberg.org/cdsoft/todo>

Installation
------------

Todo is distributed as a Vimball archive.
- download todo.vmb
- open this file with vim and type « :so % »

Usage
-----

### File type

- file named *.todo or *todo.txt are open with the todo plugin.

### Syntax

- lines ending with ':' are project titles
- lines starting with '+' are urgent tasks
- lines starting with '-' are pending tasks (less urgent)
- lines starting with '✓' are completed tasks
- lines starting with '?' are questions

Some "todo" words are highlighted
Other lines remain unformated

### Shortcuts

Shortcuts are key sequences starting with <Leader>. The <Leader> key is
'\' by default but I personnally prefer '²' which makes Todo shortcuts
easier to type on a french keyboard.
You can add « let mapleader="²" » to the .vimrc file or define any
other key that suits you best.

- \TAB toggles the line status between "pending" and "completed"
- \& toggles the line status between "urgent" and "completed"
- \q toggles the line status between "question" and "unformated"

### License

Copyright © 2013, 2016 Christophe Delord (cdelord.fr)

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.

