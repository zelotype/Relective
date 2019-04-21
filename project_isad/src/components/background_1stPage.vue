<template>
  <div class="home">
    <div style="background-color:black;opacity:0.3;width: 100%;height: 100%;position: absolute;"></div>
    <!-- <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>-->
  </div>
</template>
<script>
export default {
  name: 'bg_1stPage',
  props: {
    msg: String
  }
}
</script>
<style scoped>
.home {
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
</style>