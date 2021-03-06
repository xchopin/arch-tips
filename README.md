# Arch Tips
Some tips I use at work for my Arch Linux installations (Antergos)

## I. System
### 1. Install yaourt package manager

> A. If Arch Linux from scratch
``` bash
$ git clone https://aur.archlinux.org/package-query.git
$ cd package-query
$ makepkg -si
$ cd ..
$ git clone https://aur.archlinux.org/yaourt.git
$ cd yaourt
$ makepkg -si
$ cd ..
```
> B. If Antergos

`$ pacman -Sy yaourt`

### 2. Essential packages to download
- `$ yaourt -S sublime-text`
- `$ yaourt -S atom`
- `$ yaourt -S google-chrome`
- `$ yaourt -S vivaldi`
- `$ yaourt -S spotify`
- `$ yaourt -S openconnect`
- `$ yaourt -S owncloud`
- `$ yaourt -S gtk-arc-flatabulous-theme-git`
- `$ yaourt -S mariadb`
- `$ yaourt -S php-apache`
- `$ yaourt -S composer`
- `$ yaourt -S jdk9-openjdk`
- `$ yaourt -S mongodb`
- `$ yaourt -S php-mongodb`
- `$ yaourt -S robo3t`
- `$ yaourt -S pidgin`
- `$ yaourt -S docker`
- `$ yaourt -S htop`
- `$ yaourt -S bower`
- `$ yaourt -S python2`
- `$ yaourt -S npm`
- `$ yaourt --m-arg --skipchecksums --m-arg --skippgpcheck -S discord`


### 3. Turn on Bluetooth on login screen
```
$ sudo nano /etc/udev/rules.d/10-local.rules

# Set bluetooth power up
ACTION=="add", KERNEL=="hci0", RUN+="/usr/bin/hciconfig hci0 up"
```

### 4. Gnome
#### A. Move window buttons to the left
`$ gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'`

### 5. Apache
#### A. Free creation for personnal Apache 
`$ sudo chmod 777 -R /srv/http/`
#### B. Enable PHP
`$ subl /etc/httpd/conf/httpd.conf` then <br>
1. comment `LoadModule mpm_event_module modules/mod_mpm_event.so` <br>
2. uncomment `#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so` <br>
3. At the end of the LoadModule list:
```
LoadModule php7_module modules/libphp7.so
AddHandler php7-script php
```
4. At the end of the Include list:
Include `conf/extra/php7_module.conf`

#### B. Enable mod_rewrite
`$ subl /etc/httpd/conf/httpd.conf` then <br>
1. Change `AllowOverride none` into `AllowOverride All`
2. Uncomment `#LoadModule rewrite_module modules/mod_rewrite.so`

#### C. Enable Virtual hosts
`$ subl /etc/httpd/conf/httpd.conf` then uncomment `#Include conf/extra/httpd-vhosts.conf` <br>
 next `$ subl /etc/httpd/conf/extra/httpd-vhosts.conf` then  write your VirtualHost afterward add your ServerName in `/etc/hosts`  finally restart Apache.


_To check if it is ok : `apachectl configtest`_

#### D. Enable MariaDB/MySQL
`$ subl /etc/php/php.ini` then uncomment
```
#extension=pdo_mysql.so
#extension=mysqli.so
```

### 5. MariaDB
#### A. Solve the issue of starting mariadb.service
`$ sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql`

#### B. Create your first user

Log with `$ mysql -u root -p` (no password) then `CREATE USER 'USER'@'localhost' IDENTIFIED BY 'PASSWORD';`


## II. Softwares
### 1. Sublime Text
```
{
 "font_size": 15,
 "theme": "Default.sublime-theme",
 "line_padding_top": 6,
 "line_padding_bottom": 6,
}
```
