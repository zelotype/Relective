<template>
    <div>
        <bg></bg>
        <h1>Success</h1>
        <button @click="logOut">logOut</button>
        <p>{{name}}</p>
    </div>
</template>
<script>
    import firebase from 'firebase'
    import bg from './background_1stPage'

    export default {
        components: {
            bg,
        },
        data() {
            return {
                name: '',
                user: {}
            }
        },
        methods: {
            logOut() {
                firebase.auth().signOut();
            }
        },
        created(user) {
            console.log(firebase.auth().currentUser)
            if (this.user) {
                this.name = this.user.name;
            }
        }
    }
</script>