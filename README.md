# Arch Tips
Some tips I use at work for my Arch Linux installations (Antergos)

## System
### Install yaourt package manager

> If Arch Linux
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
> If Antergos

- `$ pacman -Sy yaourt

### Essential packages to download
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

### Gnome
#### 1. Move window buttons to the left
`$ gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'`

### Apache
#### 1. Free creation for personnal Apache 
`$ sudo chmod 777 -R /srv/http/`
#### 2. Enable PHP
`$ subl /etc/httpd/conf/httpd.conf` then <br>
A. comment `LoadModule mpm_event_module modules/mod_mpm_event.so` <br>
B. uncomment `#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so` <br>
C. At the end of the LoadModule list:
```
LoadModule php7_module modules/libphp7.so
AddHandler php7-script php
```
D. At the end of the Include list:
Include `conf/extra/php7_module.conf`

#### 3. Enable MariaDB/MySQL
`$ subl /etc/php/php.ini` then uncomment
```
#extension=pdo_mysql.so
#extension=mysqli.so
```

### MariaDB
#### Solve the issue of starting mariadb.service
`$ sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql`

#### Create your first user

Log with `$ mysql -u root -p` (no password) then `CREATE USER 'USER'@'localhost' IDENTIFIED BY 'PASSWORD';`


## Softwares
### Sublime Text
```
{
 "font_size": 15,
 "theme": "Default.sublime-theme",
 "line_padding_top": 6,
 "line_padding_bottom": 6,
}
```
