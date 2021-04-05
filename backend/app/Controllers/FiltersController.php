<?php

namespace App\Controllers;

use App\Models\Filters;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

class FiltersController {
    private $logger;
    private $db;

    // Dependency injection via constructor
    public function __construct($depLogger, $depDB, $depValidator) {
        $this->logger = $depLogger;
        $this->db = $depDB;
        $this->table = $this->db->table('filters');
    }
    
    // GET /filters
    // Lists all filters items
    public function all(Request $request, Response $response) {
        $this->logger->addInfo('GET /filters');
        $data = $request->getParsedBody();
        if (!isset($data['parent'])){
            $filters = Filters::all();
        } else {
            $filters = Filters::where(['parent' => $data['parent'] ])->first();
        }
        return $response->withJson([
            'data' => $filters ? $filters : []
        ], 200);
    }
    
    // GET /filters/{id}
    // Return filters item data by ID
    public function find(Request $request, Response $response, $args) {
        $this->logger->addInfo('GET /filters/'.$args['id']);
        $filters = Filters::where(['id' => $args['id']])->first();
        return $response->withJson(['data' => $filters ? $filters : []], 200);
    }
    
    // POST /filters
    // Create filters item
    public function create(Request $request, Response $response) {
        // error
        return $response->withJson([
            'success' => false,
            'errors' => 'Not yet implemented.'
        ], 400);
    }
    
    // PUT /filters/{id}
    // Deletes a filters item
    public function update(Request $request, Response $response, $args) {
        // error
        return $response->withJson([
            'success' => false,
            'errors' => 'Not yet implemented.'
        ], 400);
    }
    
    // DELETE /filters/{id}
    // Delete a filters item
    public function delete(Request $request, Response $response, $args) {
        // error
        return $response->withJson([
            'success' => false,
            'errors' => 'Not yet implemented.'
        ], 400);
    }
}