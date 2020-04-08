// imports at the top
import router from "./components/Router.js";

(() => {
    const myVM = new Vue({
        router
    }).$mount("#app");
})()