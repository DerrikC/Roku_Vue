// todo => use a key to track the current video, or just pass the video in as a ref to the function and grab its source

var vm = new Vue({
  el: "#app",

  data: {

    // mock up the user - this well eventually come from the database UMS (user management system)
    user: {
      isAdmin: false,
      avatar: null,
      isLoggedIn: true
    },

    // this data would also come from the database, but we'll just mock it up for now
    videodata: [
      { name: "Pulp Fiction", thumb: "pulpfiction.jpg", vidsource: "pulpfiction.mp4", description: "A Quentin Tarantino Classic." },
      // { name: "Star Wars The Force Awakens", thumb: "forceawakens.jpg", vidsource: "forceawakens.mp4", description: "yet another star wars movie" },
      // { name: "Stranger Things", thumb: "strangerthings.jpg", vidsource: "strangerthings.mp4", description: "don't get lost in the upside down" },
      // { name: "Marvel's The Avengers", thumb: "avengers.jpg", vidsource: "avengers.mp4", description: "will they make black widow action figures this time?" },
      { name: "Titanic", thumb: "titanic.jpg", vidsource: "titanic.mp4", description: "Rose falls in love with an artist by the name of Jack." },
      { name: "Forest Gump", thumb: "forestgump.jpg", vidsource: "forestgump.mp4", description: "Run Forest, Run! A classic Tom Hanks film for the family." }
    ],

    videotitle: "video title goes here",
    vidsource: "",
    videodescription: "video description here",

    showDetails: false
  },

  methods: {
    setUserPrefs() {
      // this is the preferences control, hit the api when ready (or use a component)
      console.log('set user prefs here');
    },

    userLogin(){
      //call the login route, or load the login component 
      console.log('do login / logout on click');

      //this is a ternary statement -> shorthand for if / else
      // the expression evaluates to true or false - if it's true, set the value equal to 
      // the left of the colon. If it's false, set the value equal to the right
      this.user.isLoggedIn = (this.user.isLoggedIn) ? false : true;
    },

    showMovieDetails({name, vidsource, description}) {
      // console.log('show these details: ', movie);

      this.videotitle = name;
      this.vidsource = vidsource;
      this.videodescription = description;

      //make the movie detials show up
      this.showDetails = true;
    }
  }
});
