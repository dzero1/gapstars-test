# The PHP Slim framework RESTful api.

How to setup:
1. Import the backend/gapstars.sql into a new database schema. For my local environment I named it as "gapstars"
2. Update the sql server connection details in "backend/app/Config/Config.php"
3. run following commands to install dependencies> cd backend> composer install

That's it. Now run the slim dev server using the following command.

```
> cd public
> php -S localhost:8888
```

or else you can map a vhost using apache/nginx and make sure to change the frontend api location.