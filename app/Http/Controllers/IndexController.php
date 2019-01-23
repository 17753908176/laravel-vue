<?php
/**
 * Created by PhpStorm.
 * User: Weitao.Ma
 * Date: 2019/1/23
 * Time: 10:25
 */
namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Routing\Controller;
class IndexController extends Controller
{
    public function __construct()
    {
        $this->objUser = new User();
    }

    /**
     * @function test 测试
     * @return int
     * @date 2019/1/23
     * @created Weitao.Ma
     */
        public function test(){
            return 1;
        }
     public function getUserList(){
        return $this->objUser->getInfo();
     }
}