/* eslint-disable */
import Vue from 'vue'
import Vuex from 'vuex'
import firebase from 'firebase'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    users: {}
  },
  mutations: {
    set_users(state,user){
      return state.users = user
    }
  },
  actions: {

  },
  getters: {
    users: state =>{
      return state.users
    }

  }
})