
export default {
    name: "TheVideoComponent",

    template: `
    <section class="topContent">
    <div class="video-overlay"></div>
    <div class="video-overlay-back"></div>
    
        <div class="infoCont">
        <div class="row">
            <div class="col-7 order-2 order-md-1 col-md-5 media-container1">
                <h4 class="media-title">{{currentMediaDetails.movies_title}}</h4>
                <p class="media-details" v-html="currentMediaDetails.movies_storyline"></p>
                <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
                <span class="media-year">{{currentMediaDetails.movies_year}}</span>

            </div>
        </div>
           
            <div class="col-12 order-1 order-md-2 col-md-9 media-container">
            <div class="trailerCont">
                <video autoplay muted :src="'video/' + currentMediaDetails.movies_trailer" class="fs-video"></video>
            </div>
            </div>
        </div>
        
        <div class="decade-nav">
            <ul>
              <li><a class="underline">50s</a></li>
              <li><a class="underline">60s</a></li>
              <li><a class="underline">70s</a></li>
              <li><a class="underline">80s</a></li>
              <li><a class="underline">90s</a></li>
            </ul>
            </div>
        
        <div class="lowerGallery">
        <div class="row">
            <div class="col-12 col-sm-9">
                <div class="thumb-wrapper clearfix">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.movies_cover" 
                    alt="media thumb" @mouseover="loadNewMovie(item)" @click="showMediaPlayer(item)" class="img-thumbnail rounded 
                    media-thumb"> 
                </div>
            </div>
        </div>
        </div>
  
    </section>
    `,

    data: function () {
        return {
            currentMediaDetails: {},
            allRetrievedVideos: []
        }
    },

    created: function() {
        this.retrieveVideoContent();
    },

    methods: {

        showMediaPlayer(item) {
            this.$router.push({ name: "mediaPlayer", params: {currentMovie: item}});
        },
    
        retrieveVideoContent() {
            // fetch all the video content here (don't care about filtering, genre etc at this point)
            // debugger;
            
            if (localStorage.getItem("cachedVideo")) {
                this.allRetrievedVideos = JSON.parse(localStorage.getItem("cachedVideo"));

                this.currentMediaDetails = this.allRetrievedVideos[0];

            } else {
                let url = `./admin/index.php?media=movies`;

                fetch(url) 
                    .then(res => res.json())
                    .then(data => {
                        localStorage.setItem("cachedVideo", JSON.stringify(data));

                        this.allRetrievedVideos = data;
                        this.currentMediaDetails = data[0];
                    })
            }



        },

        loadNewMovie(movie) {
            this.currentMediaDetails = movie;
        },
        
    }
}