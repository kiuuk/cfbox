<template>
  <div class="d-flex">
    <input type="number" class="form-control mr-2 w-25" placeholder="rep" v-show="rep_select === 0">
    <div class="w-100 position-relative">
      <input
        type="text"
        class="form-control w-100"
        id="movement_1"
        placeholder="movement"
        v-model="search"
        @input="onChange"
      >
      <div class="list-group position-absolute" v-show="isOpen">
        <a
          href="#"
          class="list-group-item list-group-item-action"
          v-for="result in results"
          :key="result.id"
        >{{result.exercise}}</a>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: ["rep_select"],
  data() {
    return {
      search: "",
      results: [],
      isOpen: false,
      movements: []
    };
  },
  mounted() {
    axios
      .get("/movements.json")
      .then(response => {
        this.movements = response.data;
      })
      .catch(error => {
        console.log(error);
        this.errored = true;
      })
      .finally(() => (this.loading = false));
  },
  methods: {
    onChange() {
      this.isOpen = true;
      this.filterResults();
    },
    filterResults() {
      this.results = this.movements.filter(
        mvmt =>
          mvmt.exercise.toLowerCase().indexOf(this.search.toLowerCase()) > -1
      );
    }
  }
  // computed: {
  //   movementsList() {
  //     return this.movements.sort((a, b) =>
  //       a.exercise > b.exercise ? 1 : b.exercise > a.exercise ? -1 : 0
  //     );
  //   }
  // }
};
</script>

<style>
</style>
