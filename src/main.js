import { createApp } from 'vue'
import App from './App.vue'
import Qui from '@qvant/qui-max';
import '@qvant/qui-max/styles';
import './assets/main.css';


const app = createApp(App);
app.use(Qui);
app.mount('#app')
