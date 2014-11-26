export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

##
# Your previous /Users/mamoru/.bash_profile file was backed up as /Users/mamoru/.bash_profile.macports-saved_2012-04-04_at_23:23:14
##

# MacPorts Installer addition on 2012-04-04_at_23:23:14: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
if which pyenv > /dev/null; then 
	export PYENV_ROOT="${HOME}/.pyenv" 
	export PATH=${PYENV_ROOT}/shims:${PATH}
	eval "$(pyenv init -)"; 
fi
pyenv global 3.4.0
pyenv rehash
source $HOME/.bashrc
# Finished adapting your PATH environment variable for use with MacPorts.

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
