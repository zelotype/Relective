<template>
  <div>
    <bg></bg>
    <h2>Auth</h2>
    <div id="firebase-auth-container"></div>
  </div>
</template>
<script>
import firebase from "firebase";
import firebaseui from "firebaseui";
import { config } from "../firebaseConfig.js";
import bg from "./background_1stPage";
import { Store } from "vuex";
export default {
  components: {
    bg
  },
  name: "auth",
  mounted() {
    var uiConfig = {
      signInSuccessUrl: "/success",
      signInOptions: [firebase.auth.GoogleAuthProvider.PROVIDER_ID],
      callbacks: {
        signInSuccessWithAuthResult: function(authResult, redirectUrl) {
            console.log("Success")
          // User successfully signed in.
          // Return type determines whether we continue the redirect automatically
          // or whether we leave that to developer to handle.
          return true;
        },
        uiShown: function() {
          // The widget is rendered.
          // Hide the loader.
        }
      }
    };
    var ui = new firebaseui.auth.AuthUI(firebase.auth());
    ui.start("#firebase-auth-container", uiConfig);
  }
};
</script>

