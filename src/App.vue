<template>
  <DashboardHeader />

  <q-row>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
  </q-row>

  <q-row>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
    <q-col cols="3">
      <DashboardCardWithChart :dataLabel="'Test'" :title="'Title'" :subTitle="'SubTitle'" :chartType="'line'"
        :iconPrefixText="'+10 %'" />
    </q-col>
  </q-row>
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
import DashboardCardWithChart from '@/components/DashboardCardWithChart.vue';
import { QRow, QCol } from '@qvant/qui-max';


export default {
  components: { DashboardHeader, DashboardCardWithChart, QRow, QCol },
  data() {
    return {}
  }
};
</script>