<template>
  <div>
    <h1>New WOD</h1>
    <form>
      <!-- name -->
      <div class="mb-4">
        <label for="name">WOD name</label>
        <input
          v-model="wod.name"
          type="text"
          class="form-control"
          id="name"
          placeholder="WOD name"
          autocomplete="off"
        >
      </div>
      <hr class="mb-4">
      <!-- score -->
      <div class="row">
        <div class="col-12 mb-3">
          <label for="score">Score</label>
          <select v-model="wod.score" class="custom-select d-block w-100" id="score">
            <option disabled value selected>Please select score type</option>
            <option value="FT">For Time</option>
            <option value="AMRAP">AMRAP</option>
            <option value="EMOM">EMOM</option>
            <!-- <option v-for="score in scores" :key="score.id" :value="score.value">{{score.text}}</option> -->
          </select>
        </div>
        <!-- timer -->
        <div class="col-12 mb-3">
          <label for="score_set">Set timer</label>
          <input
            v-model="wod.score_set"
            type="number"
            class="form-control"
            id="score_set"
            placeholder="minutes"
          >
        </div>
      </div>
      <hr class="mb-4">
      <!-- rep -->
      <div class="row">
        <div class="col-12 mb-3">
          <label for="rep">Representative</label>
          <select v-model="wod.rep" class="custom-select d-block w-100" id="rep">
            <option value disabled selected>Please select rep type</option>
            <option value="rep">Rep by each movement</option>
            <option value="routine">Set routine</option>
          </select>
        </div>
        <!-- routine -->
        <div class="col-12 mb-3" v-show="wod.rep === 'routine'">
          <label for="rep_set">Set routine</label>
          <input
            v-model="wod.routine"
            type="text"
            class="form-control"
            id="rep_set"
            placeholder="1-2-3-4-5"
          >
        </div>
      </div>
      <hr class="mb-4">
      <!-- movements -->
      <div class="mb-3">
        <label for="movement_1">Movements</label>
        <ComponentMovement :wod="wod"></ComponentMovement>
        <!-- add btn -->
        <div class="mt-2 mb-3 text-right">
          <button
            type="button"
            @click="addComponentMovement"
            class="btn btn-secondary btn-sm"
          >Add movement</button>
        </div>
      </div>
      <hr class="mb-4">
      <!-- desc -->
      <div class="mb-3">
        <label for="desc">Description</label>
        <textarea
          v-model="wod.description"
          name="description"
          class="form-control"
          id="desc"
          rows="5"
        ></textarea>
      </div>
      <!-- submit -->
      <button class="btn btn-primary btn-lg btn-block" type="submit">Add WOD</button>
    </form>
  </div>
</template>

<script>
import ComponentMovement from "./component_movement";

export default {
  components: {
    ComponentMovement: ComponentMovement
  },
  data() {
    return {
      component_movements: [{ id: 0 }],
      component_count: 1,
      wod: {
        name: "",
        score: "",
        score_set: "",
        rep: "",
        description: "",
        movement_1: "",
        movement_2: "",
        movement_3: "",
        movement_4: "",
        movement_5: "",
        routine: ""
      }
    };
  },
  methods: {
    addComponentMovement() {
      this.component_movements.push({
        id: this.component_count++
      });
    }
  }
};
</script>

<style>
</style>
