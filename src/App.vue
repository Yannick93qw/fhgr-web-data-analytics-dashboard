<template>
  <DashboardHeader />

  <div class="card-list">
    <DashboardCardWithChart v-for="(item, index) in cardItems" :dataLabel="item.dataLabel" :title="item.title"
      :subTitle="item.subTitle" :chartType="item.chartType" :iconPrefixText="item.iconPrefixText" :text="item.text" />
  </div>
</template>

<style>
.card-list {
  display: grid;
  gap: 0.5rem;
  margin: 0 auto;
}

@media (min-width: 600px) {
  .card-list {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (min-width: 900px) {
  .card-list {
    grid-template-columns: repeat(3, 1fr);
  }
}
</style>

<script>
import DashboardHeader from '@/components/DashboardHeader.vue';
import DashboardCardWithChart from '@/components/DashboardCardWithChart.vue';


export default {
  components: { DashboardHeader, DashboardCardWithChart },
  data() {
    return {
      cardItems: [
        {
          title: 'Job Video',
          subTitle: 'KPI: Anzahl Abspielungen',
          iconPrefixText: '+50 %',
          chartType: 'line',
          dataLabel: 'Anzahl Abspielungen',

        },
        {
          title: 'Job Video',
          subTitle: 'KPI: Anzahl Abspielungen',
          iconPrefixText: '+50 %',
          chartType: 'bar',
          dataLabel: 'Anzahl Abspielungen',

        },
        {
          title: 'Job Video',
          subTitle: 'KPI: Anzahl Abspielungen',
          iconPrefixText: '+50 %',
          text: "5'000 Klicks",

        },
        {
          title: 'Job Video',
          subTitle: 'KPI: Anzahl Abspielungen',
          iconPrefixText: '+50 %',
          chartType: 'line',
          dataLabel: 'Anzahl Abspielungen',

        },
        {
          title: 'Job Video',
          subTitle: 'KPI: Anzahl Abspielungen',
          iconPrefixText: '+50 %',
          chartType: 'bar',
          dataLabel: 'Anzahl Abspielungen',

        },
        {
          title: 'Job Video',
          subTitle: 'KPI: Anzahl Abspielungen',
          iconPrefixText: '+50 %',
          text: "5'000 Klicks",

        }
      ]
    }
  }
};
</script>