<template>
  <div>
    <bg_1stPage></bg_1stPage>
    <!-- <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>-->
    <div class="container-fluid" style="height: 100vh;padding: 0;margin-left: 0px;margin-right: 0px;">
      <div class="row" style="width:100%;height:100%;margin: 0">
        <div class="col-lg-8 col-12" id="white_space"></div>
        <div class="col-lg-4 col-12" id="white_space2">
          <div class="form" style="height:100%;width:100%;margin:auto;padding-left:50px;padding-right:50px;padding-top:10px">
            <img src="http://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=http%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2015%2F10%2Fnexus2cee_Search-Thumb-150x150.png&w=150&h=150&zc=3"
              style="margin:auto;margin-bottom:20px">
            <a class="login-with-guest" v-on:click="callSomeFunc2()">
              <span class="icon fa fa-address-book"></span>
              Login with Guest
            </a>
            <a class="login-with-google" id="google-signin-button">
              <span class="icon fa fa-google-plus"></span>
              Login with google
            </a>
            <a href="#" v-on:click="signOut()">Sign out</a>
          </div>
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
      bg_1stPage
    },
    mounted() {
      gapi.signin2.render("google-signin-button", {
        onsuccess: this.onSignIn
      });
    },
    methods: {
      callSomeFunc() {
        this.$router.push(
          '/InformationForm'
        );
      },
      callSomeFunc2() {
        this.$router.push(
          '/MainPage'
        );
      },
      onSignIn(user) {
        const profile = user.getBasicProfile();
        this.callSomeFunc();
      },
      signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
          console.log("User signed out.");
        });
      },
    },
  };
</script>
<style scoped>
  * {
    box-sizing: border-box;
  }

  body {
    background-color: #eeeeee;
  }

  img {
    display: block;
    width: 80px;
    margin: 30px auto;
    box-shadow: 0 5px 10px -7px #333333;
    border-radius: 50%;
  }

  .login-with-guest,
  .login-with-google {
    width: 100%;
    height: 40px;
    display: block;
    margin: 15px 0;
    color: #fff;
    text-align: center;
    line-height: 40px;
    font-size: 14px;
    opacity: 0.95;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
  }

  .login-with-guest:hover,
  .login-with-google:hover {
    opacity: 1;
  }

  .login-with-guest {
    background: #696969;
  }

  .login-with-google {
    background: #db4a37;
  }

  .login-with-guest .icon,
  .login-with-google .icon {
    float: left;
    font-size: 21px;
    width: 50px;
    height: 26px;
    margin: 7px;
    padding: 2px;
    text-align: center;
    border-right: 1px solid #fff;
  }

  #white_space {
    padding: 0;
    display: block;
    height: 100%;
    width: 100%;
  }

  #white_space2 {
    padding: 0;
    height: 100%;
    background-color: white;
  }

  a:hover {
    text-decoration: underline;
  }

  @media (max-width: 1024px) {

    #white_space,
    #white_space2 {
      height: 100%;
    }
  }

  @media (max-width: 1023px) {

    #white_space,
    #white_space2 {
      height: 50%;
    }
  }
</style>