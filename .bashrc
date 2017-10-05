# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias start='systemctl start'
alias restart='systemctl restart'
alias stop='systemctl stop' 
# Apache
alias start-apache='systemctl start httpd.service'
alias restart-apache='systemctl restart httpd.service'
alias stop-apache='systemctl stop httpd.service' 
# MySQL/MariaDB
alias start-mysql='systemctl start mysqld.service'
alias restart-mysql='systemctl restart mysqld.service'
alias stop-mysql='systemctl stop mysqld.service' 

alias lamp='systemctl start httpd.service && systemctl start mysqld.service'
alias stop-lamp='systemctl stop httpd.service ; systemctl stop mysqld.service'
alias subl='subl3'

PS1='[\u@\h \W]\$ '
# >>> BEGIN ADDED BY CNCHI INSTALLER
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# <<< END ADDED BY CNCHI INSTALLER
