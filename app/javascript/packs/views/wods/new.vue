<template>
  <div>
    <h1>New WOD</h1>
    <form>
      <!-- name -->
      <div class="mb-3">
        <label for="name">WOD name</label>
        <input type="text" class="form-control" id="name" placeholder="WOD name">
      </div>
      <!-- score -->
      <div class="row">
        <div class="col-12 mb-3">
          <label for="score">Score</label>
          <select v-model="score_select" class="custom-select d-block w-100" id="score">
            <option :value="null" disabled selected>Select Score</option>
            <option v-for="score in scores" :key="score.value" :value="score.value">{{score.text}}</option>
          </select>
        </div>
        <!-- timer -->
        <div class="col-12 mb-3">
          <label for="score_set">Set timer</label>
          <input type="number" class="form-control" id="score_set" placeholder="minutes">
        </div>
      </div>
      <hr class="mb-4">
      <!-- rep -->
      <div class="row">
        <div class="col-12 mb-3">
          <label for="rep">Representative</label>
          <select v-model="rep_select" class="custom-select d-block w-100" id="rep">
            <option :value="null" disabled selected>Select rep</option>
            <option v-for="rep in reps" :key="rep.value" :value="rep.value">{{rep.text}}</option>
          </select>
        </div>
        <!-- routine -->
        <div class="col-12 mb-3" v-show="rep_select === 1">
          <label for="rep_set">Set routine</label>
          <input type="text" class="form-control" id="rep_set" placeholder="1-2-3-4-5">
        </div>
      </div>
      <hr class="mb-4">
      <!-- movements -->
      <div class="mb-3">
        <label for="movement_1">Movements</label>
        <ComponentMovement :rep_select="rep_select"></ComponentMovement>
        <div class="mt-2 mb-3 text-right">
          <button type="button" class="btn btn-secondary btn-sm">Add movement</button>
        </div>
      </div>
      <hr class="mb-4">
      <!-- desc -->
      <div class="mb-3">
        <label for="desc">Description</label>
        <textarea name="description" class="form-control" id="desc" rows="5"></textarea>
      </div>
      <!-- submit -->
      <button class="btn btn-primary btn-lg btn-block" type="submit">Add WOD</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
import ComponentMovement from "./component_movement";

export default {
  components: {
    ComponentMovement: ComponentMovement
  },
  data() {
    return {
      score_select: null,
      scores: [
        { text: "For Time", value: 0 },
        { text: "As Many Rep As Possible", value: 1 },
        { text: "Every Minute on the Minute", value: 2 }
      ],
      rep_select: null,
      reps: [
        { text: "Rep by each movement", value: 0 },
        { text: "Set Routine Rep", value: 1 }
      ]
    };
  }
};
</script>

<style>
</style>
