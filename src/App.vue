<template>
  <DashboardHeader />

  <div class="dashboard-card-list">
    <DashboardCard />
    <DashboardCard />
    <DashboardCard />
    <DashboardCard />
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
import { ref } from 'vue';
import DashboardHeader from '@/components/DashboardHeader.vue';
import DashboardCard from '@/components/DashboardCard.vue';


export default {
  components: { DashboardHeader, DashboardCard },
  setup() {
    const value = ref('');
    return { value };
  }
};
</script>