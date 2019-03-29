<template>
  <div id="app">
    <Home/>
    <!-- <Homepage/> -->
  </div>
</template>

<script>

import Home from '@/views/Home.vue'
// import Homepage from '@/components/Homepage.vue'

export default {
  name: 'app',
  components: {
    Home, 
    // Homepage
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /* margin-top: 60px; */
}
</style>
