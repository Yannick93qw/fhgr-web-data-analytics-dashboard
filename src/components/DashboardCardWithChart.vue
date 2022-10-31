<template>
    <div class="card animate__animated animate__bounceIn">
        <h2>{{ title }}</h2>
        <h3>{{ subTitle }}</h3>

        <div class="icon-row" v-if="iconText">
            <h3 class="icon-text" :style="iconTextStyle">{{ iconText }}</h3>
            <span :class="icon" class="icon" :style="iconStyle"></span>
        </div>
        <h1 v-if="text" class="text">{{ text }}</h1>
        <h3 v-if="subText" class="sub-text">{{ subText }}</h3>
        <BarChart v-if="chartType == 'bar'" :dataLabel="dataLabel" />
        <LineChart v-if="chartType == 'line'" :dataLabel="dataLabel" />
    </div>
</template>

<style>
.card {
    width: auto;
    max-height: 550px;
    box-sizing: border-box;
    border-radius: 10px;
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    font-weight: bold;
    box-shadow: -5px -5px 20px var(--card-shadow-start-color), 5px 5px 20px var(--card-shadow-stop-color);
    padding: 1.6rem 2.4rem;
    margin: 0.4rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    align-content: center;
}

.card:hover {
    box-shadow: -2px -2px 5px var(--card-shadow-start-color), 2px 2px 5px var(--card-shadow-stop-color);
}

h2 {
    color: var(--text-color);
    text-transform: uppercase;
    text-align: center;
}

h3,
span {
    color: var(--text-color);
    text-align: center;
}

.icon-row {
    display: flex;
    flex-direction: row;
    align-items: center;
}

.icon-text {
    padding: 0 0.2rem;
    color: var(--color-primary);
}

.icon {
    font-size: 1.5rem;
}

.text {
    color: var(--color-primary);
    font-size: 4rem;
    line-height: 4rem;
    text-align: center;
}

.sub-text {
    color: var(--text-color);
    font-size: 2rem;
    line-height: 2rem;
    text-align: center;
}
</style>

<script>
import BarChart from '@/components/BarChart.vue';
import LineChart from '@/components/LineChart.vue';
export default {
    components: {
        BarChart,
        LineChart
    },
    props: {
        title: {
            type: String,
            default: ''
        },
        subTitle: {
            type: String,
            default: ''
        },
        iconText: {
            type: String,
            default: ''
        },
        iconTextStyle: {
            type: Object,
            default() {
                return {}
            }
        },
        iconStyle: {
            type: Object,
            default() {
                return {
                    color: getComputedStyle(document.documentElement)
                        .getPropertyValue('--color-primary')
                }
            }
        },
        icon: {
            type: String,
            default: ''
        },
        text: {
            type: String,
            default: ''
        },
        subText: {
            type: String,
            default: ''
        },
        dataLabel: {
            type: String,
            default: ''
        },
        chartType: {
            type: String,
            default: 'none'
        }
    },
}

</script>