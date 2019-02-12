import Vue from "vue/dist/vue.esm.js";
import UsersIndex from "../views/users/index";

new Vue({
  el: "#users-index",
  components: {
    "users-index": UsersIndex
  }
});
