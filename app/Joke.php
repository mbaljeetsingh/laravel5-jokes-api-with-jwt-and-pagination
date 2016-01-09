<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class Joke extends Model
{
    protected $fillable = ['body', 'user_id'];

    protected $hidden = ['created_at', 'updated_at'];

    public function user(){
        return $this->belongsTo('App\User');
        // return $this->belongsTo('App\User')->select(['id', 'name', 'email']);
    }

}
