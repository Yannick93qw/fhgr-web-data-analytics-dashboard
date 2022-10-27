import { createApp } from 'vue'
import App from './App.vue'
import Qui from '@qvant/qui-max';
import '@qvant/qui-max/styles';
import './assets/main.css';
import { Chart as ChartJS, Title, Tooltip, Legend, LineElement, BarElement, CategoryScale, LinearScale, PointElement, Filler } from 'chart.js'

ChartJS.register(Title, Tooltip, Legend, BarElement, LineElement, CategoryScale, LinearScale, PointElement, Filler)



const app = createApp(App);
app.use(Qui);
app.mount('#app')
