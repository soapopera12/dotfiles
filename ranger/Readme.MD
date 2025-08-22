


adapted ranger to enter into a file without crashing while exiting 
terminal


edit this line in rc.conf
map s shell $shell
to
map s chain shell echo "$pwd" > ~/.rangerdir ; quit

edit .zshrc and add this function  

ranger() {
    command ranger
    if [ -f ~/.rangerdir ]; then
        cd "$(cat ~/.rangerdir)"
        rm -f ~/.rangerdir
    fi
}



