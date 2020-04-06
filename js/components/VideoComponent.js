
export default {
    name: "TheVideoComponent",

    template: `
    <div class="row">
        <div class="col-12 order-2 order-md-1 col-md-3 media-container">
            <h4 class="media-title">Movie Title Here</h4>
            <p class="media-details">Storyline here</p>
            <span class="media-time">runtime here</span>
            <span class="media-year">Released in </span>
        </div>

        <div class="col-12 order-1 order-md-2 col-md-9 media-container">
            <video autoplay controls muted src="video/trailer.mp4" class="fs-video"></video>
        </div>
    </div>
    `,

    data: function () {
        return {
            currentMediaDetails: {},
            allRetrievedVideos: []
        }
    },

    methods: {
        retrieveVideoContent() {
            // fetch all the video content here (don't care about filtering, genre etc at this point)
            debugger;


        }
    }
}