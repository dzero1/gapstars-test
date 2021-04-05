<?php
namespace App;

class App {
    private $app;
    
    public function __construct() {
        // initalize Slim App
        $app = new \Slim\App(\App\Config\Config::slim());
        $this->app = $app;
        // initalize dependencies
        $this->dependencies();
        // initalize middlewares
        $this->middleware();
        // initalize routes
        $this->routes();

        // CORS
        $app->options('/{routes:.+}', function ($request, $response, $args) {
            return $response;
        });
        // Catch-all route to serve a 404 Not Found page if none of the routes match
        // NOTE: make sure this route is defined last
        $app->map(['GET', 'POST', 'PUT', 'DELETE', 'PATCH'], '/{routes:.+}', function($req, $res) {
            $handler = $this->notFoundHandler; // handle using the default Slim page not found handler
            return $handler($req, $res);
        });

        $app->add(function ($req, $res, $next) {
            $response = $next($req, $res);
            return $response
                    ->withHeader('Access-Control-Allow-Origin', '*')
                    ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
                    ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
        });
    }
    
    public function get() {
        return $this->app;
    }
    
    private function dependencies() {
        return new \App\Dependencies($this->app);
    }
    
    private function middleware() {
        return new \App\Middleware($this->app);
    }
    
    private function routes() {
        return [
            new \App\Routes\Filters($this->app),
            new \App\Routes\User($this->app)
        ];
    }
}