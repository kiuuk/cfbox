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
            <option v-for="score in scores" :key="score.id" :value="score.value">{{score.text}}</option>
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
            <option value disabled selected>Select</option>
            <option v-for="rep in reps" :key="rep.id" :value="rep.value">{{rep.text}}</option>
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
        <div class="d-flex mb-2">
          <input
            type="number"
            class="form-control mr-2 w-25"
            placeholder="rep"
            v-show="wod.rep === 'rep'"
          >
          <div class="w-100 position-relative">
            <select v-model="wod.movement_1" class="custom-select d-block w-100">
              <option value disabled selected>Select</option>
              <option v-for="movement in movementsList" :key="movement.id">{{movement.exercise}}</option>
            </select>
          </div>
        </div>
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
import axios from "axios";

export default {
  data() {
    return {
      movements: [],
      scores: [
        { text: "For Time", value: "FT" },
        { text: "AMRAP", value: "AMRAP" },
        { text: "EMOM", value: "EMOM" }
      ],
      reps: [
        { text: "Rep by each movement", value: "rep" },
        { text: "Set Routine", value: "routine" }
      ],
      component_movements: [{ id: 0 }],
      component_count: 1,
      wod: {
        name: this.value,
        score: this.value,
        score_set: this.value,
        rep: this.value,
        description: this.value,
        movement_1: this.value,
        routine: this.value
      }
    };
  },
  methods: {
    addComponentMovement() {
      this.component_movements.push({
        id: this.component_count++
      });
    }
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
  }
};
</script>

<style>
</style>
