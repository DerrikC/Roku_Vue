export default {

    props: ["currentMovie"],

    name: "TheMediaPlayerComponent",

    template: `
    <div class="container">
        <h1>The Media Player Component</h1>

        <div class="mediaCont">
        <video  autoplay controls muted :src="'video/' + currentMovie.movies_trailer" class="mediaPlayerVideo"></video>
        </div>
        
        </div>
    <section>
    <i class="fas fa-film media-icon"></i><h1>This is the video component</h1>
</section>
    `

}