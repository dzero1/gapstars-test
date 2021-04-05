<?php
namespace App\Routes;

class Filters {
    function __construct($app) {
        $app->get('/filters', '\App\Controllers\FiltersController:all');
        $app->post('/filters', '\App\Controllers\FiltersController:all');
        $app->get('/filters/{id}', '\App\Controllers\FiltersController:find');
    }
}