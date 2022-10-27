<template>
  <DashboardHeader />

  <div class="dashboard-card-list">
    <div v-for="(item, index) in cardElements">
      <DashboardCardWithBarChartVue :dataLabel="item.dataLabel" />
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
import DashboardCardWithBarChartVue from '@/components/DashboardCardWithBarChart.vue';


export default {
  components: { DashboardHeader, DashboardCardWithBarChartVue },
  data() {
    return {
      cardElements: [
        {
          dataLabel: 'Test'
        },
        {
          dataLabel: 'Test'
        },
        {
          dataLabel: 'Test'
        }
      ]
    }
  }
};
</script>