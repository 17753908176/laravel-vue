<?php
/**
 * Created by PhpStorm.
 * User: Weitao.Ma
 * Date: 2019/1/23
 * Time: 10:42
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class User extends Model
{
    protected $table = 'user';
    protected $guarded = [];
    // 测试类
    public function  getInfo(){
        $users = self::get();
        return $users;
    }
}