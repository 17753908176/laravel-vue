import axios from 'axios'
export default {
    // 首页推荐接口
    getUser: function (params) {
        return axios.get('api/getUserList')
    },
}