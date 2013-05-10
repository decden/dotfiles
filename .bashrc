#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load ~/.extra ~/.bash_prompt ~/.exports ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don't want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source $file
done
unset file

#Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Tab-completion
complete -cf man

# extra bash_prompt exports aliases functions

# Path for ruby gems
PATH="$PATH:/home/denis/.gem/ruby/1.9.1/bin"

# As of gnome-terminal 3.8.1 this stupid hack is needed in order to open new
# tabs in the same directory...
source /etc/profile.d/vte.sh
export PS1='\[$(__vte_ps1)\]'$PS1