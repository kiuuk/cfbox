<template>
  <div class="d-flex mb-2">
    <div  v-for="movement in wod.movements" :key="movement.id">
      <input
      type="number"
      class="form-control mr-2 w-25"
      placeholder="rep"
      v-model="movement.rep"
      v-show="wod.rep === 'rep'"
      >
      <div class="w-100 position-relative">
        <select
          v-model="movement.value"
          @change="applySelect"
          class="custom-select d-block w-100"
        >
          <option value disabled selected>Select movement</option>
          <option v-for="movementList in movementsList" :key="movementList.id">{{movementList.exercise}}</option>
        </select>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  props: ["wod"],
  data() {
    return {
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
      let rep = this.component_movement.rep;
      rep != ""
        ? this.$emit("triggerChange", rep + " " + this.component_movement.value)
        : this.$emit("triggerChange", this.component_movement.value);
    }
  }
};
</script>

<style>
</style>
