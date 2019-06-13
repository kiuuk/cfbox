<template>
  <transition name="modal-fade">
    <div class="modal-backdrop">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">WOD preview</h5>
            <button
              @click="close"
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <dl>
              <dt>{{wod.name}}</dt>
              <dd>{{wod.score}} {{wod.score_set}} minutes</dd>
              <dd v-if="wod.rep === 'routine'">{{wod.routine}}</dd>
              <dd>
                <ul>
                  <li v-for="movement in wod.movements" :key="movement.id">
                    <span v-if="wod.rep === 'rep'">{{movement.rep}}</span>
                    {{movement.value}}
                  </li>
                </ul>
              </dd>
              <dd v-if="wod.description">{{wod.description}}</dd>
            </dl>
          </div>
          <div class="modal-footer">
            <button
              @click="close"
              type="button"
              class="btn btn-secondary"
              data-dismiss="modal"
            >Close</button>
            <button type="button" class="btn btn-primary" @click="addWod">Save WOD</button>
          </div>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>
import axios from "axios";

export default {
  props: ["wod"],
  name: "modal",
  data() {
    return {
    };
  },
  methods: {
    close() {
      this.$emit("close");
    },
    addWod() {
      axios.post('/wods', this.wod)
      .then(function(response) {
        console.log(response);
      })
      .catch(function(error) {
        console.log(error);
      })
    }
    
  }
};
</script>

<style lang="css">
.modal-fade-enter,
.modal-fade-leave-active {
  opacity: 0;
}
.modal-fade-enter-active,
.modal-fade-leave-active {
  transition: opacity 0.5s ease;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
