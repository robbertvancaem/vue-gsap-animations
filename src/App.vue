<template>
  <div id="app">
    <Section>
      <h1>Oh no!</h1>
      <p>A bunch of restless elements have escaped the circus</p>
      <p>Scroll down... maybe they're there...</p>
    </Section>
    <Section :odd="true">
      <h1>Psyched box</h1>
      <p>Look at him go, such a restless soul</p>
      <Box />
    </Section>
    <Section>
      <h1>Eyes on the prize</h1>
      <p>It's watching youuuuu...</p>
      <Flex>
        <Bubble />
        <Bubble :delay="0.5" />
      </Flex>
    </Section>
    <Section :odd="true">
      <h1>Poor little triancle</h1>
      <p>Doesn't really know what to be. Can relate...</p>
      <Triancle />
    </Section>
  </div>
</template>

<script>
import Box from "./components/box";
import Bubble from "./components/bubble";
import Flex from "./components/flex";
import Section from "./components/section";
import Triancle from "./components/triancle";

export default {
  name: "app",
  components: { Box, Bubble, Flex, Section, Triancle }
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
