export default {

    props: ["currentMovie"],

    name: "TheMediaPlayerComponent",

    template: `
    <div class="container">
        <h1 class="media-title">{{currentMovie.movies_title}}</h1>

        <div class="mediaCont">
            <video autoplay controls :src="'video/' + currentMovie.movies_trailer" class="mediaPlayerVideo"></video>
        </div>
        <div id="movieBtnCont">
        <div id="movieBtns">
        <img src="images/comment-btn.svg" alt="Comment Button">
        <img src="images/like-btn.svg" alt="Like Button">
        <img src="images/share-btn.svg" alt="Share Button">
        </div>
        </div>
    
  
    </div>

    `

}