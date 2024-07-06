# CodeIgniter4-Docker

## Features
1. Book room 
2. Login, register
3. Admin management user, room, payment,...

## Installation

1. Start up your application by running:

```sh
docker compose up -d
```

2. Execute a command in a running container
```sh
docker exec -it ... bash
```

  - Install or update source (/var/www/html)
```sh
# Install 
composer install --no-dev
```
```sh
# Or update source
composer update
```

  - Import sql
```sh
mysql -u username -p database_name < file.sql
```
## Sources
https://github.com/adnamard/Sikos-?tab=readme-ov-file