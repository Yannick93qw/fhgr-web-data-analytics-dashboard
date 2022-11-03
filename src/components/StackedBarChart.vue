<template>
    <Bar :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId" :dataset-id-key="datasetIdKey"
        :plugins="plugins" :css-classes="cssClasses" :styles="styles" :width="width" :height="height" />
</template>

<style>
#bar-chart {
    margin: 0 auto;
}
</style>

<script>
import { Bar } from 'vue-chartjs'
import utils from '@/util';

export default {
    components: {
        Bar
    },
    props: {
        chartId: {
            type: String,
            default: 'bar-chart'
        },
        backgroundColorOne: {
            type: String,
            default: () => getComputedStyle(document.documentElement)
                .getPropertyValue('--color-primary')
        },
        backgroundColorTwo: {
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
        dataLabelOne: {
            type: String,
            default: ''
        },
        dataLabelTwo: {
            type: String,
            default: ''
        }
    },
    data() {
        return {
            chartData: {
                labels: utils.months(12),
                datasets: [
                    {
                        label: this.dataLabelOne,
                        backgroundColor: this.backgroundColorOne,
                        data: utils.randomNumbers(12, 50)
                    },
                    {
                        label: this.dataLabelTwo,
                        backgroundColor: this.backgroundColorTwo,
                        data: utils.randomNumbers(12, 50)
                    },
                ]
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
                        stacked: true,
                        ticks: {
                            color: 'white',
                        }
                    },
                    y: {
                        display: true,
                        stacked: true,
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