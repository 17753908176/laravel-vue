import api from '../api';
export default{
    state: {
        user: []
    },
    mutations: {
        // 注意，这里可以设置 state 属性，但是不能异步调用，异步操作写到 actions 中
        SETUSER(state, lists) {
            state.user = lists;
        }
    },
    actions: {
        getUser({commit}) {
            api.getUser().then(function(res) {
                //console.log(res);
                commit('SETUSER', res.data);
            });
        }
    }
}