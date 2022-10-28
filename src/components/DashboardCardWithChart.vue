<template>
    <div class="card">
        <h2>{{ title }}</h2>

        <div class="sub-title-row">
            <h3>{{ subTitle }}</h3>
            <h3 class="icon-prefix-text">{{ iconPrefixText }}</h3>
            <span :class="icon" style="font-size: 1.5rem"></span>
        </div>
        <p>{{ text }}</p>
        <BarChart v-if="chartType == 'bar'" :dataLabel="dataLabel" />
        <LineChart v-if="chartType == 'line'" :dataLabel="dataLabel" />
    </div>
</template>

<style>
.card {
    border: 1px solid #eff1f6;
    ;
    width: 100%;
    height: auto;
    box-sizing: border-box;
    background: linear-gradient(158.17deg,
            #f3f5fa -1.94%,
            #ebedf2 102.24%);
    border-radius: 1.2rem;
    ;
    box-shadow: 0.2rem 0.4rem 1rem #a5bac766,
        -0.1rem -0.1rem 0.2rem #ffffffb3;
    padding: 1.6rem 2.4rem;
    margin: 0.4rem;
}

h2 {
    color: var(--color-primary-black);
    text-transform: uppercase;
}

h3,
span {
    color: var(--color-primary-black);
}

.sub-title-row {
    display: flex;
    flex-direction: row;
    justify-content: start;
    align-items: center;
}

.icon-prefix-text {
    padding: 0 0.5rem;
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