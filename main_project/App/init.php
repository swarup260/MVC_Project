<?php

require_once('../App/core/App.php');
require_once('../App/core/controller.php');


/* DataBase info */
// DEFINE('DB_HOST','localhost');
// DEFINE('DB_USERNAME', 'root');
// DEFINE('DB_PSWD', '123456');
// DEFINE('DB_NAME','techsevin_management_system');
/* apache */

/* ++all u_ must be replaced by emp_ */
DEFINE('DB_HOST','127.0.0.1');
DEFINE('DB_USERNAME', 'root');
DEFINE('DB_PSWD', '');
DEFINE('DB_NAME','login');

$obj = new App;