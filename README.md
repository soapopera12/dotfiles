# dotfiles
My dotfiles


adapted ranger to enter into a file without crashing while exiting terminal

edit this line in rc.conf
map S shell $SHELL
to
map S chain shell echo "$PWD" > ~/.rangerdir ; quit

edit .zshrc and add this function  

ranger() {
    command ranger
    if [ -f ~/.rangerdir ]; then
        cd "$(cat ~/.rangerdir)"
        rm -f ~/.rangerdir
    fi
}



