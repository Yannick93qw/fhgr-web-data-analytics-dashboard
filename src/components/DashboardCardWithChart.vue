<template>
    <div class="card animate__animated animate__bounceIn">
        <h2>{{ title }}</h2>

        <div class="sub-title-row">
            <h3>{{ subTitle }}</h3>
            <h3 class="icon-prefix-text">{{ iconPrefixText }}</h3>
            <span :class="icon" style="font-size: 1.5rem; color: var(--color-primary) "></span>
        </div>
        <h1 class="text">{{ text }}</h1>
        <BarChart v-if="chartType == 'bar'" :dataLabel="dataLabel" />
        <LineChart v-if="chartType == 'line'" :dataLabel="dataLabel" />
    </div>
</template>

<style>
.card {
    width: auto;
    max-height: 450px;
    box-sizing: border-box;
    border-radius: 10px;
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    font-weight: bold;
    box-shadow: -5px -5px 20px var(--card-shadow-start-color), 5px 5px 20px var(--card-shadow-stop-color);
    padding: 1.6rem 2.4rem;
    margin: 0.4rem;
}

.card:hover {
    box-shadow: -2px -2px 5px var(--card-shadow-start-color), 2px 2px 5px var(--card-shadow-stop-color);
}

h2 {
    color: var(--text-color);
    text-transform: uppercase;
}

h3,
span {
    color: var(--text-color);
}

.sub-title-row {
    display: flex;
    flex-direction: row;
    justify-content: start;
    align-items: center;
}

.icon-prefix-text {
    padding: 0 0.2rem;
    color: var(--color-primary);
}

.text {
    color: var(--color-primary);
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
        icon: {
            type: String,
            default: 'q-icon-arrow-up'
        },
        text: {
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
        },
        iconPrefixText: {
            type: String,
            default: ''
        }
    },
}

</script>