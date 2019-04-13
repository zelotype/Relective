<template>
  <div>
    <bg></bg>
    <div id="firebaseui-auth-container" style="width:100%"></div>
  </div>
</template>
<script>
  import firebase from "firebase";
  import bg from "./background_1stPage.vue";
  import firebaseui from "firebaseui"
  import "../../node_modules/firebaseui/dist/firebaseui.css"
  import {
    config
  } from "../config.js"

  export default {
    mounted() {
      let self = this
      let uiConfig = {
        signInOptions: [{
          provider: firebase.auth.GoogleAuthProvider.PROVIDER_ID
        }],
        callbacks: {
          signInSuccessWithAuthResult() {
            localStorage.setItem('authenticated', true)
          }
        }
      }
      var ui = new firebaseui.auth.AuthUI(firebase.auth())
      ui.start("#firebaseui-auth-container", uiConfig)
    },
    components: {
      bg
    },
    name: "auth",
    methods: {
      googleLogin() {
        var provider = new firebase.auth.GoogleAuthProvider();
        provider.addScope("profile");
        provider.addScope("email");
        provider.providerId('kmitl.ac.th')
        provider.setCustomParameters({
          'hd': 'kmitl.ac.th'
        });
        provider.
        firebase
          .auth()
          .signInWithPopup(provider)
          .then(function (result) {
            // This gives you a Google Access Token.
            var token = result.credential.accessToken;
            // The signed-in user info.
            var user = result.user;
            console.log(user.name)
          });
      }
    }
  };
</script>