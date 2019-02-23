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
        <div class="col-md-5 mb-3">
          <label for="score">Score</label>
          <select class="custom-select d-block w-100" id="score" required>
            <option value>Choose...</option>
            <option>For Time</option>
            <option>AMRAP</option>
          </select>
        </div>
        <div class="col-md-5 mb-3">
          <label for="score_set">Time set</label>
          <input type="text" class="form-control" id="score_set" placeholder="minutes">
        </div>
      </div>
      <!-- rep -->
      <div class="row">
        <div class="col-md-5 mb-3">
          <label for="rep">Rep</label>
          <select class="custom-select d-block w-100" id="rep" required>
            <option value>Choose...</option>
            <option>Each rep</option>
            <option>Routine rep</option>
          </select>
        </div>
        <div class="col-md-5 mb-3">
          <label for="rep_set">Routine set</label>
          <input type="text" class="form-control" id="rep_set" placeholder="1-2-3-4-5">
        </div>
      </div>
      <!-- movements -->
      <div class="mb-3">
        <label for="movement_1">Movements</label>
        <div class="d-flex">
          <input type="number" class="form-control mr-2">
          <input type="text" class="form-control" id="movement_1">
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
export default {};
</script>

<style>
</style>
