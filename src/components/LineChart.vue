<template>
    <Line :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId" :dataset-id-key="datasetIdKey"
        :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width" :height="height" />
</template>

<style>
#line {
    margin: 0 auto;
}
</style>

<script>
import { Line } from 'vue-chartjs'
import utils from '@/util';

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
            default: () => 'white'
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
            default: 250
        },
        height: {
            type: Number,
            default: 250
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
        },
    },
    data() {
        return {
            chartData: {
                labels: utils.months(12),
                datasets: [
                    {
                        label: this.dataLabel,
                        borderColor: this.borderColor,
                        pointBackgroundColor: this.backgroundColor,
                        data: utils.randomNumbers(12, 50),
                    }]
            },
            chartOptions: {
                responsive: false,
                plugins: {  // 'legend' now within object 'plugins {}'
                    legend: {
                        labels: {
                            color: "white"
                        }
                    }
                },
                scales: {
                    x: {
                        display: true,
                        ticks: {
                            color: 'white',
                        }
                    },
                    y: {
                        display: true,
                        ticks: {
                            color: 'white',
                        }
                    }
                }
            }
        }
    }
};
</script>