# RESTful API JWT Authentication

## Step 1: Model and Migration
 * 1, Create model
```sh
php spark make:model UserModel
# app/Models/UserModel.php
```

 * 2.1, Create migration for add user,...
```sh
php spark make:migration AddUser
# app/Database/Migrations/..._AddUser.php
```

 * 2.2, Generate table from migration
```sh
php spark migrate
```

## Step 2: Install JWT Package

 * 1, Install JWT package use terminal
```sh
composer require firebase/php-jwt
```

 * 2, Configure .env
```env
#--------------------------------------------------------------------
# JWT
#--------------------------------------------------------------------
JWT_SECRET = 'JWT SECRET KEY SAMPLE HERE'
```

## Step 3: Create Controllers
```sh
# eg: create controller Login
php spark make:controller Login --restful 
```

## Step 4: Create Controller Filter

 * 1, Create controller AuthFilter
```sh
php spark make:filter AuthFilter 
```

 * 2, Configure `app/Config/Filters.php`
```php
    ...
    public $aliases = [
        'csrf'     => CSRF::class,
        'toolbar'  => DebugToolbar::class,
        'honeypot' => Honeypot::class,
        'authFilter' => \App\Filters\AuthFilter::class,
    ];
    ...
```

## Step 5: Register Routes
 * Configure `app/Config/Routes.php`
```php
$routes->group("api", function ($routes) {
    $routes->post("register", "Register::index");
    $routes->post("login", "Login::index");
    $routes->get("users", "User::index", ['filter' => 'authFilter']);
});
```

## References
1. [Document][https://temanngoding.com/tutorial-codeigniter-4-restful-api-jwt-authentication/]
2. [Youtube][https://youtube.com/watch?v=KJSJZC1A48k]
