/* eslint-disable */
<template>
  <div class="about">
    <bg_1stPage></bg_1stPage>
    <navbar></navbar>
    <b-container-fluid>
      <b-row-2>
        <b-col sm="3">
          <side_navbar></side_navbar>
        </b-col>
      </b-row-2>
      <b-row>
        <b-col sm="9" id="right">
          <p v-for="l in 12">
            <b-card bg-variant="warning" text-variant="white" header="06016217 Database System Concepts" class="text-left">
              <b-card-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</b-card-text>
            </b-card>
          </p>
        </b-col>
      </b-row>
    </b-container-fluid>
  </div>
</template>
<script>
  import bg_1stPage from "../components/background_1stPage";
  import navbar from '../components/navbar.vue'
  import side_navbar from '../components/side_nav.vue'
  export default {
    name: "MainPage",
    components: {
      bg_1stPage,
      navbar,
      side_navbar
    },

  }
</script>
<style scoped>
  body,
  html {
    overflow: hidden;
  }

  @media (min-width: 768px) {
    #right {
      position: absolute;
      top: 0;
      bottom: 0;
      right: 0;
      overflow-y: scroll;
    }
  }


  #right {
    padding: 5%;
    text-align: center;
    height: 100%;
    background-color: transparent;
    text-align: center;
  }
</style>