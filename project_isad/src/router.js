/* eslint-disable */
import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import Auth from './components/Auth.vue';
import AuthSuccess from './components/AuthSuccess.vue';
import firebase from 'firebase'

Vue.use(Router)

const router =  new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/InformationForm',
      name: 'InformationForm',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {
      path: '/MainPage',
      name: 'MainPage',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/MainPage.vue')
    },    
    {
      path: '/auth',
      name: 'auth',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './components/Auth.vue')
    },    {
      path: '/success',
      name: 'success',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './components/AuthSuccess.vue')
    },
    // {
    //   path:'/auth',components:Auth,name:'auth'
    // },
    // {
    //   path:'/success',component:AuthSuccess,name:'success'
    // }
  ]
})

router.beforeEach((to, from, next) => {
  const currentUser = firebase.auth().currentUser;
  const requireAuth = to.matched.some(record => record.meta.requireAuth);
  if(requireAuth && !currentUser) next('login');
  else if(!requireAuth&&currentUser) next('success');
  else next();
})

export default router;