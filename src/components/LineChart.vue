<template>
    <Line :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId" :dataset-id-key="datasetIdKey"
        :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width" :height="height" />
</template>

<script>
import { Line } from 'vue-chartjs'

export default {
    components: {
        Line
    },
    props: {
        chartId: {
            type: String,
            default: 'line'
        },
        backgroundColor: {
            type: String,
            default: () => getComputedStyle(document.documentElement)
                .getPropertyValue('--color-primary')
        },
        borderColor: {
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
                        fill: 'origin',
                        borderColor: this.borderColor,
                        backgroundColor: (ctx) => {
                            const canvas = ctx.chart.ctx;
                            const gradient = canvas.createLinearGradient(0, 0, 0, 500);

                            gradient.addColorStop(1, this.backgroundColor);
                            gradient.addColorStop(0, 'white');

                            return gradient;
                        },
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