/* eslint-disable */
import '@babel/polyfill'
import Vue from 'vue'
import './plugins/bootstrap-vue'
import App from './App.vue'
import router from './router'
import store from './store'
import BootstrapVue from 'bootstrap-vue'
import firebase from 'firebase'
import firebaseui from 'firebaseui'
import {config} from './firebaseConfig'
firebase.initializeApp(config);

Vue.use(VueRouter)

Vue.use(BootstrapVue)

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import VueRouter from 'vue-router';

Vue.config.productionTip = false

new Vue({
  el:"#app",
  router,
  create(){
    firebase.initializeApp(config);
    firebase.auth().onAuthStateChanged(function(user) {
      if(user){
        this.router.push('/success')
      }else{
        this.router.push('/auth')
      }
    });
  },
  store,
  render: h => h(App)
})
