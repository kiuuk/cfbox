<template>
  <div>
    <h1>Users</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Avatar</th>
          <th>ID</th>
          <th>Password</th>
          <th>Name</th>
          <th>Affiliate</th>
          <th>Phone</th>
          <th>Gender</th>
          <th>Age</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in users" :key="user.id">
          <td>
            <img :src="user.picture" class="img-fluid">
          </td>
          <td>{{user.userid}}</td>
          <td>{{user.password}}</td>
          <td>
            <a :href="'/users/' + user.id" :title="user.name">{{user.name}}</a>
          </td>
          <td>{{user.affiliate_id}}</td>
          <td>{{user.phone}}</td>
          <td>{{user.gender}}</td>
          <td>{{user.age}}</td>
        </tr>
      </tbody>
    </table>
    <a href="/users/new" class="badge badge-primary" title="Add new user">Add new user</a>
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
th,
td {
  vertical-align: middle;
  font-size: 0.7rem;
}
.img-fluid {
  width: 35px;
  border-radius: 50%;
}
a {
  padding: 5px;
  color: #fff;
}
</style>