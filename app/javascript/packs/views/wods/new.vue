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
        <div class="col-12 mb-3">
          <label for="score_set">Set timer</label>
          <input type="text" class="form-control" id="score_set" placeholder="minutes">
        </div>
      </div>
      <!-- rep -->
      <div class="row">
        <div class="col-12 mb-3">
          <label for="rep">Rep</label>
          <select class="custom-select d-block w-100" id="rep">
            <option value>Choose...</option>
            <option>Each rep</option>
            <option>Routine rep</option>
          </select>
        </div>
        <div class="col-12 mb-3">
          <label for="rep_set">Routine set</label>
          <input type="text" class="form-control" id="rep_set" placeholder="1-2-3-4-5">
        </div>
      </div>
      <!-- movements -->
      <div class="mb-3">
        <label for="movement_1">Movements</label>
        <div class="d-flex">
          <input type="number" class="form-control mr-2 w-25" placeholder="rep">
          <input type="text" class="form-control w-75" id="movement_1">
        </div>
      </div>
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
export default {
  data() {
    return {
      score_select: null,
      scores: [
        { text: "For Time", value: 0 },
        { text: "As Many Rep As Possible", value: 1 },
        { text: "Every Minute on the Minute", value: 2 }
      ]
    };
  }
};
</script>

<style>
</style>
