setlocal softtabstop=2
setlocal shiftwidth=2
setlocal tabstop=2

setlocal matchpairs+=<:>

setlocal omnifunc=htmlcomplete#CompleteTags

setlocal makeprg=tidy\ -quiet\ --errors\ --gnu-emacs\ yes\ %
