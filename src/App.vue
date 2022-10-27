<template>
  <DashboardHeader />

  <div class="dashboard-card-list">
    <div v-for="(item, index) in cardElements">
      <DashboardCardWithBarChart v-if="item.type == 'bar'" :dataLabel="item.dataLabel" :title="item.title"
        :subTitle="item.subTitle" />
      <DashboardCardWithLineChart v-if="item.type == 'line'" :dataLabel="item.dataLabel" :title="item.title"
        :subTitle="item.subTitle" />
      <DashboardCard v-if="item.type == 'text'" :title="item.title" :subTitle="item.subTitle" :text="item.text" />
    </div>
  </div>

</template>

<style>
.dashboard-card-list {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  flex-wrap: wrap;
}
</style>

<script>
import DashboardHeader from '@/components/DashboardHeader.vue';
import DashboardCardWithBarChart from '@/components/DashboardCardWithBarChart.vue';
import DashboardCardWithLineChart from '@/components/DashboardCardWithLineChart.vue';
import DashboardCard from '@/components/DashboardCard.vue';


export default {
  components: { DashboardHeader, DashboardCardWithBarChart, DashboardCardWithLineChart, DashboardCard },
  data() {
    return {
      cardElements: [
        {
          title: 'Kursbeschreibung',
          subTitle: 'Anzahl der Klicks auf Kursbeschreibung',
          text: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Rem, veritatis ab commodi repellat facilis nostrum ex non fuga magni officiis illo molestiae itaque, ea porro sequi asperiores explicabo esse vero.',
          type: 'text'
        },
        {
          title: 'Testimonial Video',
          subTitle: 'Anzahl Abspielungen',
          dataLabel: 'Abspielungen',
          type: 'bar'
        },
        {
          title: 'Blog lesen',
          subTitle: 'Dauer des Anschauens',
          dataLabel: 'Dauer des Anschauens',
          type: 'line'
        },
        {
          title: 'Testimonial Video',
          subTitle: 'Anzahl Abspielungen',
          dataLabel: 'Abspielungen',
          type: 'bar'
        },
        {
          title: 'Testimonial Video',
          subTitle: 'Anzahl Abspielungen',
          dataLabel: 'Abspielungen',
          type: 'bar'
        },
      ]
    }
  }
};
</script>