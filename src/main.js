import AOS from "aos";
import Vue from "vue";
import App from "./App.vue";
import "aos/dist/aos.css";

Vue.config.productionTip = false;

new Vue({
  created() {
    AOS.init({
      anchorPlacement: "bottom-bottom",
      delay: 200
    });
  },
  render: h => h(App)
}).$mount("#app");
