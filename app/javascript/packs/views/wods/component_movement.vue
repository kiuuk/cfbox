<template>
  <div class="d-flex mb-2">
    <input
      type="number"
      class="form-control mr-2 w-25"
      placeholder="rep"
      v-show="wod.rep === 'rep'"
    >
    <div class="w-100 position-relative">
      <select v-model="selected" v-on:change="applySelect" class="custom-select d-block w-100">
        <option value disabled selected>Select movement</option>
        <option v-for="movement in movementsList" :key="movement.id">{{movement.exercise}}</option>
      </select>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: ["wod"],
  data() {
    return {
      selected: "",
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
  computed: {
    movementsList() {
      return this.movements.sort((a, b) =>
        a.exercise > b.exercise ? 1 : b.exercise > a.exercise ? -1 : 0
      );
    }
  },
  methods: {
    applySelect() {
      this.$emit("triggerChange", this.selected);
    }
  }
};
</script>

<style>
</style>
