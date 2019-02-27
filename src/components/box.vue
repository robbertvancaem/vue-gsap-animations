<template>
  <div>
    <h1>Restless box</h1>
    <p>Look at him go, such a restless soul</p>
    <div ref="box" class="box"></div>
  </div>
</template>

<script>
import { TimelineLite, Back } from "gsap";

export default {
  data() {
    return {
      timeline: null
    };
  },
  mounted() {
    const { box } = this.$refs;
    this.timeline = new TimelineLite({
      onComplete: () => {
        this.timeline.reverse();
      },
      onReverseComplete: () => {
        this.timeline.restart();
      }
    });

    this.timeline.to(box, 1, {
      x: 200,
      rotation: 90,
      ease: Back.easeInOut
    });
  }
};
</script>

<style scoped>
.box {
  background: #c8e2ea;
  margin-top: 100px;
  height: 60px;
  width: 60px;
}
</style>
