<template>
  <div>
    <h1>{{title}}</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th></th>
          <th>ID</th>
          <!-- <th>Password</th> -->
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
          <!-- <td>{{user.password}}</td> -->
          <td>
            <a :href="'/users/' + user.id">{{user.name}}</a>
          </td>
          <td>
            <a :href="'/affiliates/' + user.affiliate_id">{{showAffiliate(user.affiliate_id)}}</a>
          </td>
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
  data() {
    return {
      title: "Users",
      users: [],
      affiliates: []
    };
  },
  mounted() {
    var that = this;
    axios
      .all([axios.get("/users.json"), axios.get("/affiliates.json")])
      .then(
        axios.spread(function(users, affiliates) {
          that.users = users.data;
          that.affiliates = affiliates.data;
        })
      )
      .catch(error => {
        console.log(error);
        this.errored = true;
      })
      .finally(() => (this.loading = false));
  },
  methods: {
    showAffiliate(idx) {
      let affiliateName = "";
      this.affiliates.forEach(function(affiliate) {
        if (affiliate.id === idx) affiliateName = affiliate.name;
      });
      return affiliateName;
    }
  }
};
</script>

<style scoped>
th,
td {
  vertical-align: middle;
  font-size: 0.8rem;
}
.img-fluid {
  width: 35px;
  border-radius: 50%;
}
</style>