"=============================================================================
" Author:					Frédéric Hardy - http://blog.mageekbox.net
" Date:						Fri Aug  7 09:43:24 CEST 2009
" Licence:					GPL version 2.0 license
"=============================================================================
"get {{{1
function fch#message#get(plugin, message)
	return '[' . a:plugin . '] ' . substitute(a:message, '\.$', '', '') . '.'
endfunction
"echo {{{1
function fch#message#echo(plugin, message)
	echo fch#message#get(a:plugin, a:message)
endfunction
"message {{{1
function fch#message#message(plugin, message)
	echomsg fch#message#get(a:plugin, a:message)
endfunction
"loadingError {{{1
function fch#message#loadingError(plugin, message)
	call fch#message#echo(a:plugin,  'Loading error: ' . a:message)
endfunction
"runtimeError {{{1
function fch#message#runtimeError(plugin, message)
	echohl ErrorMsg
	call fch#message#message(a:plugin, 'Runtime error: ' . a:message)
	echohl Normal
endfunction
" vim:filetype=vim foldmethod=marker shiftwidth=3 tabstop=3
