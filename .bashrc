# Add to .bashrc

# show folder content on cd
function cd {
    builtin cd "$@" && ls
}