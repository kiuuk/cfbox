<template>
  <div>
    <h1>{{title}}</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>No</th>
          <th>Name</th>
          <th>Score</th>
          <th>score set</th>
          <th>Rep</th>
          <th>Routine</th>
          <th>Movements</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="wod in wods" :key="wod.id">
          <td>{{wod.id}}</td>
          <td>{{wod.name}}</td>
          <td>{{wod.score}}</td>
          <td>{{wod.score_set}}</td>
          <td>{{wod.rep}}</td>
          <td>{{wod.routine}}</td>
          <td>{{wod.movements}}</td>
          <td>{{wod.description}}</td>
        </tr>
      </tbody>
    </table>

    <a href="/wods/new">Add wods</a>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      title: "Wods",
      wods: []
    };
  },
  mounted() {
    axios.get("/wods.json")
    .then(response => {
      this.wods = response.data;
    })
    .catch(error => {
        console.log(error);
        this.errored = true;
      })
    .finally(() => (this.loading = false));
  }
};
</script>

<style>
</style>
