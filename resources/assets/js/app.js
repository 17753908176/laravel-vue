
require('./bootstrap');

window.Vue = require('vue');
import Layout from './page/Layout'
import VueRouter from 'vue-router';
Vue.use(VueRouter);
import store from './store/'; // vuex 数据存储所需对象
import routes from './route';    // 路由配置文件
// 实例化路由
const router = new VueRouter({
    routes
})

var vm = new Vue({
    el:"#app",
    store,
    router,
    components:{Layout},
    template:'<Layout />'
});
