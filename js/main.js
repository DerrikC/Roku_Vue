
import AllUsersComponent from './components/AllUsersComponent.js';
import LoginComponent from './components/LoginComponent.js';
import UserHomeComponent from './components/UserHomeComponent.js';
import MediaPlayerComponent from './components/MediaPlayerComponent.js';
import ShowComponent from './components/ShowComponent.js';

(() => {
  let router = new VueRouter({
    // set routes
    routes: [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: 'users', component: AllUsersComponent },
      { path: '/usershome', name: 'home', component: UserHomeComponent, props: true },
      { path: '/mediaPlayer', name: 'mediaPlayer', component: MediaPlayerComponent, props: true },
      { path: '/shows', name: 'show', component: ShowComponent, props: true }
    ]
  });

  const vm = new Vue({
    data: {
      authenticated: false,
      administrator: false,
      user: [],

      //currentUser: {},
    },

    methods: {
      setAuthenticated(status, data) {
        this.authenticated = status;
        this.user = data;
      },

      logout() {
        // push user back to login page
        // this.$router.push({ path: "/login" });
        // this.authenticated = false;
        this.$router.push({ name: "login" });
        this.authenticated = false;

        if (localStorage.getItem("cachedUser")) {
          localStorage.removeItem("cachedUser");
        }

        if (localStorage.getItem("cachedVideo")) {
          localStorage.removeItem("cachedVideo");
        }
      }
    },

    created: function () {

      if (localStorage.getItem("cachedUser")) {
        let user = JSON.parse(localStorage.getItem("cachedUser"));

        this.authenticated = true;

        this.$router.push({name: "home", params: { currentUser: user }});
      } else {
        this.$router.push ({ name: "login" }).catch(err => { });
      }

      },
    // }

    router: router
  }).$mount("#app");

  // router.beforeEach((to, from, next) => {
    //console.log('router guard fired!', to, from, vm.authenticated);

  //   if (vm.authenticated == false) {
  //     next("/login");
  //   } else {
  //     next();
  //   }
  // });
})();