# Add to .bashrc

# show folder content on cd
function cd {
    builtin cd "$@" && ls
}

# setup for cdargs
if [ -e /usr/share/doc/cdargs/examples/cdargs-bash.sh ]; then
  . /usr/share/doc/cdargs/examples/cdargs-bash.sh
fi