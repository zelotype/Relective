<template>
<<<<<<< HEAD
  <div class="background-image">
  <div class="black-bg"></div>
  <!-- <div id="Logo"></div> -->
  <div id="Login"></div>
  </div>  
</template>

<script>
export default {};
=======
  <div>
    <bg_1stPage></bg_1stPage>
    <!-- <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>-->
    <div style="padding-bottom:10%"></div>
    <div class="container-fluid"
      style="height: 100%;width:40%;text-align:center;background-color: #F5F5F5;border-radius:15px;box-shadow: 5px 5px 5px #404040;padding-top:20px;padding-bottom:20px">
      <div class="row" style="width:100%;height:100%;margin: 0;">
        <div class="col-12">
          <img
            src="http://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=http%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2015%2F10%2Fnexus2cee_Search-Thumb-150x150.png&w=200&h=200&zc=3"
            style="margin:auto;margin-bottom:20px">
        </div>
        <div class="col-12" id="btn_login">
          <button type="button" class="google-button" v-on:click="callSomeFunc2">
            <span class="google-button__text">Sign in with Guest</span>
          </button>
        </div>
        <div class="col-12" id="btn_login">
          <button type="button" class="google-button" id="google-signin-button" v-on:click="callSomeFunc">
            <span class="google-button__icon">
              <svg viewBox="0 0 366 372" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M125.9 10.2c40.2-13.9 85.3-13.6 125.3 1.1 22.2 8.2 42.5 21 59.9 37.1-5.8 6.3-12.1 12.2-18.1 18.3l-34.2 34.2c-11.3-10.8-25.1-19-40.1-23.6-17.6-5.3-36.6-6.1-54.6-2.2-21 4.5-40.5 15.5-55.6 30.9-12.2 12.3-21.4 27.5-27 43.9-20.3-15.8-40.6-31.5-61-47.3 21.5-43 60.1-76.9 105.4-92.4z"
                  id="Shape" fill="#EA4335" />
                <path
                  d="M20.6 102.4c20.3 15.8 40.6 31.5 61 47.3-8 23.3-8 49.2 0 72.4-20.3 15.8-40.6 31.6-60.9 47.3C1.9 232.7-3.8 189.6 4.4 149.2c3.3-16.2 8.7-32 16.2-46.8z"
                  id="Shape" fill="#FBBC05" />
                <path
                  d="M361.7 151.1c5.8 32.7 4.5 66.8-4.7 98.8-8.5 29.3-24.6 56.5-47.1 77.2l-59.1-45.9c19.5-13.1 33.3-34.3 37.2-57.5H186.6c.1-24.2.1-48.4.1-72.6h175z"
                  id="Shape" fill="#4285F4" />
                <path
                  d="M81.4 222.2c7.8 22.9 22.8 43.2 42.6 57.1 12.4 8.7 26.6 14.9 41.4 17.9 14.6 3 29.7 2.6 44.4.1 14.6-2.6 28.7-7.9 41-16.2l59.1 45.9c-21.3 19.7-48 33.1-76.2 39.6-31.2 7.1-64.2 7.3-95.2-1-24.6-6.5-47.7-18.2-67.6-34.1-20.9-16.6-38.3-38-50.4-62 20.3-15.7 40.6-31.5 60.9-47.3z"
                  fill="#34A853" /></svg>
            </span>
            <span class="google-button__text">Sign in with Google</span>
          </button>
        </div>
        <div class="col-12" id="btn_login">
          <a href="#" v-on:click="signOut()">Sign out</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  // @ is an alias to /src
  // import HelloWorld from '@/components/HelloWorld.vue'
  import bg_1stPage from "../components/background_1stPage";

  export default {
    name: "home",
    components: {
      bg_1stPage,
    },
    data() {
      return {
        googleSignInParams: {
          client_id: '446125241277-rl36d6pqtnsm6h4a6i89c2d108ri5b30.apps.googleusercontent.com'
        }
      }
    },
    methods: {
      onSignIn(user) {
        const profile = user.getBasicProfile()
      },
      onSignInSuccess(googleUser) {
        // `googleUser` is the GoogleUser object that represents the just-signed-in user.
        // See https://developers.google.com/identity/sign-in/web/reference#users
        const profile = googleUser.getBasicProfile() // etc etc
        this.callSomeFunc()
      },
      onSignInError(error) {
        // `error` contains any error occurred.
        console.log('OH NOES', error)
      },
      callSomeFunc() {
        this.$router.push("/InformationForm");
      },
      callSomeFunc2() {
        this.$router.push("/MainPage");
      },
      mounted: function login_google(){
        console.log("Kuyyyy")
        gapi.signin2.render('#google-signin-button', {
          'scope': 'profile email',
          'onsuccess': this.onSignInSuccess,
          'onfailure': this.onSignInError
        })
      },
    }

  };
>>>>>>> origin
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#Login {
  margin-top: 20%;
  text-align: -webkit-center;
}
.background-image{
  background-image: url("../assets/banner.jpg");
  background-attachment: fixed;
  background-position: center center;
  background-size: cover;
  background-color: transparent;
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: -19999;
}
.black-bg{
  background-color:black;
  opacity:0.3;
  width: 100%;
  height: 100%;
  position: absolute;
}
</style>
