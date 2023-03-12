import { initializeApp } from "firebase/app";
import { getMessaging } from "firebase/messaging/sw";
importScripts('https://www.gstatic.com/firebasejs/8.2.5/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.2.5/firebase-messaging.js');
// Initialize the Firebase app in the service worker by passing in
// your app's Firebase config object.
// https://firebase.google.com/docs/web/setup#config-object
const firebaseApp = initializeApp({
  apiKey: 'AIzaSyCJbXUqj2P9mEvNCgBNrOKR2ETuu2xu39M',
  authDomain: 'mapitup-892f2.firebaseapp.com',
  databaseURL: 'https://mapitup-892f2.firebaseio.com',
  projectId: 'mapitup-892f2',
  storageBucket: 'project-id.appspot.com',
  messagingSenderId: '948590338170',
  appId: '1:948590338170:web:21e7e1fa01d6ccfa739bc3',
  measurementId: 'G-561CETE4VN',
});

// Retrieve an instance of Firebase Messaging so that it can handle background
// messages.
const messaging = getMessaging(firebaseApp);