<template>
  <div>
    <h1>Eyes on the prize</h1>
    <p>It's watching youuuuu...</p>
    <div class="bubble-wrapper">
      <div ref="bubble" class="bubble">
        <img src="../assets/eye.svg" />
      </div>
      <div ref="bubblePulse" class="bubble-pulse"></div>
    </div>
  </div>
</template>

<script>
import { TimelineLite, Back, Elastic, Expo } from "gsap";

export default {
  data() {
    return {
      timeline: null
    };
  },

  mounted() {
    const { bubble, bubblePulse } = this.$refs;
    this.timeline = new TimelineLite({
      onComplete: () => this.timeline.restart()
    });

    this.timeline.to(bubble, 0.4, {
      scale: 0.8,
      rotation: 16,
      ease: Back.easeOut.config(1.7)
    });
    this.timeline.to(
      bubblePulse,
      0.5,
      {
        scale: 0.9,
        opacity: 1
      },
      "-=0.6"
    );
    this.timeline.to(bubble, 1.2, {
      scale: 1,
      rotation: "-=16",
      ease: Elastic.easeOut.config(2.5, 0.5)
    });
    this.timeline.to(
      bubblePulse,
      1.1,
      {
        scale: 3,
        opacity: 0,
        ease: Expo.easeOut
      },
      "-=1.2"
    );
  }
};
</script>

<style>
.bubble-wrapper {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 100px;
}
.bubble {
  position: relative;
  z-index: 2;
  border: 1px solid #fff;
  background: #e4d9cb;
  border-radius: 50%;
  width: 100px;
  height: 100px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.bubble img {
  transform: scale(1.4);
}
.bubble-pulse {
  position: absolute;
  z-index: 1;
  width: 120px;
  height: 120px;
  top: 50%;
  left: 50%;
  margin-top: -60px;
  margin-left: -60px;
  background: #e4d9cb;
  border-radius: 50%;
  opacity: 0;
  transform: scale(0);
}
</style>
