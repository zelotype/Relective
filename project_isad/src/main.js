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
import {
  config
} from './firebaseConfig'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import VueRouter from 'vue-router';
firebase.initializeApp(config);
Vue.use(VueRouter)
Vue.use(BootstrapVue)
let app = ''
Vue.config.productionTip = false

new Vue({
  el: "#app",
  router,
  create() {
    firebase.auth().onAuthStateChanged((user) => {
      user = firebase.auth().currentUser
      store.commit('set_users', user);
      if (user) {
        this.store.commit('set_users', user)
        // this.router.push('/success')
      } else {
        this.router.push('/auth')
      }
    });
  },
  store,
  render: h => h(App)
})

// firebase.auth().onAuthStateChanged(()=>{
//   if(!app){
//     app = new Vue({
//       router,
//       render: h => h(app)
//     }).$mount('#app')
//   }
// })