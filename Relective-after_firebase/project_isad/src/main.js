
import '@babel/polyfill'
import Vue from 'vue'
import './plugins/bootstrap-vue'
import App from './App.vue'
import router from './router'
import store from './store'
import BootstrapVue from 'bootstrap-vue'
import config from './config'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import firebase from 'firebase'

Vue.use(BootstrapVue)

Vue.config.productionTip = false

router.beforeEach((to,from,next)=>{
  if(!to.meta.protected){
    next()
  }
  else{
    let sub = firebase.auth().onAuthStateChanged((user)=>{
      if(user)next()
      else router.push('/auth')
    })
    sub()
  }

})
new Vue({
  router,
  created() {
      firebase.initializeApp(config)
  },
  render: h => h(App)
}).$mount('#app')