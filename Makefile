PLUGIN = todo

SOURCE = doc/todo.txt
SOURCE += syntax/todo.vim
SOURCE += plugin/todo.vim
SOURCE += ftdetect/todo.vim

all: ${PLUGIN}.vmb ${PLUGIN}.tgz

${PLUGIN}.vmb: ${SOURCE}
	vim --cmd 'let g:plugin_name="${PLUGIN}"' -s build.vim

${PLUGIN}.tgz: ${SOURCE}
	tar czvf $@ $^

install: all
	rsync -Rv ${SOURCE} ${HOME}/.vim/

clean:
	rm ${PLUGIN}.vmb
