" Location of this folder
let config_location = fnamemodify($MYVIMRC, ':h') . '/'

" Platform specific settings
exec 'source '.config_location."settings/platform_setup.vim"

" Settings
exec 'source '.config_location."settings/config.vim"
exec 'source '.config_location."settings/plugins.vim"
exec 'source '.config_location."settings/keybinds.vim"
exec 'source '.config_location."settings/interface.vim"
exec 'source '.config_location."settings/terminal.vim"

" Programming Language configs
exec 'source '.config_location."language-configs/pyconfig.vim"
exec 'source '.config_location."language-configs/goconfig.vim"

" Plugin configs
exec 'source '.config_location."plugin-configs/config-fzf.vim"
exec 'source '.config_location."plugin-configs/config-coc.vim"
exec 'source '.config_location."plugin-configs/config-fern.vim"
exec 'source '.config_location."plugin-configs/config-vimwiki.vim"
exec 'source '.config_location."plugin-configs/config-lightline.vim"
exec 'source '.config_location."plugin-configs/config-fugitive.vim"
