<template>
    <Bar :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId" :dataset-id-key="datasetIdKey"
        :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width" :height="height" />
</template>

<script>
import { Bar } from 'vue-chartjs'

export default {
    components: {
        Bar
    },
    props: {
        chartId: {
            type: String,
            default: 'bar-chart'
        },
        backgroundColor: {
            type: String,
            default: () => getComputedStyle(document.documentElement)
                .getPropertyValue('--color-primary')
        },
        datasetIdKey: {
            type: String,
            default: 'label'
        },
        width: {
            type: Number,
            default: 400
        },
        height: {
            type: Number,
            default: 400
        },
        cssClasses: {
            default: '',
            type: String
        },
        styles: {
            type: Object,
            default: () => { }
        },
        plugins: {
            type: Object,
            default: () => { }
        },
        dataLabel: {
            type: String,
            default: ''
        }
    },
    data() {
        return {
            chartData: {
                labels: ['January', 'February', 'March'],
                datasets: [
                    {
                        label: this.dataLabel,
                        backgroundColor: this.backgroundColor,
                        data: [40, 20, 12]
                    }]
            },
            chartOptions: {
                responsive: true,
                scales: {
                    x: {
                        display: false
                    },
                    y: {
                        display: false
                    }
                }
            }
        }
    }
};
</script>