#!/bin/sh
echo "Choose a version: "
echo "1 > PHP 5.6"
echo "2 > PHP 7.0"
echo "3 > PHP 7.1"
echo "4 > PHP 7.2"
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	1)	
		a2dismod php7.0
		a2dismod php7.1
		a2dismod php7.2
		a2enmod php5.6
		service apache2 restart
		echo "Current running php version is PHP 5.6"
		break
		;;
	2)	
		a2dismod php5.6
		a2dismod php7.1
		a2dismod php7.2
		a2enmod php7.0
		service apache2 restart
		echo "Current running php version is PHP 7.0"
		break
		;;
	3)	
		a2dismod php5.6
		a2dismod php7.0
		a2dismod php7.2
		a2enmod php7.1
		service apache2 restart
		echo "Current running php version is PHP 7.1"
		break
		;;
	4)	
		a2dismod php5.6
		a2dismod php7.0
		a2dismod php7.1
		a2enmod php7.2
		service apache2 restart
		echo "Current running php version is PHP 7.2"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		break
		;;
  esac
done
echo 
echo "Thank you!"
