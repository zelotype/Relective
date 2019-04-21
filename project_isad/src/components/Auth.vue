<template>
  <div id="auth_page">
    <bg id="bg_test"></bg>
    <b-container style="text-align:center;width:100wh;height:100vh;padding:0;display:flex;align-items: center;">
      <b-container>
        <b-row>
          <b-col cols="12">
            <img src="../assets/logo.gif" width="100%" style="margin:auto;max-width:700px">
          </b-col>
          <b-col cols="12">
            <h2 style="font-size:20px">Gathering Review And Details</h2>
            <h1 style="font-size:20px">about Selective in KMITL</h1>
          </b-col>
          <b-col cols="12">
            <div id="firebaseui-auth-container" style="width:100%"></div>
          </b-col>
          <b-col cols="12" style="margin-bottom:15px">
            <h7>------ Not a Member in KMITL ------</h7>
          </b-col>
          <b-col cols="12">
            <b-button style="width:80%;max-width: 220px;background-color:#FF9000" >SignIn with Guest</b-button>
          </b-col>
        </b-row>
      </b-container>
    </b-container>
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
<style scoped>
  #auth_page {
    font-family: 'Montserrat', sans-serif;
    color: white;
  }

  #bg_test {
    filter: blur(5px);
  }
</style>