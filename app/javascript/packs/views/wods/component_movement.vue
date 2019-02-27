<template>
  <div class="d-flex mb-2">
    <input
      type="number"
      class="form-control mr-2 w-25"
      placeholder="rep"
      v-show="rep_select === 'rep'"
    >
    <div class="w-100 position-relative">
      <input
        type="text"
        class="form-control w-100"
        placeholder="movement"
        autocomplete="off"
        v-model="search"
        @input="onChange"
        @keydown.down="onArrowDown"
        @keydown.up="onArrowUp"
        @keydown.enter="onEnter"
      >
      <ul class="list-group position-absolute" v-show="isOpen">
        <li
          class="list-group-item list-group-item-action"
          v-for="(result, idx) in results"
          :key="idx"
          @click="setResult(result)"
          :class="{ 'is-active': idx === arrowCounter }"
        >{{result.exercise}}</li>
      </ul>
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
      arrowCounter: -1,
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
      this.search == "" ? (this.isOpen = false) : (this.isOpen = true);
      this.filterResults();
    },
    filterResults() {
      this.results = this.movements.filter(
        mvmt =>
          mvmt.exercise.toLowerCase().indexOf(this.search.toLowerCase()) > -1
      );
    },
    setResult(result) {
      this.search = result.exercise;
      this.isOpen = false;
      $emit("wod", result.exercise);
    },
    onArrowDown() {
      if (this.arrowCounter < this.results.length - 1) {
        this.arrowCounter = this.arrowCounter + 1;
      }
    },
    onArrowUp() {
      if (this.arrowCounter < this.results.length && this.arrowCounter > 0) {
        this.arrowCounter = this.arrowCounter - 1;
      }
    },
    onEnter() {
      this.search = this.results[this.arrowCounter].exercise;
      this.isOpen = false;
      this.arrowCounter = -1;
      this.$emit("wod", this.value);
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
