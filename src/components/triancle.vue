<template>
  <div class="triancle-wrapper">
    <img src="../assets/triangle.svg" ref="triangle" class="triangle" />
    <div ref="circle" class="circle"></div>
  </div>
</template>

<script>
import { TimelineLite, Back } from 'gsap';
export default {
  mounted() {
    const { triangle, circle } = this.$refs;
    this.timeline = new TimelineLite({
      onComplete: () => this.timeline.restart()
    });

    this.timeline.to(circle, 0.5, {
      scale: 1,
      ease: Back.easeInOut
    }, '+=1');

    this.timeline.to(triangle, 0.5, {
      scale: 0,
      ease: Back.easeInOut
    }, '-=0.5');

    this.timeline.to(circle, 0.5, {
      scale: 0,
      ease: Back.easeInOut
    }, '+=1');

    this.timeline.to(triangle, 0.5, {
      scale: 0.7,
      ease: Back.easeInOut
    }, '-=0.5');
  }
}
</script>

<style scoped>
.triangle {
  transform: scale(0.7);
}
.circle {
  border: 4px solid #c8e2ea;
  width: 120px;
  height: 120px;
  border-radius: 50%;
  position: absolute;
  transform: scale(0);
}
.triancle-wrapper {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>
