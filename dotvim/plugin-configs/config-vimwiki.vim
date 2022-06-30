" This is to fix some bug with vim conceal making links appear in two lines
autocmd FileType vimwiki syntax on
let g:vimwiki_listing_hl=1 " Syntax highlighting in HTML export

" Leader for vimwiki is comma
" Python scripts
exec 'py3file ' .config_location. 'python-scripts/date_helper.py'

function AddDate() abort
    let fname = expand("%:t:r")
    py3 get_formatted_date(vim.eval("fname")) 
    call append(0, date)
endfunction

" On weekends add reminder at the end to backup wiki
function InsertBackupHint()
    let fname = expand("%:t:r")
    py3 is_sunday(vim.eval("fname"))
    if is_sunday == 1
        call append(line('$') - 1, "\t- [ ] Backup wiki (Sunday)")
    endif
endfunction

augroup diary_entry
    autocmd!
    autocmd BufNewFile */diary/[0-9]*.wiki :call AddDate()
    autocmd BufNewFile */diary/[0-9]*.wiki execute '1r '.config_location.'vimwiki-templates/daily-diary.wiki'
    autocmd BufNewFile */diary/[0-9]*.wiki :call InsertBackupHint()
augroup END
