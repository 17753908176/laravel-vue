import Vue from 'vue';
import Vuex from 'vuex';
import user from './user';
Vue.use(Vuex);
export default new Vuex.Store({
    // 可以设置多个模块
    modules: {
        user
    }
});