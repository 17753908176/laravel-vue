<template>
    <div>
        1
       <ul class="list-group">
            <li class="list-group-item"
                v-for="item in user">
                    {{ item.account }}
            </li>
        </ul>
    </div>
</template>

<script>
    import { mapState, mapActions } from 'vuex';
    export default {
        name: "App",
        // 映射 vuex 上面的属性
        computed: mapState({
            user: state => state.user.user
        }),
        created() {
            this.getUser();
            //console.log(this.$store.state);
        },
       methods: {
            // 映射 vuex 对象上的方法
            ...mapActions([
                'getUser'
            ])
        }
    }
</script>

<style scoped>

</style>