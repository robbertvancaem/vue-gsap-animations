<template>
  <div id="app">
    <Section>
      <h1>Oh no!</h1>
      <p>A bunch of restless elements have escaped the circus</p>
      <p>Scroll down... maybe they're there...</p>
    </Section>
    <Section :odd="true">
      <Box />
    </Section>
    <Section>
      <Bubble />
    </Section>
  </div>
</template>

<script>
import Box from "./components/box";
import Bubble from "./components/bubble";
import Section from "./components/section";

export default {
  name: "app",
  components: { Box, Bubble, Section }
};
</script>

<style>
body,
html {
  margin: 0;
  padding: 0;
  width: 100%;
  min-height: 100vh;
  background: #f4ebe0;
  overflow-x: hidden;
}
#app {
  font-family: "Playfair Display", serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #505050;
  flex: 1;
}
</style>
