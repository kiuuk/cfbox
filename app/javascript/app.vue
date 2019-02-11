<template>
  <div id="app">
    <p>{{ message }}</p>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Yeah Vue!",
      users: []
    };
  },
  mounted() {
    axios
      .get("/api/v1/users")
      .then(response => {
        this.users = response.data;
      })
      .catch(error => {
        console.log(error);
        this.errored = true;
      })
      .finally(() => (this.loading = false));
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
