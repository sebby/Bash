echo -n "Uptime: "; uptime
echo ""
echo "Calendrier du mois en cours"
cal
echo ""
# Alias provenant la formation LYNDA.com Unix for Mac OS X Users
alias ll='ls -lahG'
alias home='cd ~'
alias up='cd ..'
alias h='history'

# can also redefine a command to add options
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'

# can be used to fix common typos you make
alias pdw='pwd'

# 0705 
export HISTSIZE=10000                      # 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%d %b %H:%M '    # using strftime format
export HISTCONTROL=ignoreboth              # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"


# change the prompt
# export PS1="\W > "

# mettre en vert et le résultat est 08:09:49 | sebby ~ $
# export PS1="\e[0;32m\t | \u \W \$ \e[m "
export PS1="> "

# GREP_COLOR codes
# Attributes:   Text color:    Background:
#   0 reset all   30 black       40 black
#   1 bright      31 red         41 red
#   2 dim         32 green       42 green
#   4 underscore  33 yellow      43 yellow
#   5 blink       34 blue        44 blue
#   7 reverse     35 purple      45 purple
#   8 hidden      36 cyan        46 cyan
#                 37 white       47 white
# Separate with ";"
#
export GREP_COLOR="7"

# Specify options grep should use by default
export GREP_OPTIONS="--color=auto"


# Création d'un répertoire
# et allant sur ce nouveau répertoire
function mkcd(){
	mkdir $1
	cd $1
}


#alias mysql='/usr/local/mysql-5.1.52-osx10.6-x86_64/bin/mysql'
#alias mysqladmin='/usr/local/mysql-5.1.52-osx10.6-x86_64/bin/mysqladmin'


#alias drush_cc_dev='drush --root=/Volumes/Work/Web/creditcoop-particuliers/web/ --uri=creditcoop-particuliers.dev.dagobert.me status'


alias restart_apache_d7='sudo /Applications/acquia-drupal7/apache/bin/apachectl restart'


alias vid="vim -u ~/.vimrc-drupal"


export PATH="/usr/local/mysql/bin:$PATH"


# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "



