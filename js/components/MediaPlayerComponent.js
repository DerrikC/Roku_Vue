export default {

    props: ["currentMovie"],

    name: "TheMediaPlayerComponent",

    template: `
    <div class="container">
        <h1 class="media-title">{{currentMovie.movies_title}}</h1>

        <div class="mediaCont">
            <video width="80%" left="50%" autoplay controls :src="'video/' + currentMovie.movies_trailer" class="mediaPlayerVideo"></video>
        </div>
    
        <div id="movieBtns">
            <img src="images/like-btn.svg" alt="Like Button">
            <img src="images/share-btn.svg" alt="Share Button">
            <img src="images/comment-btn.svg" alt="Comment Button">
     
        </div>
        </div>
    <section>
    <i class="fas fa-film media-icon"></i></i><h1>This is the video component</h1>
</section>
    `

}