<?php
namespace App\Models;
 
use Illuminate\Database\Eloquent\Model;

class Filters extends Model {
    protected $table = 'filters';
    protected $fillable = ['parent', 'count', 'name']; // allow mass assignment
}