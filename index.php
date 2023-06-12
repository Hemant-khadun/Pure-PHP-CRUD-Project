<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'Controller/ShopManagementController.php' ;
/**
 * This is the Front Controller.
 * The Front Controller decides which action to run.
 *
 * This particular Front Controller defines a route table, which says
 * which defines which URLs map to which actions.
 *
 * @author Damien Walsh <me@damow.net>
 */

// Define the routes table
$routes = array(
    '/\/createShop\/?/' => array('ShopManagementController', 'newShop'),
    '/\/updateShop\/?/' => array('ShopManagementController', 'updateShop'),
    '/\/deleteShop\/?/' => array('ShopManagementController', 'deleteShop'),
    '/\/searchByName\/?/' => array('ShopManagementController', 'getShopsByName'),
    '/\/searchByType\/?/' => array('ShopManagementController', 'getShopsByType'),
    '/\/hemwuntkhadun\/?/' => array('ShopManagementController', 'index'),
);

// Decide which route to run
foreach ($routes as $url => $action) {
    
    // See if the route matches the current request
    $matches = preg_match($url, $_SERVER['REQUEST_URI'], $params);
    // If it matches...
    if ($matches > 0) {
        // Run this action, passing the parameters.
        $controller = new $action[0];
        $controller->{$action[1]}($params);

        break;
    }
}
