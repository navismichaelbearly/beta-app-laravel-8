Tutorial

https://www.udemy.com/course/laravel-beginner-fundamentals/learn/lecture/23329190#overview


php artisan serve
npm run watch
npm run production

Create a new Laravel 8 project on Ubuntu 20.04:

1.	Install PHP: Laravel requires PHP 7.3 or higher. You can check your current version by running the command "php -v" in your terminal. If you need to install or upgrade PHP, you can use the following command:
Copy code
sudo apt update sudo apt install php 
2.	Install Composer: Composer is a dependency manager for PHP and is required for Laravel. You can install it using the following command:
Copy code
sudo apt install composer 
3.	Create a new project: Use the following command to create a new Laravel project in a directory of your choice:
Copy code
composer create-project --prefer-dist laravel/laravel project-name 
composer create-project laravel/laravel:^8.0 beta-app-laravel-8
4.	Set permissions: Set the permissions for your project's storage and bootstrap/cache directories with the following command:
Copy code
sudo chmod -R 775 project-name/storage project-name/bootstrap/cache 
5.	Create a new database and user in your MySQL/MariaDB server.
6.	Update the .env file with your database information: Open the .env file located in the root of your project and update the following fields with your database information:
Copy code
DB_CONNECTION=mysql DB_HOST=127.0.0.1 DB_PORT=3306 DB_DATABASE=your_db_name DB_USERNAME=your_db_user DB_PASSWORD=your_db_password 
7.	Run migrations: Run the command "php artisan migrate" to create the database tables for your project.
8.	Serve your application: Run the command "php artisan serve" to start the development server and access your application on "http://localhost:8000".
It's important to note that these are general steps to create a new Laravel 8 project on Ubuntu 20.04 and you may need to adjust them according to your specific setup and requirements.

Create a virtual host for a Laravel 8 application on Ubuntu 20.04 with Apache 2:

1.	Create a new virtual host file: Create a new virtual host file in the Apache configuration directory. The location of this directory is typically located in /etc/apache2/sites-available/.
Copy code
sudo nano /etc/apache2/sites-available/laravel8.conf 
2.	Define the virtual host: In the new virtual host file, you need to define the virtual host by specifying the server name, server admin, and document root. An example virtual host configuration for a Laravel 8 application would look like this:
Copy code
<VirtualHost *:80> ServerName example.com ServerAdmin webmaster@example.com DocumentRoot /var/www/html/laravel8/public <Directory /var/www/html/laravel8/public> AllowOverride All </Directory> ErrorLog ${APACHE_LOG_DIR}/error.log CustomLog ${APACHE_LOG_DIR}/access.log combined </VirtualHost> 
Make sure to replace the server name, server admin and document root with the appropriate values for your application.
3.	Enable the virtual host: Once you have defined the virtual host, you need to enable it. You can do this by running the following command:
Copy code
sudo a2ensite laravel8.conf 
4.	Disable the default virtual host: Run this command to disable the default virtual host which is enabled by default.
Copy code
sudo a2dissite 000-default.conf 
5.	Update the host file: You also need to update your host file to point the domain name to the IP address of your server. The host file is located in /etc/hosts in most Linux distributions.
Copy code
sudo nano /etc/hosts 
6.	Restart Apache: After enabling the virtual host, you need to restart the Apache web server for the changes to take effect. You can do this by running the following command:
Copy code
sudo systemctl restart apache2 
7.	Test the virtual host: Once you have completed the above steps, you should be able to access your Laravel 8 application by visiting the domain name that you specified in the virtual host configuration.
It's important to note that these are general steps to create a virtual host for a Laravel 8 application on Ubuntu 20.04 with Apache 2 and you may need to adjust them according to your specific setup and requirements.

Adding laravel with react js

composer requires laravel/ui
php artisan ui react
npm install

https://www.sjinnovation.com/using-react-in-a-laravel-application
