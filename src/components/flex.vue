<template>
  <div>
    <slot></slot>
  </div>
</template>

<style scoped>
div {
  display: flex;
}
div > * {
  margin-right: 100px;
}
div > *:last-child {
  margin-right: 0;
}
</style>
