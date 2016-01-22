install:
	@test -d ~/.vim/syntax && test -d ~/.vim/ftdetect || \
		mkdir -v -p ~/.vim/syntax ~/.vim/ftdetect
	@cp -v syntax/sollya.vim $(HOME)/.vim/syntax
	@cp -v ftdetect/sollya.vim $(HOME)/.vim/ftdetect
