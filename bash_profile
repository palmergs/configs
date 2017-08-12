source ~/.bashrc

# aliases
alias ll='ls -la'
alias mux='tmuxinator'

# functions
function greps() {
  find . \( -name .git -o -name .svn -o -name log -o -name tmp -o -name bin -o -name target -o -name dist -o -name node_modules -o -name bower_components \) -prune -o -type f -print0 | xargs -0 grep -n $1
}

function finds() {
  find . \( -name .git -o -name .svn -o -name log -o -name tmp -o -name bin -o -name target -o -name dist -o -name node_modules -o -name bower_components \) -prune -o -type f | grep $1
}

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}]"
	else
		echo ""
	fi
}

export EDITOR="vim"
export MYSQL=/usr/local/mysql/bin
#export PATH="/usr/local/opt/openssl/bin:$PATH:/usr/local/mysql/bin:$MYSQL:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/mysql/bin:$MYSQL:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export JAVA_HOME=$(/usr/libexec/java_home)
export JRE_HOME=$(/usr/libexec/java_home)
export PS1="\w \$(parse_git_branch)\\$ "

export RUBY_IAST_PROJECT=/Users/galenpalmer/projects/labs/contrast-engine-ruby/trunk
#export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
