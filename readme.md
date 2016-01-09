## Basic Laravel API with JWT Auth

Blog Post URL: http://goo.gl/Ej29kb

Steps to run:

1. Clone the repo
2. Change the db settings in .env file
3. run, composer install command by switching to the project dir
4. run, php artisan migrate --seed
5. php artisan serve

For the list of routes, run, 
php artisan route:list

You can also import the db from the #db directory if required.

You can check the created users by going into the users table (the password for each user is "secret_pass"). It will be used when generating token.


Thanks.