" This is for all the autocmd shit

" Filetype settings for java
augroup java
    au!
    au Filetype java setlocal colorcolumn=100
    au Filetype java let g:autoHEADER_fill_char_repeat=96
augroup END

" Make sure vim returns to the same line when file is reopened
augroup line_return
        au!
        au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
augroup END

augroup misc
    au!
    au VimResized * exe "normal! \<c-w>="
    au BufRead,BufNewFile {Jsfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.cap,*.ctl,*.etl,*.ebf} set ft=ruby
augroup END

