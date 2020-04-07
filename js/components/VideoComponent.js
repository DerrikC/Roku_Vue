
export default {
    name: "TheVideoComponent",

    template: `
    <div class="row">
        <div class="col-12 order-2 order-md-1 col-md-3 media-container">
            <h4 class="media-title">{{currentMediaDetails.movies_title}}</h4>
            <p class="media-details"> v-html="currentMediaDetails.movies_storyline</p>
            <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
            <span class="media-year">{{currentMediaDetails.movies_year}}</span>
        </div>

        <div class="col-12 order-1 order-md-2 col-md-9 media-container">
            <video autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer" class="fs-video"></video>
        </div>
    </div>
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
        retrieveVideoContent() {
            // fetch all the video content here (don't care about filtering, genre etc at this point)
            debugger;

            let url = `./admin/index.php?media=movies`;

            fetch(url) 
            .then(res => res.json())
            .then(data => {
                this.allRetrievedVideos = data;
                this.currentMediaDetails = data[0];
            })


        }
    }
}