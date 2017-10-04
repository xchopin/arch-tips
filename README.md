# Arch Tips
Some tips I use at work for my Arch Linux installations

## System

### Essential packages to download
- `pacman -Sy yaourt`
- `yaourt sublime-text`
- `yaourt atom`
- `yaourt google-chrome`
- `yaourt spotify`
- `yaourt openconnect`
- `yaourt owncloud`
- `yaourt gtk-arc-flatabulous-theme-git`
- `yaourt mariadb`
- `yaourt php-apache`
- `yaourt composer`
- `yaourt jdk9-openjdk`

### Apache
#### 1. Free creation for personnal Apache 
`sudo chmod 777 -R /srv/http/`
#### 2. Enable PHP
`subl /etc/httpd/conf/httpd.conf` then
A. comment `LoadModule mpm_event_module modules/mod_mpm_event.so` <br>
B. uncomment `#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so`
C. At the end of the LoadModule list:
```
LoadModule php7_module modules/libphp7.so
AddHandler php7-script php
```
D. At the end of the Include list:
Include `conf/extra/php7_module.conf`

#### 3. Enable MariaDB/MySQL
`subl /etc/php/php.ini` then uncomment
```
#extension=pdo_mysql.so
#extension=mysqli.so
```


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
