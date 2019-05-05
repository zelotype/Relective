/* eslint-disable */
import vue from 'vue';
import firebase from 'firebase';
export const config = {
    apiKey: "AIzaSyDhLFWHhPLw6yKJxV4rreXRfIi0-cU1Ev8",
    authDomain: "ralective.firebaseapp.com",
    databaseURL: "https://ralective.firebaseio.com",
    projectId: "ralective",
    storageBucket: "ralective.appspot.com",
    messagingSenderId: "652504816397"
  };
  const database = firebase.initializeApp(config);
  export default database