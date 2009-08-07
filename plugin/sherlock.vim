"=============================================================================
" File:						sherlock.vim
" Author:					Frédéric Hardy - http://blog.mageekbox.net
" Date:						Thu Aug  6 10:57:14 CEST 2009
" Licence:					GPL version 2.0 license
" GetLatestVimScripts:	2731 11146 :AutoInstall: sherlock.vim
"=============================================================================
if (!exists('sherlock#disable') || sherlock#disable == 0) && !exists('sherlock#loaded')
	let sherlock#name = 'sherlock'
	let sherlock#loaded = 1

	if v:version < 700
		call fch#message#loadingError(sherlock#name, "Vim version >= 7 is required")
	elseif &cp
		call fch#message#loadingError(sherlock#name, "No compatible mode is required")
	else
		let s:cpo = &cpo

		setlocal cpo&vim

		if !hasmapto('<Plug>sherlockCompleteBackward()')
			cnoremap <C-Tab> <C-\>esherlock#completeBackward()<CR>
		endif

		if !hasmapto('sherlock#completeForward()')
			cnoremap <C-S-Tab> <C-\>esherlock#completeForward()<CR>
		endif

		let &cpo= s:cpo
		unlet s:cpo
	endif
endif

finish

" vim:filetype=vim foldmethod=marker shiftwidth=3 tabstop=3
