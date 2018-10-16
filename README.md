# php-multi-version
Run multiple php version on ubuntu

```sudo apt-get install apache2```

```sudo apt-get install software-properties-common```

```sudo add-apt-repository ppa:ondrej/php```

```sudo apt-get update```

```sudo apt-get install php5.6 php-5.6-common```

```sudo apt-get install php7.0 php-7.0-common```

```sudo apt-get install php7.1 php-7.0-common```

```sudo apt-get install php7.2 php-7.1-common```

# To disable current php version
```sudo a2dismod php5.6```

# To enable desire php version
```sudo a2enmod php7.1```

Finally run ```sudo service apache2 restart```


```p2p.sh``` file to change php version more easily and quickly
```sudo ./p2p.sh```
