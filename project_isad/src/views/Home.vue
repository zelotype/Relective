<template>
  <div class="background-image">
  <div class="black-bg"></div>
  <!-- <div id="Logo"></div> -->
  <div id="Login"></div>
  </div>  
</template>

<script>
export default {};
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
