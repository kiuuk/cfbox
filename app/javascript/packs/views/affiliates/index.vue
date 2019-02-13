<template>
  <div>
    <h1>{{title}}</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Name</th>
          <!-- <th>Password</th> -->
          <th>Address</th>
          <th>Phone</th>
          <th>Picture</th>
          <th>Website</th>
          <th>Sns</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="affiliate in affiliates" :key="affiliate.id">
          <td>{{affiliate.name}}</td>
          <!-- <td>{{affiliate.password}}</td> -->
          <td>{{affiliate.address}}</td>
          <td>{{affiliate.phone}}</td>
          <td>{{affiliate.picture}}</td>
          <td>{{affiliate.website}}</td>
          <td>{{affiliate.sns}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      title: "Affiliates",
      affiliates: []
    };
  },
  mounted() {
    axios
      .get("/affiliates.json")
      .then(response => {
        this.affiliates = response.data;
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
