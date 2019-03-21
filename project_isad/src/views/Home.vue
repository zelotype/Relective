<template>
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
          <a class="btn blue">Login With Guest</a>
          <!-- <a class="login-with-guest" v-on:click="callSomeFunc2()">
            <span class="icon fa fa-address-book"></span>
            Login with Guest
          </a> -->

        </div>
        <div class="col-12" id="btn_login">
          <a class="btn blue g-signin2" id="my-signin2" data-onsuccess="onSignIn"></a>
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
      bg_1stPage
    },
    mounted() {
      gapi.signin2.render("google-signin-button", {
        onsuccess: this.onSignIn
      });
    },
    methods: {
      callSomeFunc() {
        this.$router.push("/InformationForm");
      },
      callSomeFunc2() {
        this.$router.push("/MainPage");
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
      onSuccess(googleUser) {
        console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
      },
      onFailure(error) {
        console.log(error);
      },
      renderButton() {
        gapi.signin2.render('my-signin2', {
          'scope': 'profile email',
          'width': 240,
          'height': 50,
          'longtitle': true,
          'theme': 'dark',
          'onsuccess': onSuccess,
          'onfailure': onFailure
        });
      }
    }
  };
</script>
<style scoped>
  * {
    box-sizing: border-box;
  }

  body {
    background-color: red;
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
    text-align: center;
    width: 20%;
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

  a:hover {
    text-decoration: underline;
  }

  .btn {
    width: 90%;
    border-radius: 5px;
    padding: 15px 25px;
    font-size: 22px;
    text-decoration: none;
    color: #fff;
    position: relative;
    display: inline-block;
  }

  .btn:active {
    transform: translate(0px, 5px);
    -webkit-transform: translate(0px, 5px);
    box-shadow: 0px 1px 0px 0px;
  }

  .blue {
    background-color: #55acee;
    box-shadow: 0px 5px 0px 0px #3C93D5;
  }

  .blue:hover {
    background-color: #6FC6FF;
  }

  #btn_login {
    padding: 5px;
    text-align: center;
  }
  .g-signin2{
    width: 90%;
  }


  /* @media (max-width: 1024px) {

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
  } */
</style>