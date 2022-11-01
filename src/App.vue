<template>
  <DashboardHeader />

  <div class="card-list">
    <DashboardCardWithChart v-for="(item, index) in cardItems" :dataLabel="item.dataLabel" :title="item.title"
      :subTitle="item.subTitle" :chartType="item.chartType" :iconText="item.iconText"
      :iconTextStyle="item.iconTextStyle" :icon="item.icon" :iconStyle="item.iconStyle" :text="item.text"
      :subText="item.subText" />
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
          title: 'Lead Generation',
          subTitle: 'Monatliche neue Leads',
          iconText: '+5% zum vorherigen Monat',
          icon: 'q-icon-arrow-up',
          chartType: 'bar',
          dataLabel: 'Monatliche neue Leads',
        },
        {
          title: 'Personalgewinnung',
          subTitle: 'Monatlich ausgefüllte Bewerbungsformulare',
          iconText: '+10% zum vorherigen Monat',
          icon: 'q-icon-arrow-up',
          chartType: 'line',
          dataLabel: 'Anzahl an Bewerbungen',
        },
        {
          title: 'Online Sales',
          subTitle: 'Monatliche Anzahl verkaufter Kurse',
          iconText: '+15% zum vorherigen Monat',
          icon: 'q-icon-arrow-up',
          chartType: 'bar',
          dataLabel: 'Anzahl verkaufter Kurse',
        },
        {
          title: 'Lead Generation',
          subTitle: 'Monatliche Lead-to-Sale Conversion Rate',
          icon: 'q-icon-arrow-down',
          iconText: '-1% zum vorherigen Monat',
          iconTextStyle: {
            color: getComputedStyle(document.documentElement)
              .getPropertyValue('--color-error')
          },
          iconStyle: {
            color: getComputedStyle(document.documentElement)
              .getPropertyValue('--color-error')
          },
          icon: 'q-icon-arrow-down',
          chartType: 'line',
          dataLabel: 'Lead-to-Sale Conversion Rate',
        },
        {
          title: 'Personalgewinnung',
          subTitle: 'Monatliche Anzahl Besucher im Bereich "Bei Udemy unterrichten"',
          iconText: '+5% zum vorherigen Monat',
          icon: 'q-icon-arrow-up',
          text: "10'000 Besucher",
          subText: "Target 15'000 Besucher"
        },
        {
          title: 'Online Marketing',
          subTitle: 'Monatlich gewonnen Neukunden durch Kampagne',
          iconText: '+3% zum vorherigen Monat',
          icon: 'q-icon-arrow-up',
          chartType: 'line',
          dataLabel: 'Neukunden durch Kampagne',

        }
      ]
    }
  }
};
</script>