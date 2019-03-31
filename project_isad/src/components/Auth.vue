<template>
    <div>
        <bg></bg>
        <h2>Auth</h2>
        <div id="firebase-auth-container"></div>
    </div>
</template>
<script>
import firebase from 'firebase'
import firebaseui from 'firebaseui'
import {config} from '../firebaseConfig.js'
import bg from './background_1stPage'
export default {
    components:{
        bg,
    },
    name: 'auth',
    mounted() {
        var uiConfig = {
            signInSuccessUrl : '/success',
            signInOptions: [firebase.auth.GoogleAuthProvider.PROVIDER_ID
            
            ],
        };
        var ui = new firebaseui.auth.AuthUI(firebase.auth());
        ui.start('#firebase-auth-container',uiConfig);
    },
}
</script>

