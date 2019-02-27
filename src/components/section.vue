<template>
  <section :style="style">
    <slot></slot>
  </section>
</template>

<script>
export default {
  props: ["odd"],
  computed: {
    style() {
      return `background-color: ${this.odd ? "#e0f9ff" : "transparent"}`;
    }
  }
};
</script>

<style scoped>
section {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100vh;
}
</style>
